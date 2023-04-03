from models import *
from database import init_db, db_session
from datetime import datetime

class Twitter:
    def __init__(self):
        self.current_user = None
    """
    The menu to print once a user has logged in
    """
    def print_menu(self):
        print("\nPlease select a menu option:")
        print("1. View Feed")
        print("2. View My Tweets")
        print("3. Search by Tag")
        print("4. Search by User")
        print("5. Tweet")
        print("6. Follow")
        print("7. Unfollow")
        print("0. Logout")
    
    """
    Prints the provided list of tweets.
    """
    def print_tweets(self, tweets):
        for tweet in tweets:
            print("==============================")
            print(tweet)
        print("==============================")

    """
    Should be run at the end of the program
    """
    def end(self):
        print("Thanks for visiting!")
        db_session.remove()
        exit()
    
    """
    Registers a new user. The user
    is guaranteed to be logged in after this function.
    """
    
    def register_user(self):
        while True:
            # Get input for handle, password, and password confirmation
            handle = input("What will your twitter handle be?\n")
            password1 = input("Enter your password:\n")
            password2 = input("Confirm your password:\n")

            # Check if passwords match
            if password1 != password2:
                print("The passwords don't match. Try again.\n")
                continue

            # Check if the username already exists in the database
            user = db_session.query(User).where(User.username==handle).first()
            if user:
                print("This username is already taken. Try again.")
                continue

            # Create the new user and add it to the database
            new_user = User(username=handle, password=password1)
            db_session.add(new_user)
            db_session.commit()

            print("Welcome " + str(handle) + "!")
            return new_user



    """
    Logs the user in. The user
    is guaranteed to be logged in after this function.
    """
    def login(self):
        while True:
            # Get input for handle and password
            handle = input("Username:")
            password = input("Password:")
            # Check if user exists in the database with provided credentials
            user = db_session.query(User).where((User.username == handle) & (User.password == password)).first()
            if user:
                print("Welcome  " + handle + "!")
                return user
            else:
                print("Invalid username or password")

    
    def logout(self):
        if self.current_user:
            print("Goodbye, " + self.current_user.username + "!")
            self.current_user = None
        

    """
    Allows the user to login,  
    register, or exit.
    """
    def startup(self):
        while True:
            # Display initial menu options and perform the corresponding action based on user choice
            print("Please select a Menu Option\n")
            print("1. Login")
            print("2. Register User")
            print("3. Exit")
            choice = int(input(""))
            if choice == 1:
                self.current_user = self.login()
                break
            elif choice == 2:
                self.current_user = self.register_user()
                break
            elif choice == 3:
                self.end()
            else:
                print("Invalid option. Please try again.")


    def follow(self):
        # Get input for username to follow
        username_to_follow = input("Who would you like to follow?\n")
        user_to_follow = db_session.query(User).where(User.username==username_to_follow).first()
        #checks
        if not user_to_follow:
            print("User not found.")
            return
        
        if user_to_follow in self.current_user.following:
            print("You  already follow @" + username_to_follow)
            return
        # Add the user to the 'following' list and commit changes
        self.current_user.following.append(user_to_follow)
        db_session.commit()

        print("You are now following @" + username_to_follow)

    def unfollow(self):
        #Same formatting as follow()
        username_to_unfollow = input("Who would you like to unfollow?\n")
        user_to_unfollow = db_session.query(User).where(User.username==username_to_unfollow).first()

        if not user_to_unfollow:
            print("User not found.")
            return
        
        if user_to_unfollow not in self.current_user.following:
            print("You  don't follow @" + username_to_unfollow)
            return
        
        self.current_user.following.remove(user_to_unfollow)
        db_session.commit()

        print("You no longer follow @" + username_to_unfollow)

    def tweet(self):
        # Get input for tweet content and tags
        tweet_content = input("Create Tweet: ")
        tags = input("Enter your tags separated by spaces: ").split()

        # Process tags and create tag objects
        tag_objects = []
        for t in tags:
            tag = db_session.query(Tag).where(Tag.content==t).first()
            if not tag:
                tag = Tag(content=t)
                db_session.add(tag)
                db_session.commit()
            tag_objects.append(tag)
        # Create a new tweet with the content, timestamp, username, and tags
        new_tweet = Tweet(content=tweet_content, timestamp=datetime.now(), username=self.current_user.username, tags=tag_objects)
        db_session.add(new_tweet)
        db_session.commit()

    def view_my_tweets(self):
        # Query the database for the current user's tweets and print
        user_tweets = db_session.query(Tweet).join(User).where(User.username == self.current_user.username).all()
        self.print_tweets(user_tweets)
    
    """
    Prints the 5 most recent tweets of the 
    people the user follows
    """
    def view_feed(self):

        # Create an  list of usernames of followed users
        user_following = []
        for user in self.current_user.following:
            new_username = "@" + user.username
            if new_username not in user_following:
                user_following.append(new_username)
        # Query the database for all tweets
        tweets = db_session.query(Tweet).all()
        # Filter tweets based on followed users
        filtered_tweets=[]
        for tweet in tweets:
            if ("@" + tweet.user.username) in str(user_following):
                filtered_tweets.append(tweet)
        # Print the 5 most recent tweets from the filtered list
        self.print_tweets(filtered_tweets[:5])

    def search_by_user(self):
        # Get input for the username to search
        username = input("Enter the username to search tweets:\n")
        # Query the database for the specified user
        user = db_session.query(User).where(User.username==username).first()

        if not user:
            print("There is no user by that name")
            return
        # Check if the user exists and print their tweets
        user_tweets = db_session.query(Tweet).where(Tweet.username == username).all()
        self.print_tweets(user_tweets)

    def search_by_tag(self):
        #Same formatting as search_by_user()
        tag_name = input("Enter the tag to search for:\n")
        tag = db_session.query(Tag).where(Tag.content == tag_name).first()

        if not tag or not tag.tweets:
            print("There are no tweets with this tag")
            return

        self.print_tweets(tag.tweets)

    """
    Allows the user to select from the 
    ATCS Twitter Menu
    """
    def run(self):
        init_db()

        print("Welcome to ATCS Twitter!")
        self.startup()
        while True:
            self.print_menu()
            option = int(input(""))

            if option == 1:
                self.view_feed()
            elif option == 2:
                self.view_my_tweets()
            elif option == 3:
                self.search_by_tag()
            elif option == 4:
                self.search_by_user()
            elif option == 5:
                self.tweet()
            elif option == 6:
                self.follow()
            elif option == 7:
                self.unfollow()
            else:
                self.logout()
                self.end()

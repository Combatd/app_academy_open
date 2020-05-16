# Rails Auth Homework

This evening, you will be building a User model for a Rails auth system. This project won't end in an app with login/logout functionality, but this is a concept that you will use over and over again.

## Phase 0: Creating a new rails project
* ```rails new app_name -G --database=postgresql```

## Phase 1: Create a User model and migration
* Pro-tip: You can ```generate``` a model and pre-populated migration from the command line by passing ```rails g model``` an options hash
    * Example: ```rails g model User username:string password_digest:string session_token:string```

## Phase 2: Add validations to the User model
* Validate the presence of ```username``` and ```session_token```
* Validate the presence of ```password_digest``` and set the error message to ```Password can't be blank```
* Validate the length of password, and set allow_nil to true
* Make sure that ```ensure_session_token``` gets called ```before_validation```

## Phase 3: Add helper methods to the User model
* Write ```::find_by_credentials```
    * This method takes in a ```username``` and a ```password``` and returns the user that matches
* Write ```::generate_session_token```
    * This is a helper method I like to write that uses ```SecureRandom::urlsafe_base64``` and returns a 16-digit pseudorandom string
* Write ```#reset_session_token!```
    * This method resets the user's session_token and saves the user
* Write ```#ensure_session_token```
    * This method makes sure that the user has a session_token set, setting one if none exists
* Write ```#password=```
    * This method sets @password equal to the argument given so that the appropriate validation can happen
    * This method also encrypts the argument given and saves it as this user's password_digest
    * Remember: you have to add an attr_reader for password for the validation to occur!

## Phase 4: Check your work
* Check your model against the solutions
* Try creating a user in the Rails console
    * Make sure your validations work, and also make sure that you're storing password_digest as an encrypted string

```
User.all # shows no users
empty_gage = User.new
empty_gage.save # rollback because of failed validations
password_too_short_gage = User.new(username: 'gage', password: 'test')
password_too_short_gage.save # rollback because of failed validations
gage = User.new(username: 'gage', password: 'testing')
gage.save # inserted into Users
User.all #<ActiveRecord::Relation [#<User id: 1, username: "gage"...
User.first.password_digest # shows a string of gibberish that you can't hack
```

## Phase 5: Celebrate
* You have written an important part of a Rails auth system!
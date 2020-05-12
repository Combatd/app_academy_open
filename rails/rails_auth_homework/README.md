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
# AceBook
A Facebook clone for weeks 8 and 9 Engineering Project from Makers Academy Bootcamp using Ruby on Rails for the 1st time. 

We were a team of 6 junior developers and the sole team who had a fully functioning application in [production](https://warm-cliffs-29833.herokuapp.com/) which we were able to demo live on demo day (https://warm-cliffs-29833.herokuapp.com/)  
All requirements (see user stories) were built.  
Following an agile process we had:
  - daily stand ups
  - daily work merged to main 
  - pair programming
  - knowledge sharing daily
  - shared goals and vision for the project and the team
  - retros 
  - [Trello board](https://trello.com/b/ynM7GF5J/pizza-acebook-board), for our backlog and daily work
  - planning and refinement sessions 

## User stories
```
As a user 
I want to be able to securely sign up
So that I can start using AceBook

As a user
I want to be able to securely sign in
So that I can access my details and use the application

As a user
I want to securely sign out
So that I can exit the application 

As a user
I want to be able to create a text post
So that I can share content on AceBook

As a user 
I want to be able to create a post with images
So that I can create more engaging content

As a user
I want to be able to add a comment to a post
So that I can interact with the post author and other users

As a user
I want to be able to like a post
So that I can show my appreciation for the content

As a user
I want to be able to like a comment
So that I can engage with the content

As a user 
I want to able to edit my details
So that I can keep my account details up to date

As a user 
I want to add photo albums to my profile
So that I can share more image content

As a user 
I want to see a small photo next to my username 
So that it appears on posts and comments and other interactions within the application

As a user
I want to be able to easily navigate within the application features
So that I can have a more fluid experience

(...)

```
Wireframes
-----------
![Wireframes](https://user-images.githubusercontent.com/10349072/147356626-b6cf9843-5560-4bdc-b78c-5829c5cec2cc.png)

Some Screenshots
-----------------------
![SignUp](https://user-images.githubusercontent.com/10349072/147356751-77c59214-0a78-4f88-aa94-86f5c12c5f52.png)

![SignUp LandingPage](https://user-images.githubusercontent.com/10349072/147356826-d57930b2-753e-49cb-8fe0-841136849c31.png)

![Create Post](https://user-images.githubusercontent.com/10349072/147356902-6681489f-a110-4e44-a5ef-169778be5ff4.png)

![Feed](https://user-images.githubusercontent.com/10349072/147356982-d26acaa8-137b-4725-8867-4cf0683defce.png)

![Albums](https://user-images.githubusercontent.com/10349072/147357092-2465ce89-9ebc-4108-8a00-2ecdebb588d6.png)

![User Page](https://user-images.githubusercontent.com/10349072/147357156-bb20eb04-7416-4fa2-9fae-6c7b070ad303.png)


#### Quickstart
First, clone this repository. Then:
```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

#### Troubleshooting
If you don't have Node.js installed yet, you might run into this error when running rspec:
```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
 ```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again

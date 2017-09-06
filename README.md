# Railsbot

## A Ruby on Rails Chatbot and Quiz Machine.

Welcome to Railsbot! Railsbot presents 5 questions with 2 answers each. Answer correctly, and you move to the next round. Answer incorrectly, and you will be sent back to the beginning.

## User Stories
```
1.
As a User
So that I have some context
I’d like the homepage to have a greeting from the Chatbot

2.
As a User
So that I can start a chat
I want to see a question // chat prompt

3.
As a User
So that I can continue the conversation
I want to choose from 2-3 pre-written messages

4.
As a User
So that the chat flows
I want to see a question follow my answer

5.
As a User
To continue the conversation
I’d like another set of 2-3 pre-written messages

6.
As a User
So the conversation has direction
I’d like the options to pass or fail with my responses

7.
As a User
So the game doesn’t play infinitely or end forever
I’d like a game end screen (pass or fail) and the option to replay
```

## Approach

Given how frequently the words 'question' and 'message' appeared in my User Stories, I decided to scaffold models on each and base the Chatbot's structure around these. I created Welcome, Win, and Fail controllers to provide HTMLs for when the player is welcomed, wins a game, and loses a game. I unit tested my development in RSpec.

# How to Run
## Getting started
Enter the following commands in your terminal to download the program:
- `git clone https://github.com/sim-ware/rails_chatbot_app.git`
- cd into the rails_chatbot_app directory
- Please run `bundle` to install the necessary ruby `gemfile` dependencies

## Usage
- Enter the command 'rspec' to run tests
- Enter the command 'bin/rails server' to run the server
- Visit 'localhost:3000' in your Browser and click 'Round One' to begin!

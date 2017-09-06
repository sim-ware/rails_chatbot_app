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

8.
As a User
So that it feels like a conversation
I want to see the a delay before the bot’s response 
```

## Approach

I wanted to follow the example closely, and focus on building a REPL-based entirely to create a piece
of software with minimal dependencies, and is easy to use.
I hoped this would give me greater control over the software, and a better idea of how each part works.

## Structure

I attempted a Domain Driven Design, looking at splitting the nouns and verbs in the given Scenario into
Class and Method ideas. I centred around User and Event Objects, and their interactions. Both Objects needed
Coordinates, and given the attention the task gave to coordinates (i.e. they have to be between -10 and 10,
separate Event Objects cannot have the same coordinates, and the manhattan_distance calculations require
coordinates) I decided to make a Coordinate Class too, which initializes within the Event and User classes
as an attribute. Given the fact that each Event required several tickets with varying prices, and an eventual
comparison of those prices, I thought it best to create a ticket class too, which initialises within the Event
Class and are stored in a ticketlist Array. Given that in the example, a single User has several Event Options,
I thought it best to create a class that can Instantiate and store Event Objects too, so that they can eventually
be compared (by manhattan distance) too. Finally, I needed some sort of Class to instantiate a User and a list of
Events so that they can interact, and created the Query Class

### Assumptions

When writing this software I had to make assumptions about the maximum number of Events within an Eventlist, and
the number of tickets on offer per event. I decided to have a max of 9 Events per EventList, and 5 tickets per
event because these were easily manipulable numbers in a development environment. I also assumed that the only
valid coordinates within the -10 to 10 range were the integer ones. Again this was a decision taken because it
made development easier.

# How to Run
## Getting started
Enter the following commands in your terminal to download the program:
- `git clone https://github.com/sim-ware/https://github.com/sim-ware/ViagogoTechTest.git.git`
- cd into the ViagogoTechTest directory
- Please run `bundle` to install the necessary ruby `gemfile` dependencies

## Usage
- Enter the command 'rspec' to run tests
- Type the command `pry` to see an example run of the software. When prompted, enter your Coordinates!
- Enter 'q' in the PRY environment to return entire Query Object containing Random Seeded Data

```
Please Input Coordinates between -10 and 10, separated by a Comma:
 => 4,3
Event 008 - $126.25, Distance 7
Event 001 - $81.56, Distance 8
Event 002 - $174.41, Distance 8
Event 005 - $28.42, Distance 9
Event 006 - $124.07, Distance 13
```

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Rounds
Round.create(number: 1)
Round.create(number: 2)
Round.create(number: 3)
Round.create(number: 4)
Round.create(number: 5)

#Questions
Question.create(script: 'Russia has a larger surface area than...')
Question.create(script: 'Nintendo was originally a...')
Question.create(script: 'On Jupiter and Saturn it rains...')
Question.create(script: 'You are more likely to be killed by a ____ than a Shark.')
Question.create(script: 'Scotlands National Animal is a...')

#Messages
Message.create(script: 'Pluto')
Message.create(script: 'The Indian Ocean')
Message.create(script: 'Trading Card Company')
Message.create(script: 'Family Restaurant')
Message.create(script: 'Diamonds')
Message.create(script: 'Fire')
Message.create(script: 'Vending Machine')
Message.create(script: 'Conker')
Message.create(script: 'Unicorn')
Message.create(script: 'Traditional Horse')

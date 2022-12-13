puts "Deleting Users..."
puts "Deleting Solar_Objects..."
puts "Deleting Leaderboards..."
puts "Deleting Questions..."
puts "Deleting Hints..."
puts "Deleting User_Questions..."
User.destroy_all
SolarObject.destroy_all
Leaderboard.destroy_all
Question.destroy_all
UserQuestion.destroy_all

puts "Creating Users"
User.create(username: "5th Grader", password: "12345", current_score: 0, high_score: 0 )

puts "Creating Solar_Objects"
SolarObject.create(name: "The Sun", isPlanet: false, isMoon: false, isOther: false)
SolarObject.create(name: "Mercury", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Venus", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Earth", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Mars", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Jupiter", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Saturn", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Uranus", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Neptune", isPlanet: true, isMoon: false, isOther: false)
SolarObject.create(name: "Pluto", isPlanet: false, isMoon: false, isOther: true)
SolarObject.create(name: "Luna", isPlanet: false, isMoon: true, isOther: false)
SolarObject.create(name: "Phobos", isPlanet: false, isMoon: true, isOther: false)
SolarObject.create(name: "Deimos", isPlanet: false, isMoon: true, isOther: false)
SolarObject.create(name: "Asteroid Belt", isPlanet: false, isMoon: false, isOther: true)

puts "Creating Questions"
Question.create(query: "What is the age of the sun?", answer: "4.6 Billion Years", incorrect1: "5.6 billion years", incorrect2: "6.6 billion years", incorrect3: "3.9 Billion Years", hint: "Not much older than the Earth", solar_object_id: 1)
Question.create(query: "How long does it take for light from the Sun to reach Earth?", answer: "8 Minutes", incorrect1: "8 Seconds", incorrect2: "8 Hours", incorrect3: "8 Days", hint: "We measure far astronomical distance in lightyears ", solar_object_id: 1)
Question.create(query: "How many planets orbit the Sun?", answer: "8", incorrect1: "7", incorrect2: "9", incorrect3: "10", hint: "The dog is not a citizen", solar_object_id: 1)



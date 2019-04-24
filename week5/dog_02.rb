new_rand = Random.new()

class Dog 
    attr_accessor(:name,:strength)
    def initialize(name,strength)
        @name = name
        @strength = strength
    end
end

class User
    attr_reader(:name)
    attr_accessor(:score)
    def initialize(name)
        @name = name
        @score = 0
    end
end


puts "Welcome to Red Dog Warrior!"

puts "What is your name?"
user1 = User.new(gets().strip.capitalize)

p "Welcome, #{user1.name}!"
puts
puts "This is a greyhound racing simulation game! You'll be prompted to select a location to go to, once you arrive at your location, the races will begin"
puts
puts "Before each race starts, you'll be shown the dogs racing in each race and their odds! You must choose only one dog that you think will win that race!"
puts
# puts "If your dog finishes 1st, you'll recieve with 10 points, if your dog finishes 2nd, you'll recieve 5 points, if your dog finishes 3rd, you'll recieve with 3 points."
# puts

# puts "Here are the current locations available to you:
#     1. Mandurah"

# def location_selector
#     puts "Where would you like to go?"
#     loc_sel = gets().strip
#     if loc_sel.to_i == 1
#         puts "You're off to Mandurah!"
#     elsif loc_sel == String
#         puts "Please select a valid number!"
#         loop location_selector
#     elsif loc_sel.to_i != 1
#         puts "Please select a valid number!"
#         loop location_selector
#     end
# end

location_selector

    # def dog_selector
        puts """
    It's a great day for racing!
    Today's dogs are
        1. Richard
        2. Matt
        3. Jeff
        4.
        5.
        6.
        7.
        8.
        Please select the number of a dog that you think will win.

"""



puts "And they're off!"
# new_rand = Random.new()
# class MasterDog
#     attr_accessor(:name,:strength)
#     def initialize()
#         generator = NameGenerator::Main.new
#         @name = generator.next_name + " " + generator.next_name
#         new_rand = Random.new()
#         @strength = new_rand.rand(1..10)
#     end
# end
class Dog 
    attr_accessor(:name,:strength)
    def initialize(name,strength)
        @name = name
        @strength = strength
    end
end
dog1 = Dog.new("Richard",5)
dog2 = Dog.new("Matt",7)
dog3 = Dog.new("Jeff",3)
dog4 = Dog.new("Greg",6)
dog_strengths = []
dog_strengths << dog1
dog_strengths << dog2
dog_strengths << dog3
dog_strengths << dog4
dog_names = []

 dog_strengths.map do |dog| 
    dog_names << [dog.name] * dog.strength
end

dog_names.flatten!

first_place_index = new_rand.rand(0..dog_names.length-1)
first_place = dog_names[first_place_index]

puts "And we have #{first_place} in first place!"

dog_names.each do |name|
    if name = first_place
        dog_names.delete(name)
    end
end

second_place_index = new_rand.rand(0..dog_names.length-1)
second_place = dog_names[second_place_index]

puts "#{second_place} in second place!"

dog_names.each do |name|
    if name = second_place
        dog_names.delete(name)
    end
end

third_place_index = new_rand.rand(0..dog_names.length-1)
third_place = dog_names[third_place_index]

puts "And #{third_place} finished third!"

dog_names.each do |name|
    if name = third_place
        dog_names.delete(name)
    end
end



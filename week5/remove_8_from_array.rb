dog1 = {
    name: "richard",
    strength: 6
}
dog2 = {
    name: "matt",
    strength: 7
}
dog3 = {
    name: "jeff",
    strength: 5
}
dog4 = {
    name: "shae",
    strength: 6
}
dog5 = {
    name: "steve",
    strength: 3
}
dog6 = {
    name: "jo",
    strength: 2
}
dogs = []
dogs.push(dog1,dog2,dog3,dog4,dog5)
p dogs
puts
# p dogs.sample

race1 = []
p race1
puts
race1 = dogs.sample(2)
p race1 
# race1.flatten!
puts
dogs = dogs - race1
p dogs

# dogs.each do |dog|
#     new_dog = dogs.sample
#     race1 << new_dog
#     if dog == new_dog
#         dogs.delete(dog)
#     end
# end


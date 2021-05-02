# Range
# range(1, 5): 1, 2, 3, 4

# 10 times
for count in range(1, 11):
	print("You are the high scorer!")


# Looping over a list
robots = ["Bing", "Bleep", "Bloop"]
for robot in robots:
	print("I asm a robot. My name is " + robot)

# Looping over two lists
colours = ["red", "organge", "purple"]
index = 0
for each in robots:
	print("I asm a robot. My name is " + robots[index] + ". I am " + colours[index])
	index = index + 1

# while loops
answer = input("Throw a water balloon? (y/n)")
while answer == "y":
	print("Splash!!!")
	answer = input("Throw another water balloon? (y/n)")
print("Goodbye!")

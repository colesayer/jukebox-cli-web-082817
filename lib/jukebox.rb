songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(array)
  puts "Please enter a song name or number:"

  user_input = gets.chomp

  array.each_with_index do |song, idx|
    if user_input == song || user_input.to_i == idx+1
      puts "Playing #{song}"
    elsif user_input != song || user_input.to_i != idx+1
      puts "Invalid input, please try again"
    end
  end
end

def list(array)
  array.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  until (x = gets.chomp) == "exit"
    if x == "help"
      help
    elsif x == "list"
      list(array)
    elsif x == "play"
      play(array)
    end
    end
  exit_jukebox
end

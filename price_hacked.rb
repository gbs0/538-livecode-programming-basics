# Peek a Random price between 1 and 100
price = (1..100).to_a.sample

# Initial number of tries
tries = 0


# The program should keep asking until the player guesses the right price. 
loop do
  puts "Qual o seu palpite?"

  guess = gets.chomp # Get input from user
  
  if guess == "dica" # Give a tip for the player
  	puts price
  end

  if guess == "hack" # Computer will try by itself
  	(1..100).to_a.each do |number|
  	 puts "Tentando o numero #{number}"
  	 tries += 1
  	 break if number == price 
  	end
  	break
  end
  
  tries += 1 # OR tries = tries + 1

  break if guess.to_i == price # Break the loop if guess is correct!
 
end

# When the guess is right, the program displays how many guesses it took the player to win.
puts "Parabéns, você levou #{tries} tentativas p/ acertar"
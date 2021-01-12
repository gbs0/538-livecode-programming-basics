# Random price between 1 and 100 chosen by the program.
price = (1..100).to_a.sample
tries = 0

loop do
  # The program should keep asking until the player guesses the right price. 
  puts "Qual o seu palpite?"

  guess = gets.chomp
  
  if guess == "dica"
  	puts price
  end

  if guess == "hack"
  	(1..100).to_a.each do |number|
  	 puts "Tentando o numero #{number}"
  	 tries += 1
  	 break if number == price 
  	end
  	break
  end
  # tries = tries + 1
  tries += 1

  break if guess.to_i == price
 
end

# When the guess is right, the program displays how many guesses it took the player to win.
puts "Parabéns, você levou #{tries} tentativas p/ acertar"
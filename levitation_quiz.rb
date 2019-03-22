
def levitation_quiz
  loop do
	  puts "What is the spell that enacts levitation?"
    answer = gets.chomp
    if answer == "Wingardium Leviosa"
      puts "You passed the quiz!"
      break
    end
  end
end

#levitation_quiz

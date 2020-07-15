require_relative "spec_helper"
require_relative "../levitation_quiz.rb"

def levitation_quiz
  loop do 
    puts "What is the spell that enacts levitation?"
      answer = gets.chomp
      break if answer == "Wingardium Leviosa"
  end
  puts "You passed the quiz!"
end


describe "#levitation_quiz" do 
	it "puts out the question 'What is the spell that enacts levitation?' until a user types 'Wingardium Leviosa'. Then, it puts out 'You passed the quiz!'" do 
		allow(self).to receive(:gets).and_return("Wingardium Leviosa")
		expect{ levitation_quiz }.to output("What is the spell that enacts levitation?\nYou passed the quiz!\n").to_stdout
	end

end
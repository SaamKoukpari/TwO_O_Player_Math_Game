class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name 
    @lives = 3
  end
  
  def lose_life
    @lives -= 1
  end 

  def is_int(input)
    is_int = false
    (0..40).each do |i| 
      if i.to_s == input
        is_int = true
      end 
    end 
    is_int
  end 

  def question
    new_question = Question.new 
    new_question.ask(@name)
    print '> '
    @input = $stdin.gets.chomp

    if !is_int(@input)
      puts "Oops! Invalid number."
      lose_life
    elsif new_question.check(@input.to_i)
      puts "Survived another round, good job."
    else
      puts "Wrong!"
      lose_life
    end 
  end 

end
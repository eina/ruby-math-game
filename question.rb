class Question
  attr_reader :text, :first_num, :second_num, :rand_operation
  
  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @rand_operation = ['plus', 'minus', 'multiplied by', 'divided by'].sample
    @text = "What is #{@first_num} #{@rand_operation} #{@second_num}?"
  end  

  def check_answer(user_answer)
    answer = user_answer    
    if (@rand_operation == "plus") 
      check = @first_num + @second_num       
      answer == check
    elsif (@rand_operation == "minus")
      check = @first_num - @second_num      
      answer == check
    elsif (@rand_operation == "multiplied by")
      check = @first_num * @second_num      
      answer == check
    elsif (@rand_operation == "divided by")
      check = @first_num / @second_num
      answer == check
    end
  end
    
end
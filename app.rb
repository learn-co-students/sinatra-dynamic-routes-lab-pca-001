require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    number = params[:number].to_i
    @sqrnum = number * number
    "#{@sqrnum}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    final_string = ""
    @number.times do
       final_string += @phrase
      end
    final_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    add = @number1 + @number2
    subtract = @number2 - @number1
    multiply = @number1 * @number2
    divide = @number1 / @number2
    operation = params[:operation]
    case operation
    when "add"
      add.to_s
    when "subtract"
      subtract.to_s
    when "multiply"
      multiply.to_s
    when "divide"
      divide.to_s
    end

  end
end

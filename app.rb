require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:num" do
    (params[:num].to_i**2).to_s
  end

  get "/say/:number/:phrase" do
    params[:phrase]*params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    arr = []
    arr << params[:word1] << params[:word2] << params[:word3] << params[:word4] << params[:word5]
    arr.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    res = if op.casecmp("add").zero?
            num1 + num2
          elsif op.casecmp("subtract").zero?
            num1 - num2
          elsif op.casecmp("multiply").zero?
            num1 * num2
          elsif op.casecmp("divide").zero?
            num1 / num2
          else
            "oops"
          end

    res.to_s
  end

end

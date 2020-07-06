require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].to_s
    @reversed = @name.reverse
    "#{@reversed}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @times = params[:number].to_i
    @message = @phrase * @times
    "#{@message}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @concat = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@concat}"
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      @total = @num1 + @num2
    elsif params[:operation] == "subtract"
      @total = @num1 - @num2
    elsif params[:operation] == "divide"
      @total = @num1 / @num2
    elsif params[:operation] == "multiply"
      @total = @num1 * @num2
    else
      "Please enter a valid operation."
    end
    "#{@total}"
  end

end

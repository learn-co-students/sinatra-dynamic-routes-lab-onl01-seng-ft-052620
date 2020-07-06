require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values
    "#{@words.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @operation == 'add'
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation == 'subtract'
      "#{@num1.to_i - @num2.to_i}"
    elsif @operation == 'multiply'
      "#{@num1.to_i * @num2.to_i}"
    elsif @operation == 'divide'
      "#{@num1.to_i / @num2.to_i}"
    end
  end

end

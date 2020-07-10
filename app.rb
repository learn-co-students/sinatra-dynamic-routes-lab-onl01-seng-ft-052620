require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 

  get '/square/:number' do 
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @phrase*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = []
    words << params[:word1]
    words << params[:word2]
    words << params[:word3]
    words << params[:word4]
    words << params[:word5]+"."
    words.join(" ")
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    results = "Invalid operation"
    case @operation
    when 'add'
      results = @number1+@number2
    when 'subtract'
      results = @number1-@number2
    when 'multiply'
      results = @number1*@number2
    when 'divide'
      results = @number1/@number2
    end
    results.to_s
  end
end
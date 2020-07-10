require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 get "/reversename/:name" do
   "#{params[:name].reverse}"
 end
 
 get "/square/:number" do
   num = params[:number].to_i
   (num ** 2).to_s
 end

 get "/say/:number/:phrase" do
  num = params[:number].to_i 
  phrase = params[:phrase]
  output = ""
  num.times {output += phrase}
  output
 end

 get "/say/:word1/:word2/:word3/:word4/:word5" do
   words = []
   i = 1
   while i < 6
    sy = "word#{i}".to_sym
    words << params[sy]
    i += 1
   end
   words.join(" ") + "."
 end

 get "/:operation/:number1/:number2" do
   num1 = params[:number1].to_i
   num2 = params[:number2].to_i
  #  o = params[:operation]
  #  num1.method(o).(num2).to_s
  o = params[:operation]
  if o == "add"
    (num1 + num2).to_s
  elsif o == "subtract"
    (num1 - num2).to_s
  elsif o == "multiply"
    (num1*num2).to_s
  elsif o == "divide"
    (num1/num2).to_s
  else
    "Hello, the operation is not recognized."
  end
 end
end
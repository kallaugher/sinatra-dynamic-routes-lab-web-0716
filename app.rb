require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversedname = params[:name].reverse
    "#{@reversedname}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = (@phrase + "\n") * @num
    "#{@phrases}"
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
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @return = @number1 + @number2
    elsif @operation == "subtract"
      @return = @number2 - @number1
    elsif @operation == "multiply"
      @return = @number1 * @number2
    else
      @return = @number1 / @number2
    end
    "#{@return}"
  end
end

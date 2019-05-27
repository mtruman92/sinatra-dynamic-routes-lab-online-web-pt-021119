require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @reverse_name = params[:name].reverse
end

get "/square/:number" do 
  "#{params[:number].to_i**2.to_i}"
  end
  
  get '/say/:number/:phrase'do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times.collect {"#{@phrase}"}
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
case params[:operation]
      when "add" then
        :number1 + :number2
end

end

  
  
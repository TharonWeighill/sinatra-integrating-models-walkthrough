require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require_relative "models/text_analyzer.rb"

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/' do @analyzedtext = TextAnalyzer.new(params[:usertext])

    erb :results
  end 
end

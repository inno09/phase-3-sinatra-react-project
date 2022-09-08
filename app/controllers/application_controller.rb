class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/poems' do
    poems = Poem.all.limit(15)
    poems.to_json
  end

  
  # post '/poems' do
  #   poem = Poem.create(
  #     title: params[:title],
  #     author: params[:author],
  #     content: params[:content]
  #   )
  #   poems.to_json
  # end

end


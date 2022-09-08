class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/poems' do
    poems = Poem.all.order(:title).limit(10)
    poems.to_json
  end
  get '/poems/:id' do
    poem = Poem.find(params[:id])
     poem.to_json(only: [:id, :title, :genre, :author, :content])
  end

  post '/poems' do
    poem = Poem.create(
      title: params[:title],
      author: params[:author],
      content: params[:content]
    )
    poems.to_json
  end

end


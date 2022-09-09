class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/poems' do
    poems = Poem.all
    poems.to_json
  end

  get '/authors' do
    author = Author.all
    author.to_json(include: :poems)
  end

  get '/genres' do
    genre = Genre.all
    genre.to_json(include: :poems)
  end

  get '/poems/:id' do
    poem = Poem.find(params[:id])
     poem.to_json(only: [:id, :title, :genre, :author, :content])
  end

  get '/authors/:id' do
    author = Author.find(params[:id])
     author.to_json(include: :poems)
  end

  get '/genres/:id' do
    genre = Genre.find(params[:id])
     genre.to_json(include: :poems)
  end

  post '/poems' do
    create_poem = Poem.create(
      title: params[:title],
      content: params[:content],
      author_id: params[:author_id],
      genre_id: params[:genre_id]
    )
    create_poem.to_json
  end

  delete '/poems/:id' do
    poem = Poem.find(params[:id])
    poem.destroy
    poem.to_json
  end

end


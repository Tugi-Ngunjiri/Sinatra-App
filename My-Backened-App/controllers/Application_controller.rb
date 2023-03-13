require sinatra/base

 class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
      # to get Memes
           get '/' do
            'Welcome to Memes!'
             
            get '/' do
            @memes = Memes.active

      
          # To post Memes to User
        post '/meme/new' do
     @category_object=Category.find_by(params[:category_selection])
     @category_object.memes.create(params[:meme])
    redirect to("/category/#{@category_object.name}")
          # To Put Memes
          put '/meme/:id' do
            @meme_object = Meme.find(params[:id])
            @meme_object.updae(params[:Meme])
            redirect to("/meme/#params[:id]")


      # TODO: Get all the memes
      get '/all' do
         @memes = Memes.all

    # TODO:USer to add a meme

    get "/" do
      { message: "Good luck with your project!" }.to_json
    end
  
  end

 # To Patch Memes


    
  # To Delete Memes
  delete '/Meme/:id' do
   @meme_object = Meme.delete(params[:id])

  
  fetch('http://localhost:3001/')
  .then(resp => resp.json())
  .then(json => console.log(json))
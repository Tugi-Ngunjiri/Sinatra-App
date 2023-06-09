require 'sinatra/base'

 class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get '/meme'
      memes  = memes.all

    end


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
      end


    # TODO:USer to add a meme

    get "/" do
      { message: "Good luck with your project!" }.to_json
    end
  
  end

 # To Patch Memes
 meme = Meme.find(params[:id])
 meme.update(item:params:[:item])
 meme.to_json(include: {category: {only : [:category]}})



    
  # To Delete Memes
  delete '/Meme/:id' do
   @meme_object = Meme.delete(params[:id])
  end


  
  fetch(' http://localhost:3000 ')
  .then(resp => resp.json())
  .then(json => console.log(json))

     #Create
  fetch("http://localhost:9252/meme" , {
    method: "POST",
    headers: {
 "Content-Type": "application/json"
},

body: JSON.strungify({
  item: meme,
  importance:importance,
  category_id: category_id
})
 })

 .then((r) => r.json())
 .then(new_meme => {
  onAddmeme(new_meme)
  setmeme("/")
  seetimportance("/")
  setcategoryid("/")
 })
  #Read
useEffect(() => {
  fetch('http://localhost:9292/meme')
  .then(r => r.json())
  .then(meme => setmeme(meme))
}, [])

#Update
fetch(`http://localhost:9292/meme/${meme.id}`, {
method: "PATCH",
headers: {
  "Content-Type": "application/json"
},

body:JSON.stringify({
  item:memeUpdate,
}),

})

.then((r) => r.json())
.then(updatedmeme => {
  pnUpdatememe(updatedmeme)
  setmemeUpdate('')
})

#Delete
fetch(`http://localhost:9292/meme/${meme.id}`, {
method:"DELETE",

})
onmemeDelete(meme.id)
require 'sinatra'

## Model/Dataset

Memes = [{title: "First Meme", body: "content of first meme"}]

## Index route
get '/memes' do
    ## Return all the memes as JSON
       return memes.to_json
end


## Show Route
get '/memes/:id' do
    # return a particular meme as json based on the id param from the url
    # params always come to a string so we convert to an integer
    id = params["id"].to_i
    return memes[id].to_json
    end

    
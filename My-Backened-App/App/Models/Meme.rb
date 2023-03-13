class Meme < ActiveRecord::Base
    has_many :users
    has_many :memes
    has_many :names
end
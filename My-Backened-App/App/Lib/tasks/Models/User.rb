class Meme < ActiveRecord::Base
    has_many :memes
    has_many :categories
    has_many :names
end
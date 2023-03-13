class Meme < ActiveRecord::Base
    belongs_to :user
    has_many :names
    has_many : memes
end
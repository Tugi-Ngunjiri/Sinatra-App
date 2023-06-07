puts "🌱 Seeding spices..."

# Seed your database here
General_Memes = ["very funny , cringy, Dad Jokes, Mom Jokes "]
Meme.create(name: "very funny")
Meme.create(name: "cringy")
Meme.create(name: "Dad Jokes")
Meme.create(name: "Mom Jokes")


Meme.all.each do |meme|
  3.times do
    Meme.create(name: General_Memes.sample, rating: stars(1-5), meme_id: meme.id)
  end
end


puts "✅ Done seeding!"


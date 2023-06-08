class CreateUMemes < ActiveRecord::Migration[7.0]
    def change
      create_table :Memes do |t|
        t.string :Name
        t.text :Type
        t.references :Meme_type
        #        t.references :Meme_type, foreign_key: true
        t.boolean :single_issue
  
        t.timestamps
      end
    end
  end
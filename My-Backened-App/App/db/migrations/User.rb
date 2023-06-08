class CreateUsers < ActiveRecord::Migration[7.0]
    def change
      create_table :Users do |t|
        t.string :Name
        t.text :age
        t.references :user_type
        #        t.references :user_type, foreign_key: true
        t.boolean :single_issue
  
        t.timestamps
      end
    end
  end
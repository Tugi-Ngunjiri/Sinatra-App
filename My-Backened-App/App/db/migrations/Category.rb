class CreateCategories < ActiveRecord::Migration[7.0]
    def change
      create_table :categories do |t|
        t.string :Name
        t.text :age
        t.text :user
        t.references :category_type
        #        t.references :category_type, foreign_key: true
        t.boolean :single_issue
  
        t.timestamps
      end
    end
  end
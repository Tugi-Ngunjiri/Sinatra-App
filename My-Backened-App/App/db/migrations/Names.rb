class CreateNames < ActiveRecord::Migration[7.0]
    def change
      create_table :names do |t|
        t.string :username
        t.text :age
        t.references :name_type
        #        t.references :name_type, foreign_key: true
        t.boolean :single_issue
  
        t.timestamps
      end
    end
  end
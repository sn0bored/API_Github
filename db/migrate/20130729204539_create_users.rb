class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :company
      t.string :email
      t.string :url
      t.integer :followers
      t.integer :repos
      t.string :github_id
      t.string :gravtar_id

      t.timestamps
    end
  end
end

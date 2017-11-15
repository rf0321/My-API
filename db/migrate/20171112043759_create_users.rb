class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :provider
      t.text :uid
      t.string :oauth_token

      t.timestamps
    end
  end
end

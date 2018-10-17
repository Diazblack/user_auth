class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :update_at
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end

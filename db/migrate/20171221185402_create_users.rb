class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :happiness
      t.integer :nausea
      t.integer :height
      t.integer :tickets

      t.timestamps
    end
  end
end

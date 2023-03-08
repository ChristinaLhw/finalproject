class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :photo_url
      t.integer :user_id
      t.integer :quantity

      t.timestamps
    end
  end
end

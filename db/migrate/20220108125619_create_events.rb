class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.date :date
      t.string :title
      t.string :body
      t.string :location
      t.timestamps
    end
  end
end

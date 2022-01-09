class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.belongs_to :user
      t.date :date
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end

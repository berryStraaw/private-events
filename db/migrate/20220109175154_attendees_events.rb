class AttendeesEvents < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :events
  end
end

class CreateTrackers < ActiveRecord::Migration[5.1]
  def change
    create_table :trackers do |t|
      t.string :title
      t.integer :data, array: true, default: [0]
      t.integer :user_id
      t.timestamps
    end
  end
end

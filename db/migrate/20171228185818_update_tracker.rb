class UpdateTracker < ActiveRecord::Migration[5.1]
  def change
    remove_column :trackers, :data
    remove_column :trackers, :title
    add_column :trackers, :steps, :integer
    add_column :trackers, :date, :string
  end
end

class ChangeColumnToDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :trackers, :date
    add_column :trackers, :date_format, :date
  end
end

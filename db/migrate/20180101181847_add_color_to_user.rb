class AddColorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :theme, :string, default: 'colorful'
  end
end

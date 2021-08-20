class AddReadyToCookie < ActiveRecord::Migration[5.1]
  def change
    add_column :cookies, :ready, :boolean, null: false, default: false
  end
end

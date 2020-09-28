class AddEnabledToAuths < ActiveRecord::Migration[6.0]
  def change
    add_column :auths, :enabled, :boolean, default: true, null: false
    add_index :auths, [:enabled, :username]
  end
end

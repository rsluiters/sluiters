class AddSubFolderToTenant < ActiveRecord::Migration
  def change
    add_column :tenants, :subfolder, :string
  end
end

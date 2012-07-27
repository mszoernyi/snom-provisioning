class ChangeSiPLoginToString < ActiveRecord::Migration
  def up
    change_column :phones, :sip_login, :string
  end

  def down
    change_column :phones, :sip_login, :integer
  end
end

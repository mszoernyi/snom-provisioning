class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :mac
      t.integer :sip_login
      t.string :sip_password
      t.string :number

      t.timestamps
    end
  end
end

class CreateUnknownPhones < ActiveRecord::Migration
  def change
    create_table :unknown_phones do |t|
      t.string :mac_address
      t.string :requester_ip

      t.timestamps
    end
  end
end

class CreateIpRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :ip_records do |t|
      t.string :name
      t.string :ip
      t.string :main_address
      t.timestamps
    end
  end
end

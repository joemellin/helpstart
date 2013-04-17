class AddRequests < ActiveRecord::Migration
  def up
    create_table :requests do |t|
      t.integer :startup_id
      t.integer :skill_id
      t.text :message
      t.integer :sender_id
      t.integer :receiver_id
      t.string :message
      t.timestamps
    end

    add_index :requests, :sender_id
    add_index :requests, :receiver_id
  end

  def down
    drop_table :requests
  end
end

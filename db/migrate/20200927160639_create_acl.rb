class CreateAcl < ActiveRecord::Migration[6.0]
  def change
    create_table :acls do |t|
      t.uuid :username, null: false
      t.string :topic, null: false
      t.integer :permissions, null: false, default: 0

      t.uuid :provision_request_id, null: false

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

      t.index ["username"], name: "index_acls_on_username"
      t.index ["topic"], name: "index_acls_on_topic"
      t.index ["provision_request_id"], name: "index_acls_on_provision_request_id"
    end
  end
end

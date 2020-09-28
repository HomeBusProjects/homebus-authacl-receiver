class CreateAuth < ActiveRecord::Migration[6.0]
  def change
    create_table :auths do |t|
      t.uuid :username, null: false
      t.string :password, null: false
      t.boolean :superuser, default: false, null: false
      t.uuid :provision_request_id, null: false

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

      t.index ["username"], name: "index_auths_on_username"
      t.index ["provision_request_id"], name: "index_auths_on_provision_request_id"
    end
  end
end

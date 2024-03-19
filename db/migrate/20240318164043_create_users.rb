class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :email
      t.string :login
      t.string :password_digest
      t.string :recovery_password_digest
      t.string :aasm_state

      t.timestamps
    end

    add_index :users, :name
    add_index :users, :email, unique: true
    add_index :users, :login, unique: true
  end
end

class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :contact_type, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end

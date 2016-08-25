class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string
      t.string :email
      t.string :message
      t.string :text

      t.timestamps null: false
    end
  end
end

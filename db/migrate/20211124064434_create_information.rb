class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.string :fname
      t.string :lname
      t.text :email_id

      t.timestamps
    end
  end
end

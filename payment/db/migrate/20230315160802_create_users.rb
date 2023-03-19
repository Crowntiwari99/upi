class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :bank
      t.integer :mobile
      t.integer :amount
      t.string :email
      t.string :upi
      t.timestamps
    end
  end
end

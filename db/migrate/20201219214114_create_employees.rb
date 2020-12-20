class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end

class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name, limit: 20, null: false
      t.integer :phone_number, limit: 10
      t.string :email, limit: 100
      t.integer :rating, limit: 3, null: false, numericality: { greater_than: 1, less_than: 100 }
      t.string :city, limit: 20

      t.timestamps
    end
  end
end

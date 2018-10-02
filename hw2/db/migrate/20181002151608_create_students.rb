class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :idNum
      t.string :name
      t.string :email
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end

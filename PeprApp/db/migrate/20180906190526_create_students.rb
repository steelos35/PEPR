class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string  :studentname
      t.string  :teachername
      t.integer :age
      t.string  :grade
      t.string  :unit
      t.timestamps
    end
  end
end

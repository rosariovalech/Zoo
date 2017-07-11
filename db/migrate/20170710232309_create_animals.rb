class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :nombre
      t.string :references
      t.string :animal_type

      t.timestamps
    end
  end
end

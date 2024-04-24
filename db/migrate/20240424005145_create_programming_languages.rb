class CreateProgrammingLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :programming_languages do |t|
      t.string :name
      t.string :creator
      t.integer :year

      t.timestamps
    end
  end
end

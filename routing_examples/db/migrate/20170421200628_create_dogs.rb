class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.belongs_to :owner, foreign_key: true
      t.string :name
      t.string :breed

      t.timestamps
    end
  end
end

class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.integer :word_count
      t.belongs_to :chapter

      t.timestamps
    end
  end
end

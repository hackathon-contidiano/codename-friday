class CreateSpeeches < ActiveRecord::Migration[5.0]
  def change
    create_table :speeches do |t|
      t.string :key_word
      t.integer :count
      t.references :congressman, foreign_key: true

      t.timestamps
    end
  end
end

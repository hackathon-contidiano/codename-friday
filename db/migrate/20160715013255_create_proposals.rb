class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.string :key_word
      t.integer :count
      t.references :congressman, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCongressmen < ActiveRecord::Migration[5.0]
  def change
    create_table :congressmen do |t|
      t.string :name
      t.string :photo
      t.string :phone
      t.string :federation_unity
      t.string :email
      t.references :political_party, foreign_key: true

      t.timestamps
    end
  end
end

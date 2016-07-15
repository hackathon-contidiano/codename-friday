class AddCoherenceToCongressman < ActiveRecord::Migration[5.0]
  def change
    add_column :congressmen, :coherence, :float
  end
end

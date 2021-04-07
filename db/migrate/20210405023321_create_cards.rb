class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :rank, null: false
      t.string :suit, null: false
      t.boolean :drawn, null: false, default: false
      t.timestamps
    end

    add_index(:cards, [:rank, :suit], unique: true)
  end
end

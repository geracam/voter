class CreateCandidatesTable < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name, null: false

      t.integer :tally, default: 0, unsigned: true, null: false

      t.timestamps
    end
  end
end

class CreateBranches < ActiveRecord::Migration[7.2]
  def change
    create_table :branches do |t|
      t.string :branch_name
      t.string :location
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

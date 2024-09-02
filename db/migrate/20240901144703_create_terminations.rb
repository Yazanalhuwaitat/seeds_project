class CreateTerminations < ActiveRecord::Migration[7.2]
  def change
    create_table :terminations do |t|
      t.date :term_date
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateUserSupplements < ActiveRecord::Migration[7.1]
  def change
    create_table :user_supplements do |t|
      t.references :supplement, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :dose
      t.string :dose_unit
      t.integer :times_per_period
      t.string :period

      t.timestamps
    end
  end
end

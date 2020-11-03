class CreatePaths < ActiveRecord::Migration[6.0]
  def change
    create_table :paths do |t|
      t.integer :back_squat
      t.integer :bench_press
      t.integer :front_squat
      t.integer :clean_jerk
      t.integer :overhead_squat
      t.integer :strict_overhead_press
      t.integer :snatch

      t.timestamps
    end
  end
end

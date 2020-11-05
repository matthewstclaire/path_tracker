class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :workout_name
      t.string :warmup
      t.string :power
      t.string :endurance

      t.timestamps
    end
  end
end

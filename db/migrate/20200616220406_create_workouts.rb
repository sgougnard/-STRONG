class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :sport
      t.string :intensity
      t.integer :duration

      t.timestamps
    end
  end
end

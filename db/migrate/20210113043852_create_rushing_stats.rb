class CreateRushingStats < ActiveRecord::Migration[6.1]
  def change
    create_table :rushing_stats do |t|
      t.string :player
      t.string :team
      t.string :position
      t.integer :attempts
      t.float :attempts_per_game
      t.integer :yds
      t.float :avg
      t.float :yds_per_game
      t.integer :td
      t.string :lng
      t.integer :first_downs
      t.float :first_down_percentage
      t.integer :rushes_gt_twenty_yds
      t.integer :rushes_gt_forty_yds
      t.integer :fumbles

      t.timestamps
    end
  end
end

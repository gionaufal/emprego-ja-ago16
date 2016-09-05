class AddJobsToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :jobs, foreign_key: true
  end
end

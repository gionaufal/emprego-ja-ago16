class RemoveJobsFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :jobs, :string
  end
end

class AddProjectIdToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :project_id, :integer
  end
end

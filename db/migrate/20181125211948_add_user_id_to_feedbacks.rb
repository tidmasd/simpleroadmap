class AddUserIdToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :user_id, :integer
  end
end

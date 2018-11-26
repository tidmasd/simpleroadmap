class AddFieldsToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :status, :string
  end
end

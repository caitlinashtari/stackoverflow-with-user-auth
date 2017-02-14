class AddAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.column :content, :string
      t.column :question_id, :integer
      t.column :author, :string

      t.timestamp
    end
  end
end

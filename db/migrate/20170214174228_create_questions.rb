class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :name, :string
      t.column :description, :string

      t.timestamp
    end
  end
end

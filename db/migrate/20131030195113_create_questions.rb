class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :question_text, presence: true 
      t.integer :user_id
      t.integer :view_count

      t.timestamps
    end
  end
end

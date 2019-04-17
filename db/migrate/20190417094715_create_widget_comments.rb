class CreateWidgetComments < ActiveRecord::Migration[5.2]
  def change
    create_table :widget_comments do |t|
      t.references :widget, foreign_key: true
      t.string :username
      t.string :comment
    end
  end
end

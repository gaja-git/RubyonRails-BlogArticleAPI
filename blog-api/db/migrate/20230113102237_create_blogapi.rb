class CreateBlogapi < ActiveRecord::Migration[7.0]
  def change
    create_table :blogapis do |t|
      t.string :title
      t.string :blogcontent
      t.string :imagelink
      t.timestamps
    end
  end
end

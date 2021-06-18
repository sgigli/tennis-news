class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :link
      t.string :site
      t.string :site_name
      t.string :author
      t.string :title
      t.string :subtitle
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end

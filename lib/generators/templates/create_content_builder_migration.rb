class CreateContentBuilders < ActiveRecord::Migration[5.2]
  def change
    create_table :content_builders do |t|
      t.string :title
      t.string :written_by
      t.datetime :date_publish
      t.text :content
      t.boolean :status, default: false
      t.string :slug
      t.text :summary
      t.references :content_builder_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

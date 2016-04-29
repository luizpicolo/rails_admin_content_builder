class CreateContentBuilders < ActiveRecord::Migration
  def change
    create_table :content_builders do |t|
      t.string :title
      t.string :written_by
      t.string :content_source
      t.text :summary
      t.datetime :date_publish
      t.text :content
      t.boolean :status, default: false
      t.string :slug

      t.timestamps null: false
    end
  end
end

class CreateContentBuilderRelateds < ActiveRecord::Migration
  def change
    create_table :content_builder_relateds do |t|
      t.integer :content_builder_id
      t.integer :content_builder_related_id

      t.timestamps null: false
    end
  end
end

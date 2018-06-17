class CreateContentBuilderImages < ActiveRecord::Migration[5.2]
  def change
    create_table :content_builder_images do |t|
      t.string :image
      t.references :content_builder, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

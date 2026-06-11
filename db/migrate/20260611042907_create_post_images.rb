class CreatePostImages < ActiveRecord::Migration[8.1]
  def change
    create_table :post_images do |t|
      #user_idというカラムを作る・外部キー設定
      t.references :user, foreign_key: true
      t.string :shop_name
      t.text :caption
      t.timestamps
    end
  end
end

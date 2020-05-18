class CreateAppNames < ActiveRecord::Migration[5.0]
  def change
    create_table :app_names do |t|
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end

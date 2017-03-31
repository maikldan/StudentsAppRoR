class CreateLibrarySubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :library_subscriptions do |t|
      t.string :status
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end

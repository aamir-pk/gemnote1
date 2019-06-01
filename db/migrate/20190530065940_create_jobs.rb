class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :company_name
      t.string :company_url
      t.date :posted_on

      t.timestamps
    end
  end
end

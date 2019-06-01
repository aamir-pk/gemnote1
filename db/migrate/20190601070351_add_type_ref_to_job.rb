class AddTypeRefToJob < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :job_type
  end
end

class CreateJobStatus < ActiveRecord::Migration
  def change
    create_table :job_statuses do |t|
    	t.text :parameters
    	t.timestamp :started
    	t.timestamp :finished
    	t.integer :progress
    	t.string :status
    	t.timestamps
    end
  end
end

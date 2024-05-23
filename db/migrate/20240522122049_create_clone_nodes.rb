class CreateCloneNodes < ActiveRecord::Migration[7.1]
  def change
    create_table :clone_nodes do |t|
      t.string :machine_ip
      t.string :database_user
      t.string :database_password
      t.string :new_machine_ip
      t.string :status

      t.timestamps
    end
  end
end

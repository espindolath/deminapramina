class CreateProjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :projetos do |t|
      t.string :descricao
      t.string :nome
      t.string :contato
      t.string :foto
      t.string :organizador

      t.timestamps
    end
  end
end

class Projeto < ApplicationRecord
    validates :nome, :descricao, :contato, :organizador, presence: true
    
end

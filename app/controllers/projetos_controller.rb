class ProjetosController < ApplicationController
  def new 
      @projeto = Projeto.new
  end
    def create
     @projeto = Projeto.new(projeto_params)
     @projeto.save
    end
    
    private
    
    def projeto_params
        params
            .require(:projeto)
            .permit(:nome, :descricao, :contato, :organizador, :foto)
    
    end
end
class ProjetosController < ApplicationController
  def new 
      @projeto = Projeto.new
  end
    def create
     @projeto = Projeto.new(projeto_params)
     if @projeto.save
         redirect_to new_projeto_path, flash: {notice: "Você conseguiu! Obrigada :D" }
     else
         render :new
     end
    end
    
    private
    
    def projeto_params
        params
            .require(:projeto)
            .permit(:nome, :descricao, :contato, :organizador, :foto)
    
    end
end
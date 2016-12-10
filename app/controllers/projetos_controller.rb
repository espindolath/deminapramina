class ProjetosController < ApplicationController
  
  def index
    #render text: "ola"
    @projetos = Projeto.all
  end

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

  def show
    @projeto = Projeto.find(params[:id])
  end
    
  private
    
  def projeto_params
    params
      .require(:projeto)
      .permit(:id, :nome, :descricao, :contato, :organizador, :foto)
  end
end

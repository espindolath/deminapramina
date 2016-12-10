class ProjetosController < ApplicationController
  def new 
      @projeto = Projeto.new
  end
end
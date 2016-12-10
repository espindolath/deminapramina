class ProjetosController < ApplicationController
	def index
		#render text: "ola"
		@projetos = Projeto.all

	end
end

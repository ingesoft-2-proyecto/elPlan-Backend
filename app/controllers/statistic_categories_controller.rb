class StatisticCategoriesController < ApplicationController

    def index
        search_teatro = Event.search_category("Teatro")
        search_deportes = Event.search_category("Deportes")
        search_conciertos = Event.search_category("Conciertos")
        search_familia = Event.search_category("Teatro")
        search_academico = Event.search_category("Academico")
        
        #render json: search_teatro
        render json: {num_teatro: search_teatro.size,num_deportes: search_deportes.size, num_conciertos: search_conciertos.size, num_familia: search_familia.size, num_academico: search_academico.size }
        
    end
end

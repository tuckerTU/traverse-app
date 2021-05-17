class DestinationsController < ApplicationController

    get '/destinations' do 
        @destinations = Destination.all
        erb :'destinations/index'
    end

    get '/destinations/new' do
        erb :'destinations/new'
    end

    get '/destinations/:id' do 
        @destination = Destination.find(params[:id])
        erb :'destinations/show'
    end

end
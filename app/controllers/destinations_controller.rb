class DestinationsController < ApplicationController

    get '/destinations/new' do
        erb :'destinations/new'
    end

    post '/destinations' do
      destination = current_user.destinations.create(params{:destination})
      redirect "destinations/#{destination.id}"
    end

    get '/destinations' do 
        @destinations = Destination.all
        erb :'destinations/index'
    end

    get '/destinations/:id' do 
        @destination = Destination.find(params[:id])
        erb :'destinations/show'
    end

    get '/destinations/:id/edit' do 
        @destination = Destination.find(params{:id})
        erb :'destinations/edit'
    end

    patch '/destinations/:id' do 
        destination = Destination.find(params{:id})
        destination.update(params{:destination})
        redirect '/destinations/#{destination.id}'
    end

    delete '/destinations/:id' do 
        destination = Destination.find(params[:id])
        destination.destroy
        redirect '/destinations'
    end

end
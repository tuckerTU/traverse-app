class DestinationsController < ApplicationController

    get '/destinations/new' do
        @destination = Destination.new
        erb :'destinations/new'
    end

    post '/destinations' do
      destination = current_user.destinations.create(params[:destination])
      if destination.valid?
        redirect "destinations/#{destination.id}"
      else
        flash[:errors] = destination.errors.full_messages
        redirect '/destinations/new'
      end
    end

    get '/destinations' do 
        @destinations = Destination.all
        erb :'destinations/index'
    end

    get '/destinations/:id' do 
        if logged_in?
            @destination = Destination.find(params[:id])
            erb :'destinations/show'
        end
    end

    get '/destinations/:id/edit' do 
        if logged_in?
            @destination = Destination.find_by_id(params[:id])
            erb :'/destinations/edit'
        end
    end

    patch '/destinations/:id' do 
        if logged_in?
            @destination = Destination.find_by_id(params[:id])
            @destination.update(params[:destination])
            redirect "/destinations/#{@destination.id}"
        end
    end

    delete '/destinations/:id' do
        if logged_in? 
            destination = Destination.find(params[:id])
            destination.destroy
            redirect '/destinations'
        end
    end

end
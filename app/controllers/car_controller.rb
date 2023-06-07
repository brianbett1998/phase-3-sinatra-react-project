
class CarController < Sinatra::Base
    # Index action
    get '/cars' do
      @cars = Car.all
      erb :'cars/index'
    end
  
    # New action
    get '/cars/new' do
      @car = Car.new
      erb :'cars/new'
    end
  
    # Create action
    post '/cars' do
      @car = Car.new(params[:car])
      if @car.save
        redirect '/cars'
      else
        erb :'cars/new'
      end
    end
  
    # Show action
    get '/cars/:id' do
      @car = Car.find(params[:id])
      erb :'cars/show'
    end
  
    # Edit action
    get '/cars/:id/edit' do
      @car = Car.find(params[:id])
      erb :'cars/edit'
    end
  
    # Update action
    patch '/cars/:id' do
      @car = Car.find(params[:id])
      if @car.update(params[:car])
        redirect '/cars'
      else
        erb :'cars/edit'
      end
    end
  
    # Delete action
    delete '/cars/:id' do
      @car = Car.find(params[:id])
      @car.destroy
      redirect '/cars'
    end
  end
end
  
 
  
  
  
  
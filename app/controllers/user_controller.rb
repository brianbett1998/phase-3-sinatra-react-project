class UsersController < Sinatra::Base
    get '/users' do
      @users = User.all
      erb :'users/index'
    end
  
    get '/users/new' do
      erb :'users/new'
    end
  
    post '/users' do
      @user = User.new(params[:user])
      if @user.save
        redirect '/users'
      else
        erb :'users/new'
      end
    end
  
    get '/users/:id' do
      @user = User.find(params[:id])
      erb :'users/show'
    end
  
    get '/users/:id/edit' do
      @user = User.find(params[:id])
      erb :'users/edit'
    end
  
    patch '/users/:id' do
      @user = User.find(params[:id])
      if @user.update(params[:user])
        redirect '/users'
      else
        erb :'users/edit'
      end
    end
  
    delete '/users/:id' do
      @user = User.find(params[:id])
      @user.destroy
      redirect '/users'
    end
  end
  
  # app/controllers/cars_controller.rb
  
  class CarsController < Sinatra::Base
    get '/cars' do
      @cars = Car.all
      erb :'cars/index'
    end
  
    get '/cars/new' do
      erb :'cars/new'
    end
  
    post '/cars' do
      @car = Car.new(params[:car])
      if @car.save
        redirect '/cars'
      else
        erb :'cars/new'
      end
    end
  
    get '/cars/:id' do
      @car = Car.find(params[:id])
      erb :'cars/show'
    end
  
    get '/cars/:id/edit' do
      @car = Car.find(params[:id])
      erb :'cars/edit'
    end
  
    patch '/cars/:id' do
      @car = Car.find(params[:id])
      if @car.update(params[:car])
        redirect '/cars'
      else
        erb :'cars/edit'
      end
    end
  
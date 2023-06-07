class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #Add your routes here
  
  # Fetch cars
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

  get '/reviews' do
    @reviews = Review.all
    erb :'reviews/index'
  end

  # New action
  get '/reviews/new' do
    @review = Review.new
    erb :'reviews/new'
  end

  # Create action
  post '/reviews' do
    @review = Review.new(params[:review])
    if @review.save
      redirect '/reviews'
    else
      erb :'reviews/new'
    end
  end

  # Show action
  get '/reviews/:id' do
    @review = Review.find(params[:id])
    erb :'reviews/show'
  end

  # Edit action
  get '/reviews/:id/edit' do
    @review = Review.find(params[:id])
    erb :'reviews/edit'
  end

  # Update action
  patch '/reviews/:id' do
    @review = Review.find(params[:id])
    if @review.update(params[:review])
      redirect '/reviews'
    else
      erb :'reviews/edit'
    end
  end

  # Delete action
  delete '/reviews/:id' do
    @review = Review.find(params[:id])
    @review.destroy
    redirect '/reviews'
  end

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


class ReviewsController < Sinatra::Base
    # Index action
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
  end
class PostsController < ApplicationController

  before_action :authenticate_admin!, only: [:index]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    
  end

  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to @post, notice: 'Your post was create'
    else
      render :new
    end

      # Amount in cents
      @amount = 150

      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path


  end

  private

  def post_params
    params.require(:post).permit(:name, :email, :phone_number, :wish)
  end

end

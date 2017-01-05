class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # def hidden_button
  #   if valid?
  #     validates :name, :phone_number, :wish, presence: true
  #     validates :email,
  #               presence: true,
  #               format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/}
  #   end
  # end
end

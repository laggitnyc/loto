class Post < ActiveRecord::Base

  validates :name, :phone_number, :wish, presence: true

  validates :email,
            presence: true,
            format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/}


end

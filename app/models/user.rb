# frozen_string_literal: true

# frozen_string_literal: true  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :links
end

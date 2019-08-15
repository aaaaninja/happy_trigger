# frozen_string_literal: true

class User < ActiveRecord::Base
  before_create do
    self.id = ULID.generate_bytes
  end
  extend Devise::Models

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end

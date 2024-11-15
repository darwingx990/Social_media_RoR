class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # enum role: {writer: "writer", admin:"admin"}
  # after_initialize :set_default_role, if new_record?

  # private

  # def set_default_role
  #   self.role ||= "writer"
  # end

  has_many :post, dependent: :destroy
  has_many :comment, dependent: :destroy
end
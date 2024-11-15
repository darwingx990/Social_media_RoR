class Category < ApplicationRecord
    has_many :posts dependent: :destroy

    validates :name, presence:true, :uniqueless:true
end

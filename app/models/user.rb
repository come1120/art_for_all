class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :name
    validates :birth_year
    validates :email,          uniqueness: {case_sensitive: false},
                               format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :password,       length: { minimum: 8 }
  end

  has_many :messages
  
  validates :name, presence: true, uniqueness: true
end

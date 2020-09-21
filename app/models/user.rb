class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :nickname,:first_name,:last_name,:first_name_kana,:last_name_kana,:birthday, presence: true
         validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
         validates :password, presence: true, length: { minimum: 7 }, format: { with: /(?=.*\d+.*)(?=.*[a-zA-Z]+.*)./ }
         has_one :address
         has_one :creditcard
         has_many :items
         has_many :favorites, dependent: :destroy
         has_many :liked_items, through: :likes, source: :item
         has_many :comments
end

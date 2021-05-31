class Trip < ApplicationRecord
  belongs_to :user
  has_many :propositions
  has_many :invites
  has_many :users, through: :invites
end

class Locator < ApplicationRecord
    has_many :locate_users
    has_many :users, through: :locate_users
end

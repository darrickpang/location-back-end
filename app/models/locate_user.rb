class LocateUser < ApplicationRecord
    belongs_to :user
    belongs_to :locator 
end

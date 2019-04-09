class Customer < ApplicationRecord
    has_many :customer_accounts
    has_many :customer_locations
    has_many :customer_accounts
end

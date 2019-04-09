class Vendor < ApplicationRecord
    has_many :customer_accounts
    has_many :vendor_locations
    has_many :vendor_contacts
end

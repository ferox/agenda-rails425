class Kind < ActiveRecord::Base
    has_many :contacts
    validates :description, presence: true, length: {minimum: 3}
end

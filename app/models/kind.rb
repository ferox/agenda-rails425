class Kind < ActiveRecord::Base
    has_many :contacts, dependent: :nullify
    validates :description, presence: true, length: {minimum: 3}
end

class Blogapi < ApplicationRecord
    validates :title, presence: true, length: {minimum: 2, maximum: 80}
    validates :blogcontent, presence: true, length: {minimum: 2, maximum: 5000}

end
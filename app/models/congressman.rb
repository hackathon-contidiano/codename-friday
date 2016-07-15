class Congressman < ApplicationRecord
  belongs_to :political_party

  has_many :speeches, :class_name => 'Speech'
  has_many :proposals
end

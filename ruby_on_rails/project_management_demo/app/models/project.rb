class Project < ApplicationRecord
  belongs_to :teamlead
  validates_presence_of :title
end

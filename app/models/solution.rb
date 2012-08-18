class Solution < ActiveRecord::Base
  belongs_to :user
  belongs_to :issue
  attr_accessible :details, :title


  validates :title, :presence => true
end

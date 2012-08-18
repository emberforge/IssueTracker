class Issue < ActiveRecord::Base
  belongs_to :user
  has_many :solutions, :dependent => :destroy
  attr_accessible :description, :tag, :title

  validates :title, :presence => true
end

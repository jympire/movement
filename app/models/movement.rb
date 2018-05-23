class Movement < ActiveRecord::Base
  extend FriendlyId
  friendly_id :text, use: :slugged
  
  belongs_to :user
  
  has_many :equipments
  has_many :directions
  
  accepts_nested_attributes_for :equipments, reject_if: :all_blank, allow_destroy: true
  
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
end

class Cookie < ActiveRecord::Base
  belongs_to :storage, polymorphic: :true
  
  validates :storage, presence: true

  def bake
    self.ready = true
    self.save
  end
end

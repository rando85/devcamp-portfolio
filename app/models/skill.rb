class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    #the operator is a shortcut for saying "if self.badge is nil then set the value I'm assignin here"
    self.badge ||= Placeholder.image_generator(width: 250, height: 250)
  end
end

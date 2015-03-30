module PaperTrail
  class LogTransaction < ActiveRecord::Base

    has_many :versions
    belongs_to :loggable, polymorphic: true
    before_create :set_whodunnit

    def set_whodunnit
      self.whodunnit = PaperTrail.whodunnit
    end

  end
end

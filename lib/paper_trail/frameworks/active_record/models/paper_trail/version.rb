require 'paper_trail/version_concern'

module PaperTrail
  class Version < ::ActiveRecord::Base
    include PaperTrail::VersionConcern
    belongs_to :log_transaction
  end
end

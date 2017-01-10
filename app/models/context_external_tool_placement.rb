class ContextExternalToolPlacement < ActiveRecord::Base
  belongs_to :context_external_tool

  validates_inclusion_of :placement_type, :in => Lti::ResourcePlacement::PLACEMENTS.map(&:to_s)

  scope :for_type, lambda { |type| where(:placement_type => type) }
end

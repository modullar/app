# frozen_string_literal: true

class Gemmy < ApplicationRecord
  include HasCompats

  FORBIDDEN_NAMES = %w(
    new
    edit
    rails
  )

  validates :name, presence: true, uniqueness: { allow_blank: true }, exclusion: FORBIDDEN_NAMES

  scope :with_dependencies, ->(dependencies) { where("dependencies_and_versions ? :dependencies", dependencies: JSON.generate(dependencies)) }

  delegate :to_param, :to_s, to: :name

  def dependencies
    dependencies_and_versions.keys
                             .map(&JSON.method(:parse))
  end

  def versions(dependencies = nil)
    version_groups = dependencies ? dependencies_and_versions.fetch_values(*dependencies.map(&JSON.method(:generate))) :
                                    dependencies_and_versions.values

    version_groups.flatten
                  .map(&Gem::Version.method(:new))
                  .sort
  end
end

# == Schema Information
#
# Table name: gemmies
#
#  id                        :bigint           not null, primary key
#  compat_ids                :text             default([]), not null, is an Array
#  dependencies_and_versions :jsonb
#  name                      :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

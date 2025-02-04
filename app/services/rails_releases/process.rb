# frozen_string_literal: true

module RailsReleases
  class Process < Baseline::Service
    def call(rails_release)
      Gemmy.find_each do |gemmy|
        Gemmies::UpdateCompats.call_async(gemmy)
      end

      Compats::CheckAllUnchecked.call_async
    end
  end
end

# typed: true
# frozen_string_literal: true

require 'test_helper'

module Library
  class OrganizerTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::Library::Organizer::VERSION
    end
  end
end

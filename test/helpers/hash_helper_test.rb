# frozen_string_literal: true

require "test_helper"
require "test_helpers/capture"
require "nsrr/helpers/hash_helper"

module HelpersTests
  # Test to make sure hash can be converted correctly.
  class HashHelperTest < Minitest::Test
    include TestHelpers::Capture

    def test_hash_key_conversion
      assert_equal(
        { key1: "abc", key2: "cde", key3: 123 },
        Nsrr::Helpers::HashHelper.symbolize_keys({ "key1" => "abc", "key2" => "cde", key3: 123 })
      )
    end
  end
end

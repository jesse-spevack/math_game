# typed: ignore
require './test/helper'
require './lib/answer'

class AnswerTest < Minitest::Test
  describe '==' do
    it "returns true when response equals solution" do
      solution = 1
      answer = Answer.new(response: solution)
      result = answer == solution

      assert_equal(result, true)
    end

    it "returns false when response does not equal solution" do
      solution = 1
      answer = Answer.new(response: 2)
      result = answer == solution

      assert_equal(result, false)
    end
  end
end
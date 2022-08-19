# typed: strong
require 'sorbet-runtime'

module PlayerInput
  extend T::Sig

  sig{returns(String)}
  def self.string
    gets.chomp
  end

  sig{returns(Integer)}
  def self.integer
    string.to_i
  end
end
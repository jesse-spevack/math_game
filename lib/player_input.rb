# typed: strong
require 'sorbet-runtime'

module PlayerInput
  extend T::Sig

  sig{returns(String)}
  def self.string
    gets.chomp
  end
end
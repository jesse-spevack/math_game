# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `unicode_utils` gem.
# Please instead update this file by running `bin/tapioca gem unicode_utils`.

# This version of UnicodeUtils implements algorithms as defined by
# version 6.2.0 of the Unicode standard. Each public method is
# declared as a +module_function+ of the UnicodeUtils module and
# defined in a separate file under the +unicode_utils+ directory.
#
# As a convenience, the toplevel +unicode_utils+ file loads all
# methods (needs lots of memory!). Also as a convenience for irb
# usage, the file <tt>unicode_utils/u</tt> assigns the UnicodeUtils
# module to the toplevel U constant and loads all methods:
#
#   $ irb -r unicode_utils/u
#   irb(main):001:0> U.grep /angstrom/
#   => [#<U+212B "Å" ANGSTROM SIGN utf8:e2,84,ab>]
#
# If a method takes a character as argument (usually named +char+),
# that argument can be an integer or a string (in which case the
# first code point counts) or any other object that responds to +ord+
# by returning an integer.
#
# All methods are non-destructive, string return values are in the
# same encoding as strings passed as arguments, which must be in one
# of the Unicode encodings.
#
# Highlevel methods are:
#
# UnicodeUtils.upcase:: full conversion to uppercase
# UnicodeUtils.downcase:: full conversion to lowercase
# UnicodeUtils.titlecase:: full conversion to titlecase
# UnicodeUtils.casefold:: case folding (case insensitive string comparison)
# UnicodeUtils.nfd:: Normalization Form D
# UnicodeUtils.nfc:: Normalization Form C
# UnicodeUtils.nfkd:: Normalization Form KD
# UnicodeUtils.nfkc:: Normalization Form KC
# UnicodeUtils.each_grapheme:: grapheme boundaries
# UnicodeUtils.each_word:: word boundaries
# UnicodeUtils.char_name:: character names
# UnicodeUtils.grep:: find code points by character name
#
# source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:3
module UnicodeUtils
  private

  # Iterate over the grapheme clusters that make up +str+. A grapheme
  # cluster is a user perceived character (the basic unit of a writing
  # system for a language) and consists of one or more code points.
  #
  # This method uses the default Unicode algorithm for extended
  # grapheme clusters.
  #
  # Returns an enumerator if no block is given.
  #
  # Examples:
  #
  #   require "unicode_utils/each_grapheme"
  #   UnicodeUtils.each_grapheme("a\r\nb") { |g| p g }
  #
  # prints:
  #
  #   "a"
  #   "\r\n"
  #   "b"
  #
  # and
  #
  #   UnicodeUtils.each_grapheme("a\r\nb").count => 3
  #
  # @yield [grapheme]
  #
  # source://unicode_utils-1.4.0/lib/unicode_utils/each_grapheme.rb:35
  def each_grapheme(str); end

  class << self
    # Iterate over the grapheme clusters that make up +str+. A grapheme
    # cluster is a user perceived character (the basic unit of a writing
    # system for a language) and consists of one or more code points.
    #
    # This method uses the default Unicode algorithm for extended
    # grapheme clusters.
    #
    # Returns an enumerator if no block is given.
    #
    # Examples:
    #
    #   require "unicode_utils/each_grapheme"
    #   UnicodeUtils.each_grapheme("a\r\nb") { |g| p g }
    #
    # prints:
    #
    #   "a"
    #   "\r\n"
    #   "b"
    #
    # and
    #
    #   UnicodeUtils.each_grapheme("a\r\nb").count => 3
    #
    # @yield [grapheme]
    #
    # source://unicode_utils-1.4.0/lib/unicode_utils/each_grapheme.rb:35
    def each_grapheme(str); end
  end
end

# Absolute path to the directory from which UnicodeUtils loads its
# compiled Unicode data files at runtime.
#
# source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:7
UnicodeUtils::CDATA_DIR = T.let(T.unsafe(nil), String)

# Maps code points to integer codes. For the integer code to property
# mapping, see #compile_grapheme_break_property in data/compile.rb.
#
# source://unicode_utils-1.4.0/lib/unicode_utils/each_grapheme.rb:9
UnicodeUtils::GRAPHEME_CLUSTER_BREAK_MAP = T.let(T.unsafe(nil), Hash)

# source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:9
module UnicodeUtils::Impl
  class << self
    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:27
    def open_cdata_file(filename, &block); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:43
    def read_code_point_map(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:31
    def read_code_point_set(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:101
    def read_combining_class_map; end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:84
    def read_conditional_casings(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:151
    def read_east_asian_width_per_cp(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:167
    def read_east_asian_width_ranges(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:175
    def read_general_category_per_cp(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:189
    def read_general_category_ranges(filename); end

    # Read a map whose keys are code points (6 hexgdigits, converted to
    # integer) and whose values are single hexdigits (converted to
    # integer).
    #
    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:118
    def read_hexdigit_map(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:55
    def read_multivalued_map(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:219
    def read_name_aliases(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:72
    def read_names(filename); end

    # Returns a list (array) of pairs (two element Arrays) of Range
    # (code points) and associated integer value.
    #
    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:134
    def read_range_to_hexdigit_list(filename); end

    # source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:206
    def read_symbol_map(filename); end
  end
end

# source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:11
UnicodeUtils::Impl::EAST_ASIAN_WIDTH_SYMBOL_MAP = T.let(T.unsafe(nil), Hash)

# source://unicode_utils-1.4.0/lib/unicode_utils/read_cdata.rb:19
UnicodeUtils::Impl::NAME_ALIAS_TYPE_TO_SYMBOL_MAP = T.let(T.unsafe(nil), Hash)

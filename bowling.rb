#!/usr/bin/ruby
# This is a code-kata
class Bowling
  attr_accessor :score

  def initialize
    @score = 0
  end

  def hit(point)
    @score += point
    self
  end
end

# coding: utf-8

class Bumon < Party
  attr_accessor :parties

  def initialize(name)
    super
    @parties = []
  end

  def add_party(party)
    @parties << party
  end

  def hyoji(quote="="*5)
    puts [quote, @name, quote].join(" ")
    @parties.each(&:hyoji)
  end
end

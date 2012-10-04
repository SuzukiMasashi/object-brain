# coding: utf-8

class Shain
  attr_accessor :kihonkyu

  def initialize(kihonkyu)
    @kihonkyu = kihonkyu.to_i
  end

  def say_kyuryo
    puts "私の給料は#{kyuryo}円です。"
  end

  class << self
    def create(klass_name, kihonkyu)
      Object.const_get(klass_name).new(kihonkyu)
    end
  end
end

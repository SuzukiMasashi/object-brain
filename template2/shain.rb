# coding: utf-8

class Shain
  attr_accessor :name
  attr_accessor :kihonkyu

  def initialize(name, kihonkyu)
    @name     = name
    @kihonkyu = kihonkyu.to_i
  end

  def say_kyuryo
    puts "私の給料は#{kyuryo}円です。"
  end

  def standup
    puts <<EOS
#{yakushoku}#{name}起立しました。
給料は#{kyuryo}円です。
EOS
  end

  class << self
    def create(klass_name, name, kihonkyu)
      Object.const_get(klass_name).new(name, kihonkyu)
    end
  end
end

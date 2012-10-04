# coding: utf-8

class Shain
  attr_accessor :kihonkyu

  class << self
    def create(klass_name)
      Object.const_get(klass_name).new
    end
  end
end

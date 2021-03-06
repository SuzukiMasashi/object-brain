# coding: utf-8
require_relative "shain"
require_relative "tanto"
require_relative "shunin"
require_relative "bucho"

class Shacho
  attr_accessor :shains
  attr_accessor :shain

  def manage(shain)
    (@shains ||= []) << shain
  end

  def call(klass_name)
    @syain = @shains.find {|shain| shain.class.name == klass_name}
  end

  def say_kiritsu
    @syain.kiritsu
  end
end

if __FILE__ == $0
  name, * = ARGV
  shacho = Shacho.new
  shain  = Shain.create(name)
  shacho.manage(shain)
  shacho.call(name)
  shacho.say_kiritsu
end

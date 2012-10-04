# coding: utf-8
require "./shain"
require "./tanto"
require "./shunin"
require "./bucho"

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
  def say_kyuryo
    @syain.say_kyuryo
  end
end

if __FILE__ == $0
  p ARGV
  name, kihonkyu = *ARGV
  shacho = Shacho.new
  shain  = Shain.create(name, kihonkyu)
  shacho.manage(shain)
  shacho.call(name)
  shacho.say_kiritsu
  shacho.say_kyuryo
end

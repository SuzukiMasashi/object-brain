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

  def call(&cond)
    @syain =  if cond
                @shains.find(&cond)
              else
                @shains.sample
              end
    @syain || raise("誰も来てくれませんでした。")
  end

  # def call_name(name)
  #   call {|shain| shain.name == name}
  # end

  # def call_klass_name(klass_name)
  #   call {|shain| shain.class.name == klass_name}
  # end

  def say_kiritsu
    @syain.kiritsu
  end

  def say_kyuryo
    @syain.say_kyuryo
  end

  def standup_please
    @syain.standup
  end
end

if __FILE__ == $0
  klass_name, name, kihonkyu = ARGV
  shacho = Shacho.new
  shain  = Shain.create(klass_name, name, kihonkyu)
  shacho.manage(shain)
  shacho.call {|shain| shain.name == name}
  shacho.standup_please
end

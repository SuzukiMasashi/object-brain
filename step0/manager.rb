# coding: utf-8
require_relative "ningen"

class Manager
  class << self
    def main
      ningen = Ningen.new("牛尾", 169)
      ningen.taberu
      ningen.neru
    end
  end
end

Manager.main

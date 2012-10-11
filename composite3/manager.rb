# coding: utf-8
require_relative "party"
require_relative "user"
require_relative "bumon"

class Manager
  class << self
    def main
      ushio = User.new("牛尾さん")
      ando  = User.new("安藤さん")

      system_bumon = Bumon.new("システム部")
      system_bumon.add_party(ushio)
      system_bumon.add_party(ando)

      mizukosi  = User.new("水越さん")
      kawano    = User.new("河野さん")

      eigyo_bumon = Bumon.new("営業部")
      eigyo_bumon.add_party(mizukosi)
      eigyo_bumon.add_party(kawano)

      jigyobu = Bumon.new("製造事業部")
      jigyobu.add_party(system_bumon)
      jigyobu.add_party(eigyo_bumon)

      jigyobu.hyoji
    end
  end
end

Manager.main


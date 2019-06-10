require_relative "funding_round.rb"

require_relative "startup.rb"

require_relative "venture_capitalist.rb"


require "pry"

s1 = Startup.new("cool.co", "frank", "coolco.com")
s2 = Startup.new("uncool.co", "fronk", "uncoolco.com")

vc1 = VentureCapitalist.new("Jeff")
vc2 = VentureCapitalist.new("Jill")

s1.sign_contract("angel", vc2, 2000)
s1.sign_contract("seed 1", vc1, 5000)
s1.sign_contract("seed 1", vc1, 10000)

vc2.offer_contract(s2, vc2, 1000)

binding.pry
# 
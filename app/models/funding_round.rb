class FundingRound

    attr_accessor :type, :amount
    attr_reader :venture_capitalist, :startup


    @@all = []

    def initialize(type, amount)
        @type = type
        @amount = amount
        @@all << self
    end

    def investment

    end

    def self.all
        @@all
    end

end

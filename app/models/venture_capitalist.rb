class VentureCapitalist

    attr_accessor :name, :investment, :funding_round

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @funding_round = []
    end

    def total_worth
        return
    end

    def self.all
        @@all
    end

    def offer_contract(startup, type, amount)
        funding_round = FundingRound.new(type, amount.to_f)
        startup.funding_round << funding_round
        self.funding_round << funding_round
    end

    def biggest_investment
        investment = 0
        @funding_round.each do |round|
            investment = round.amount  if round.amount > investment
        end
        investment
    end

end

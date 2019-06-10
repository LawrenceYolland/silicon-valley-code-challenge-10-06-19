class Startup

    attr_accessor :name, :amount, :funding_round
    attr_reader :founder, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @funding_round = []
        @@all << self
    end

    def self.all    
        @@all
    end

    def self.find_by_founder(founder)
        @@all.select {|startup| startup.founder == founder}
    end

    def self.domains
        @@all.collect {|startup| startup.domain}
    end

    def sign_contract(type, venture_capitalist, amount_invested)
        funding_round = FundingRound.new(type, amount_invested.to_f)
        venture_capitalist.funding_round << funding_round
        self.funding_round << funding_round
    end

    def investors
        self.funding_round.collect{|data| data.venture_capitalist}.uniq
    end

    def num_funding_rounds
        self.funding_round.length
    end

    def total_funds
        fund_size = 0
        self.funding_round.each do |round|
            fund_size += round.amount
        end
        fund_size
    end
end

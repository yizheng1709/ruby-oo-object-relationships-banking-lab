class BankAccount
    attr_reader :name
    attr_accessor :status, :balance 


    def initialize(name) 
        @name = name
        @status = "open"
        @balance = 1000
    end 

    def deposit(amount)
        self.balance += amount 
    end 

    def display_balance 
        "Your balance is $#{self.balance}." 
    end 

    def valid?
        self.status == "open" && self.balance > 0 ? true : false 
    end 

    def close_account 
        self.status = "closed"
    end 

end

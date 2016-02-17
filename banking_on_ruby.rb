class Account 
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end 

    def display_balance(pin_number)
        puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end 
    
    def deposit(pin_number, amount) 
        if pin_number == pin 
            @balance += amount
            puts "Deposited #{amount}. New balance: $#{@balance}."
        else 
            puts pin_error
        end
    end 
             
    def withdraw(pin_number, amount)
        if pin_number == pin 
            @balance -= amount 
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else 
            puts pin_error
        end
    end 
    
    private 
    
    def pin
        @pin = 1234
    end 

    def pin_error
        "Access denied: incorrect PIN."
    end 
end 

checking_account = Account.new("OK", 400)
checking_account.display_balance(4321)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 50)
checking_account.display_balance(1234)
checking_account.deposit(1234, 100)
checking_account.display_balance(1234)

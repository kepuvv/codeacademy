class Account
    attr_reader :name, :balance
    
    def initialize name, balance=100
        @name = name
        @balance = balance
    end
    
    private
    
    def pin
        @pin = 1234
    end
    
    def pin_error
        'Access denied: incorrect PIN.'
    end
    
    public
    
    def display_balance pin_number

        puts pin_number == pin ? "Balance: $#{@balance}." : pin_error

        # if pin_number == pin
        #     puts "Balance: $#{@balance}"
        # else
        #     puts pin_error
        # end
    end
    
    def withdraw pin_number, amount
        if pin_number == pin
            @balance -= amount
            puts "Withdrew #{amount}, New balance: $#{@balance}"
        else 
            puts pin_error
        end
    end
end

checking_account = Account.new 'Kir', 1_000_000
checking_account.display_balance 000
checking_account.display_balance 1234
checking_account.withdraw 000, 30000
checking_account.withdraw 1234, 30000
checking_account.display_balance 1234
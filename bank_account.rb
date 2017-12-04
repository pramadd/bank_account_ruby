class BankAccount
    @@bankaccountcount = 0
    

	def initialize
		@acctnum = Random.new_seed
		@checking = 0
		@saving = 0
		@interestrate = "1.5%"
		@@bankaccountcount += 1
    end
    


	def balance(string)
		
		if string == "checking"
			puts @checking
		else
			puts @saving
		end
    end
    

	def deposit(string, num)
		if string == "checking"
			@checking += num
		else
			@saving += num
		end
    end
    

	def withdraw(string, num)
		if string == "checking"
			if @checking > 0
				@checking -= num
			else puts "Insufficient Funds"
			end
		end
		if string == "saving"
			if @saving > 0
				@saving -= num
			else puts "Insufficient Funds"
			end
		end
    end
    

	def totalbalance
		puts @checking + @saving
    end
    
	def count
		puts @@bankaccountcount
	end
    
    
	def account_information
		puts @acctnum
		puts @checking
		puts @saving
		puts @interestrate
	end
end

neethu = BankAccount.new
neethu.deposit("checking", 500)
neethu.account_information

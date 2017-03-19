require 'pry'
class BankAccount

	attr_accessor :balance, :status
	attr_reader :name

	def initialize(name)
		@name = name
		@balance = 1000
		@status = "open"
		# binding.pry
	end

	def deposit(money_to_deposit)
		@balance += money_to_deposit
	end

	def display_balance
		"Your balance is $#{@balance}."
	end

	def valid?
		if @balance > 0 && @status == "open"
			true
		else
			false
		end
	end

	def close_account
		@status = "closed"
	end

end

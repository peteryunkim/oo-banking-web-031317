require'pry'
class Transfer

	attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
  	@sender = sender
  	@receiver = receiver
  	@amount = amount
  	@status = "pending"
  end

  def valid?
    if sender.valid? == true && receiver.valid? == true
      return true
    else
      return false
    end
  end

  def execute_transaction
    # binding.pry
    if sender.valid? == true && receiver.valid? == true && @amount < sender.balance && self.status != "complete"
      @receiver.balance += amount
      @sender.balance -= amount
      self.status ="complete"
      # binding.pry
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    
    end
  end

  def reverse_transfer
    if self.status == "complete"
      @sender.balance += amount
      @receiver.balance -= amount
      self.status = "reversed"
    end
  end

  



end

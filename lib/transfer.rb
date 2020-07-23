require'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :transaction
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
    @transaction = 1
  end
  
  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end
  
  def execute_transaction
    if @sender.valid? == true
    @sender.balance -= amount
    @receiver.balance += amount
    @status = "complete"
  else
    @status = "rejected"
    p "Transaction #{@status}. Please check your account balance."
  end
  end
      
end

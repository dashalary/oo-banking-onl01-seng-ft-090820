class Transfer
attr_accessor :transfer, :receiver, :sender, :status, :amount
 
 
def initialize(sender, receiver, amount)
 @sender = sender
 @receiver = receiver
 @status = "pending"
 @amount = amount
 end
 
 def valid?
  if @sender.status == "open" && @receiver.status == "open"
     @sender.valid? == true 
     @receiver.valid? == true 
  else 
  false 
  end
  end
 
def execute_transaction
if valid?
  @sender.balance = @sender.balance - @amount 
  @receiver.balance = @receiver.balance + @amount 
  @status = "complete"
  else
  @status = "rejected"
  puts "Transaction rejected. Please check your account balance."
  end
  end
  
 
def reverse_transfer 
execute_transaction
@receiver.balance = @receiver.balance - @amount 
@sender.balance = @sender.balance + @amount
@status = "reversed"
end

end
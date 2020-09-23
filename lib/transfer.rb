require 'pry'
class Transfer
attr_accessor :transfer, :receiver, :sender, :status, :amount
 
 
def initialize(sender, receiver, amount)
  @transfer = transfer
 @sender = sender
 @receiver = receiver
 @status = "pending"
 @amount = amount
 end
 
 def valid?
  @sender.valid? && @receiver.valid? 
  end
 
def execute_transaction
if @sender.valid? && @sender.balance >= @amount && @status == "pending"
  @sender.balance = @sender.balance - @amount 
  @receiver.balance = @receiver.balance + @amount 
  @status = "complete"
  else
  @status = "rejected"
  puts "Transaction rejected. Please check your account balance."
  end
  end
  
 
def reverse_transfer 
if valid? && @receiver.balance >= @amount && @status == "complete"
@receiver.balance = @receiver.balance - @amount 
@sender.balance = @sender.balance + @amount
@status = "reversed"
else
@status = "rejected"
puts "Transaction rejected. Please check your account balance."
end
end
end
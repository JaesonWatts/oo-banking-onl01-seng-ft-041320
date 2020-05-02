require "pry"

class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    binding.pry
    (@receiver.status=="open"&&@receiver.balance)&&(@sender.status=="open"&&@sender.balance) > 0 ? true : false
  end


end

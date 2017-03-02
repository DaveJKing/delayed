class Newsletter < ApplicationRecord
  def self.deliver(id)
    find(id).deliver
  end

  def deliver
    update_attribute(:delivered_at, Time.zone.now)
    puts "got here"
  end

  handle_asynchronously :deliver, :priority => 20, :queue => "newsletter", :run_at => Proc.new { 1.minutes.from_now }

end

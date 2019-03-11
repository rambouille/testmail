class Contact < ApplicationRecord
  after_create :send_welcome_email

 private
 def send_welcome_email
  ContactMailer.welcome(self).deliver_now
 end

end

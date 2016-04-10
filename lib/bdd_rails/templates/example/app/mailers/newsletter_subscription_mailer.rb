class NewsletterSubscriptionMailer < ActionMailer::Base
  def welcome(email)
    mail(from: 'example@example.com', to: email, body: 'Welcome')
  end
end

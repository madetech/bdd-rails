class NewsletterSubscriptionsController < ApplicationController
  def new
    @subscription = NewsletterSubscription.new
  end

  def create
    @subscription = NewsletterSubscription.new(subscription_attrs)

    if @subscription.save
      redirect_to new_newsletter_subscription_path, notice: 'Thanks for signing up'
    else
      render :new
    end
  end

  private

  def subscription_attrs
    params.require(:newsletter_subscription).permit(:email)
  end
end

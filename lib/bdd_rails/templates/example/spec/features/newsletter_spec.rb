feature 'Newsletter' do
  scenario 'User signs up for newsletter' do
    when_a_user_wishes_to_hear_more_about_acme
    they_can_sign_up_to_the_acme_newsletter
  end

  def when_a_user_wishes_to_hear_more_about_acme
    visit new_newsletter_subscription_path
    fill_in :newsletter_subscription_email, with: FFaker::Internet.email
    click_button 'Sign up'
  end

  def they_can_sign_up_to_the_acme_newsletter
    expect(page).to have_content 'Thanks for signing up'
    expect(ActionMailer::Base.deliveries.count).to be > 0
  end
end

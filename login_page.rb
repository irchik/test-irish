class LoginPage
  PAGE_URL = 'http://howitzer.strongqa.com/users/sign_in'

  def visit_page
    visit PAGE_URL
    self
  end

  def fill_email_field(email)
    fill_in('user_email', with: email)
  end

  def fill_password_field(password)
    fill_in('user_password', with: password)
  end

  def submit_form
    click_button 'Log in'
  end

  def fill_form(email, password)
    fill_email_field(email)
    fill_password_field(password)
  end

  def fill_and_submit_form(email, password)
    fill_form(email, password)
    submit_form
  end
end
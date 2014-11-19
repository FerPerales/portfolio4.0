class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Onyx Contact Form",
      :to => "#{ENV['CONTACT_EMAIL']}",
      :from => %("#{name}" <#{email}>)
    }
  end
end

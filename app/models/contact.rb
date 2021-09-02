class Contact < MailForm::Base
    attributes :name, validate: true
    attributes :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attributes :message
    attributes :subject
    attributes :nickname, captcha: true

    def headers
        {
          to: "khaledsetif1900@gmail.com",
          subject: "Form Subject",
          from: %("#{name}" <#{email}>) 
        }
      end
end
class Contact < MailForm::Base
    attributes :name, validate: true
    attributes :email, validate: /\A[^@\s]+@[^@\s]+\z/i
    attributes :message, validate: true
    attributes :nickname, captcha: true

    def headers
        {
          to: "khaledsetif1900@gmail.com",
          subject: "Contact Form",
          from: %("#{name}" <#{email}>) 
        }
      end
end
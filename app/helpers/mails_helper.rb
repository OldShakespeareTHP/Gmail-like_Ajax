module MailsHelper
  def already_read?(mail)
    unless mail.read
      " font-weight-bold"
    else
      ""
    end
  end
end

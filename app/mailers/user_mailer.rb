class UserMailer < ActionMailer::Base
  default from: "no-reply@sluiters.de"

  def guestbook_confirmation_email(guestbook_item)
    @guestbook_item = guestbook_item
    mail(to: guestbook_item.originator_email, subject: 'Bestätigung Gästebucheintrag')
  end
end

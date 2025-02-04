# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from:           "RailsBump <hello@railsbump.org>",
          template_path:  "mailers",
          message_stream: :outbound

  layout "mailer"

  def email_notification(email_notification)
    @notifiable = email_notification.notifiable

    mail to:      email_notification.email,
         subject: "[RailsBump] #{@notifiable.is_a?(Gemmy) ? %(Gem "#{@notifiable}") : "Your lockfile"} has been checked successfully."
  end
end

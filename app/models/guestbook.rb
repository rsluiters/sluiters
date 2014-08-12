require 'securerandom'

class Guestbook < ActiveRecord::Base
  validates :tenant_id, presence: true
  validates :title, presence: true
  validates :content, presence: true

  enum status: [ :created, :verified, :accepted, :declined ]


  def self.setup(data)
    gb = Guestbook.new(data)
    gb.status = :created
    gb.verification_token = SecureRandom.hex(64)
    saved = gb.save

    saved
  end


end

class TwitterAccount < ApplicationRecord
  has_many :tweets, dependent: :destroy
  belongs_to :user

  validates :username, uniqueness: true

  def client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "PZAMqI2k8w7wGcytmAeRBXPX8"
      config.consumer_secret     = "BBgJtBWgBboUEGeDKtih1lre5qGEWToglBSbsQ2Io4ZjuypcYY"
      config.access_token        = token
      config.access_token_secret = secret
    end
  end
end
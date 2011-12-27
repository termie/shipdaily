class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth.fetch("provider")
      user.uid = auth.fetch('uid')
      user.name = auth["info"].fetch("name")
      user.email = auth["info"].fetch("email")
      user.github_url = auth["info"]["urls"].fetch("GitHub")
    end
  end
end
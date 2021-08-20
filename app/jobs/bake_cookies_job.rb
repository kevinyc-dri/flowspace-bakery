class BakeCookiesJob < ApplicationJob
  queue_as :default

  def perform(cookie)
    cookie.bake
  end
end

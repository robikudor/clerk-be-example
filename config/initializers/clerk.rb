require 'clerk'

Clerk.configure do |c|
  # c.api_key = 'sk_test_9cvgzJMVoRYt8yoiSIGLdC4lGUzW92XchvlabeGLAc' # if omitted: ENV["CLERK_SECRET_KEY"] - API calls will fail if unset
  c.logger = Logger.new($stdout) # if omitted, no logging
  c.middleware_cache_store = Rails.cache # if omitted: no caching
end

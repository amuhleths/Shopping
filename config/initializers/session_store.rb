# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Shopping_session',
  :secret      => '5eb8a1a9d1799dd29afa28ca2f930c2c2756db7a9e0a15524ce7844b72a244ce0fea7ac9518cf270e80dd85eb5849ab3febd2718b355cd0c6b47651cf825dd1e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_assignment2_session',
  :secret      => 'a6a4c1ab936ed8a0207dbd98b8666b804290cec86aa79fdcf49c1dc02be4efdf0939b583c329a902e5012d4c990cfd6a3385667321042bbcf28da0f6a43a1332'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

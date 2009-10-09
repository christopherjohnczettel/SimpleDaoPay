# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_daopay_session',
  :secret      => '7de2eadca11387a6ddb84cbf58714bca7ce91c7f507044416149886ae97fa98ff8a8d78bfc92a6e45cc4cb80e31e757e20241c9986f286969af11a21cc09d8ee'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

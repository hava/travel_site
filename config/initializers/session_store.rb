# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_travel_site_session',
  :secret      => '388e59d5df2aac616be844c44ab87d886de5e80e37cebafa2afd5676e7406db1800fa7a02502cd5825f11cb6755a52c5d8deb44137f8364b2f3c0fa47060a2c6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

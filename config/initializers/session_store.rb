# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_webpage_session',
  :secret      => '8c949e80820dd71347716e557b6a267f091e4eaf7fb018e82a6aa4602fddf6f02daac9426258ea48355667a97122f09da08cf5eaadab5773b1def002f6767e4c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

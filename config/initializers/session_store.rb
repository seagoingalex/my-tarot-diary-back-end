if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_my_tarot_diary', domain: 'my_tarot_diary-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_my_tarot_diary'
  end
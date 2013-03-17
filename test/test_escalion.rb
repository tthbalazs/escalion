require './escalion'

client = Escalion.client(
  :base_url => 'https://secure.test.escalion.com',
  :username => nil,
  :password => nil,
  :site => nil
)

client.create_session

require 'securerandom'
require 'uri'

class Url < ActiveRecord::Base
    # This is Sinatra! Remember to create a migration!
validates :long_url, presence: true
before_create :shorten, :counter

 def shorten
   self.short_url = SecureRandom.hex(3)
 end

 def counter
   self.counter = 0
 end

end

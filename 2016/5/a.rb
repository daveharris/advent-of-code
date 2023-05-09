require 'digest/md5'

input = 'reyedfim'
password = ''

1.step do |index|
  digest = Digest::MD5.hexdigest([input,index].join)
  if digest.start_with?('00000')
    password << digest[5]
  end

  break if password.length == 8
end

puts "The password is: #{password}"

require 'digest/md5'

input = 'reyedfim'
password = Array.new(8)
ticker = '-'

1.step do |index|
  digest = Digest::MD5.hexdigest([input,index].join)

  if digest.start_with?('00000') &&
      digest[5].match(/[0-7]/) &&
      password[digest[5].to_i] == nil

    password[digest[5].to_i] = digest[6]
  end

  if index%10000 == 0
    ticker = (ticker == '-') ? '|' : '-'
    print "\rDecrypting #{ticker}"
  end

  break if password.compact.length == 8
end

puts "\nThe password is: #{password.join}"

Dir.glob('./lib/primes_table/**/*.rb').each do |file|
  require file
end
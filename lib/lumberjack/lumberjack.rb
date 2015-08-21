class Lumberjack
  def self.save params, ip, num_results, request_time
    File.open('lib/lumberjack/log.txt', 'a') do |f|
      f.write("#{params}\n#{ip}\n#{num_results}\n#{request_time}")
    end
  end
end

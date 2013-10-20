require 'zlib'

# TODO:keyword parameter
module ZgrepModule
  def zgrep(str, filepath)
    if str.nil? || str.empty?
      puts "Search string is blank."
      exit 1
    end

    if !File.file?(filepath)
      puts "#{filepath} isn't file."
      exit 1
    end

    if File.extname(filepath) != ".gz"
      puts "File extension isn't gzip."
      exit 1
    end

    Zlib::GzipReader.open(filepath) do |gz|
      gz.each { |line|
        if /#{str}/ =~ line
          puts line
        end
      }
    end
  end
end


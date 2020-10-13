require "ruby_lepton/version"
require 'securerandom'

module RubyLepton
  class Error < StandardError; end
  class Base
    class << self
      def compress(source_file, options)
        generated_file = "output/"+SecureRandom.hex(4)+".lep"
        `lepton -memory=1024M -threadmemory=128M #{source_file} #{generated_file}`
        if File.exist? generated_file
          output = File.open(generated_file, 'rb')
          if options[:binary].to_s == "true"
            File.delete(generated_file)
            puts output.read
          else
            puts "Compressed file saved to: " + generated_file
          end
        else
          puts "Error in compression"
        end
      end

      def decompress(source_file, options)
        generated_file = "output/"+SecureRandom.hex(4)+".jpeg"
        `lepton -memory=1024M -threadmemory=128M #{source_file} #{generated_file}`
        if File.exist? generated_file
          output = File.open(generated_file, 'rb')
          if options[:binary].to_s == "true"
            File.delete(generated_file)
            puts output.read
          else
            puts "Decompressed file saved to: " + generated_file
          end
        else
          puts "Error in decompression"
        end
      end
    end
  end
end

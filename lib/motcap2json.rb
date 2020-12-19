require "motcap2json/version"

module Motcap2json
    class Error < StandardError; end
    # Your code goes here...
    def self.parse filename
        return false unless File.exist? filename
        data = open(filename, encoding: "cp932:UTF-8").read
        ary = []
        data.each_line do |line|
            line =~ /\s*(\d*),\s*(\d*),\s*(\d*\.\d*),\s*(\d*),\s*(\d*\.\d*),\s*(\d*\.\d*),\s*(\d*\.\d*)/
            if $1
                match = $~[1..-1]
                scene = match[0].to_i - 1
                time = match[2].to_f
                id = match[3].to_i - 1
                x = match[4].to_f
                y = match[5].to_f
                z = match[6].to_f
                ary[id] = [] unless ary[id]
                ary[id][scene] = [time, x, y, z]
            end
        end
        ary
    end
end

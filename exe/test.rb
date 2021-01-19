#!/usr/bin/env ruby

require "motcap2json"

unless ARGV.size == 1
    STDERR.puts "Usage: #{$0} FILE"
    exit false
end

unless(ary = Motcap2json.parse ARGV[0])
    STDERR.puts "エラー: ファイルが存在しません"
    exit false
end

p ary[3]
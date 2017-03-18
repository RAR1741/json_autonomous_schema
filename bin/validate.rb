#!/usr/bin/env ruby
require "optparse"

options = {
  filename: "drive_forward.json",
  schema: "schema/autonomous-schema.json"
}

ARGV.options do |opts|
	opts.banner = "Usage:  #{File.basename(\$PROGRAM_NAME)} [OPTIONS]"

	opts.separator ""
	opts.separator "Specific Options:"

  opts.on( "-f", "--filename FILENAME") do |filename|
    options[:filename] = filename
  end

	opts.separator "Common Options:"

	opts.on( "-h", "--help",
	         "Show this message." ) do
		puts opts
		exit
	end

	begin
		opts.parse!
	rescue
		puts opts
		exit
	end
end

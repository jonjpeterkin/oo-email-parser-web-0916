# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

	attr_reader :raw_emails

	def initialize(raw_emails)
		@raw_emails = raw_emails
	end

	def parse
		@raw_emails.split.map { |email| email.end_with?(",") ? email[0...-1] : email }.uniq
	end

end


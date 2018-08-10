# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @@all = []
  
  attr_accessor :emails
  
  
  def self.new(emails)
    @emails = emails
    if @emails.include?(",")
      @emails.split(",").each {|email| @@all << email.strip}
    elsif @emails.include?(" ")
      @emails.split(" ").each {|email| @@all << email.strip}
    end
    self
  end 
  
  def self.parse
    @@all.uniq
  end
end 
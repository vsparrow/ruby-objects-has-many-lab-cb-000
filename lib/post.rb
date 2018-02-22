class Post
  attr_accessor :title , :author
  # attr_writer :author

  def initialize(title)
    @title=title
  end

  def author_name
    @author ? @author.name : nil 
  end
end #class

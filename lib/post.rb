class Post
  attr_reader :name #, :author
  # attr_writer :author

  def initialize(name)
    @name=name
  end # initialize


  def author(author=@author)
    @author = author
    puts "***************#{author}**#{@author}"
    @author
  end

  def author=(author)
    @author=author
  end

  def author_name
    # puts "************#{@author}"
    # puts "************#{@author.name}"
    # @author || !@author.name ? authors_name = nil : authors_name = @author.name
    authors_name = nil
    # authors_name = @author ||= nil
    if @author
      authors_name = @author.name
    end
    authors_name

  end #author_name

  def title
    @name
  end #title

end #class

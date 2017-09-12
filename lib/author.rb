class Author
  attr_reader :name, :posts
  @@post_count

  def initialize(name)
    @name=name
    @posts=[]
    @@post_count ||= 0
  end #initialize

  def add_post(post) #post objects
    @posts << post
    post.author(self)
    @@post_count += 1
  end #add_post

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end #add_post_by_title

  def self.post_count
    @@post_count
  end #post_count

end #class

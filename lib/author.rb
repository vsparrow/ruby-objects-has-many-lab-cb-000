class Author
  attr_accessor :name, :posts
  @@all = []
  @@post_count = []

  def initialize(name)
    @name=name
    @posts=[]
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author= self
  end

  def add_post_by_title(title)
    post=Post.new(title)
    @posts << post
    post.author=self
  end

  def self.post_count
    post_count = 0
    @@all.each {|author| post_count += author.posts.count}
    @@post_count = post_count
  end
end #class

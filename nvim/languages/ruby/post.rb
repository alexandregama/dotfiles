class Post
  def initialize(title, content)
    @title = title
    @content = content
  end

  def my_method
    puts "This is my method"
  end
end

post = Post.new("Title", "Content")
post.my_method  # Try gd here


class Post
  def initialize(title, content)
    @title = title
    @content = content
  end

  def my_method
    my_array = []
    puts my_array
    puts 'This is my method'
  end

  def another_method
    puts 'This is another method'
  end
end

post = Post.new('Title', 'Content')
post.my_method # Try gd here
post.another_method

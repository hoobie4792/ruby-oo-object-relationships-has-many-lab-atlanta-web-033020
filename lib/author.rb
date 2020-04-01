class Author
    attr_reader :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        Song.all.count
    end
end
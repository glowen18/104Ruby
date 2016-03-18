class Blog
	
	@@all_blog_posts = []
	@@num_blog_posts = 0

	def self.all
		@@all_blog_posts
	end

	def self.add(thing)
		@@all_blog_posts << thing
		@@num_blog_posts += 1
	end
	
	def self.publish
		@@all_blog_posts.each do |post|
			puts "Title: #{post.title}"	
			puts "Body: \n #{post.content}"
			puts "Publish Date: #{post.publish_date}"
		end
	end			
end	


class BlogPost < Blog
	def self.create
		post = new
		puts "Name your blog post: "
		post.title = gets.chomp
		puts "Input your blog content: "
		post.content = gets.chomp
		post.publish_date = Time.now
		post.save
		puts "Do you want to create another post? [Y/N]" 
	create if gets.chomp.downcase == 'y'
	puts "You created #{@@num_blog_posts} blog posts today."

end	

	def title
		@title
	end

	def title=(title)
		@title = title
	end	
	
	def content
		@content
	end
		
	def content=(content)
		@content = content
	end
	
	def get_content
		return @content
	end
	
	def publish_date
		@publish_date
	end
	
	def	publish_date=(publish_date)
		@publish_date = publish_date
	end
	
	def save
		BlogPost.add(self)
	end	
end


BlogPost.create
total_posts = BlogPost.all
BlogPost.publish


			












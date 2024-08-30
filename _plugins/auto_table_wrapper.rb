module Jekyll
    class AutoTableWrapper < Generator
      def generate(site)
        site.posts.docs.each do |post|
          if post.content.include?("<table")
            post.content.gsub!(/(<table.*?>)/, '<div style="overflow-x:auto;">\1')
            post.content.gsub!(/(<\/table>)/, '\1</div>')
          end
        end
      end
    end
  end
  
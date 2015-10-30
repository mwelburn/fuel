xml.instruct!
xml.rss :version => '2.0', 'xmlns:atom' => 'http://www.w3.org/2005/Atom' do

    xml.channel do
        xml.title @title
        xml.description @description
        xml.link root_url
        xml.language 'en'
        xml.tag! 'atom:link', :rel => 'self', :type => 'application/rss+xml', :href => feed_url

        for post in @posts
            xml.item do
                xml.title post.title
                xml.link post_url(post)
                xml.pubDate(post.published_at.rfc2822)
                xml.guid post.id
                xml.description(post.content.html_safe)
            end
        end

    end

end
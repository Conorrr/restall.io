<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
            
            <#if published_posts?size lt config.index_posts?number>
                <#assign max=published_posts?size-1>
            <#else>
                <#assign max=config.index_posts?number-1>
            </#if>

  <channel>
    <title>${config.site_title}</title>
    <link>${config.site_host}</link>
    <atom:link href="${config.site_host}/feed.xml" rel="self" type="application/rss+xml" />
    <description>${config.site_description}</description>
    <language>en-gb</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#if published_posts?size lt config.rss_posts?number>
        <#assign max=published_posts?size-1>
    <#else>
        <#assign max=config.rss_posts?number-1>
    </#if>

    <#list published_posts[0..max] as post>
    <item>
      <title><#escape x as x?xml>${post.title}</#escape></title>
      <link>${config.site_host}${post.uri}</link>
      <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
      <guid isPermaLink="false">${post.uri}</guid>
        <description>
  <#escape x as x?xml>  
  ${post.body}
  </#escape>
  </description>
    </item>
    </#list>

  </channel>
</rss>
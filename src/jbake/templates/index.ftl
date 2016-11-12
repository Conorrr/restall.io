<#function summary content marker=(config.summary_marker)!"<!-- more">
    <#assign idx = content?index_of(marker) />
    <#if idx gt 0>
        <#return content?substring(0,idx)>
    <#else>
        <#return content>
    </#if>
</#function>


<#include "header.ftl">

<#include "menu.ftl">  

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('/images/home-bg.png')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>${config.site_title}</h1>
                    <hr class="small">
                    <#if config.site_title??>
                        <span class="subheading">${config.site_subtitle}</span>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <#if published_posts?size lt config.index_posts?number>
                <#assign max=published_posts?size-1>
            <#else>
                <#assign max=config.index_posts?number-1>
            </#if>

            <#list published_posts[0..max] as post>
                <div class="post-preview">
                    <a href="/${post.uri}">
                        <h2 class="post-title">
                            ${post.title}
                        </h2>
                        <#if post.subtitle??>
                        <h3 class="post-subtitle">
                            ${post.subtitle}
                        </h3>
                        </#if>
                    </a>
                    <p class="post-meta">Posted on ${post.date?string("MMMM dd, yyyy")}</p>
                    ${summary(post.body)}
                    <p><a href="${post.uri}">Read more</a></p>
                </div>
                <hr>
            </#list>
            <!-- Pager -->
            <ul class="pager">
                <li class="next">
                    <a href="archive.html">Older Posts &rarr;</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<hr>

<#include "footer.ftl">
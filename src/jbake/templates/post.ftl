<#include "header.ftl">

<#include "menu.ftl">

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<#if content['title-image']??>
    <header class="intro-header" style="background-image: url('/images/${content['title-image']}')">
<#else>
    <header class="intro-header" style="background-image: url('/images/post-bg.jpg')">
</#if>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <h1>${content.title}</h1>
                    <#if content.subtitle??>
                        <h2 class="subheading">${content.subtitle}</h2>
                    </#if>
                    <span class="meta">Posted by ${content.author} on ${content.date?string("dd MMMM yyyy")}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Post Content -->
<article>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                ${content.body}
            </div>
        </div>
    </div>
</article>

<#include "footer.ftl">
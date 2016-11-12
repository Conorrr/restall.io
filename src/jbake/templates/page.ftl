<#include "header.ftl">

<#include "menu.ftl">

<#if content['title-image']??>
    <header class="intro-header" style="background-image: url('/images/${content['title-image']}')">
<#else>
    <header class="intro-header" style="background-image: url('/images/home-bg.jpg')">
</#if>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="page-heading">
                    <h1>${content.title}</h1>
                    <#if content.subtitle??>
                        <hr class="small">
                        <span class="subheading">${content.subtitle}</span>
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
            ${content.body}
        </div>
    </div>
</div>

<#include "footer.ftl">
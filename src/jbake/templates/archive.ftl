<#include "header.ftl">

<#include "menu.ftl">
  
<header class="intro-header" style="background-image: url('/images/archive-bg.jpg')">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
        <div class="page-heading">
          <h1>Archive</h1>
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
      <ul>
        <#list published_posts as post>
        <#if (last_month)??>
          <#if post.date?string("MMMM yyyy") != last_month>
            </ul>
            <h4>${post.date?string("MMMM yyyy")}</h4>
            <ul>
          </#if>
        <#else>
          <h4>${post.date?string("MMMM yyyy")}</h4>
          <ul>
        </#if>
        
        <li>
          ${post.date?string("dd")} - <a href="/${post.uri}">${post.title}</a>
        </li>
        <#assign last_month = post.date?string("MMMM yyyy")>
        </#list>
      </ul>
    </div>
  </div>
</div>
  
<#include "footer.ftl">
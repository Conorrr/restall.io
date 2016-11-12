<!-- Navigation -->
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="/index.html">${config.site_name}</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/index.html">Home</a>
                </li>
                <#list published_pages as page>
                    <li>
                        <a href="/${page.uri}">${page.title}</a>
                    </li>
                </#list>
                <#if config.github_username??>
                    <li>
                        <a id="github-link" class="icon-link" href="https://github.com/${config.github_username}"></a>
                    </li>
                </#if>
                <#if config.twitter_username??>
                    <li>
                        <a id="twitter-link" class="icon-link" href="https://twitter.com/${config.twitter_username}"></a>
                    </li>
                </#if>
                <#if config.twitter_username??>
                    <li>
                        <a id="linkedin-link" class="icon-link" href="https://www.linkedin.com/in/${config.linkedin_userid}"></a>
                    </li>
                </#if>
                <#if config.rss?? && config.rss?boolean>
                    <li>
                        <a id="rss-link" class="icon-link" href="/feed.xml"></a>
                    </li>
                </#if>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><g:layoutTitle default="Groovyexample.com"/></title>
    <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'new.css')}"/>
    <link rel="shortcut icon" href="${createLinkTo(dir: 'images', file: 'favicon.ico')}" type="image/x-icon"/>
    <link rel="alternate" type="application/rss+xml" title="GroovyExamples RSS Feed (RSS 2.0)" href="${createLink(controller: 'example', action: 'recentFeed')}"/>
    <meta name="layout" content="main"/>
    <g:layoutHead/>
    <g:javascript library="application"/>
</head>
<body>
    <div id="mainframe"><div id="main">

        <div id="topnav">
            <ul>
                <li id="n1"><a href="http://www.groovyexamples.com">
                    <img src="${createLinkTo(dir: 'images', file: 'groovy.png')}" title="GroovyExamples.com" border=0 alt="GroovyExamples.com"></a>
                </li>
            </ul>
        </div>

        <div id="header">&nbsp;</div>

        <div id="container">

            <div id="left">
                <div class="leftheader">
                    <div class="cell">
                        <img src="${createLinkTo(dir: 'images', file: 'tarrow.gif')}"><span class=red>Example</span> search

                        <g:form action="search" controller="example" method="get">
                            <p>
                                <input type="text" name="q" value="${params.q}" id="query" size="10"/>
                                <input type="submit" name="submit" class="btn" value="Search"/>
                            </p>
                        </g:form>
                    </div>
                </div>

                <div id="banner">
                    <g:link controller="example" action="create">
                        <img src="${createLinkTo(dir: 'images', file: 'submit_your_example.png')}" width=200 height=90 border=0 alt="Submit your example">
                    </g:link>
                </div>

                <div class="leftheader">
                    <div class="cell">
                        <img src="${createLinkTo(dir: 'images', file: 'tarrow.gif')}" alt=">">Newest additions
                        <g:link controller="example" action="recentFeed">
                            <img src="${createLinkTo(dir: 'images', file: 'rss.jpg')}" alt="Rss" border="0" align="right"/>
                        </g:link>
                    </div>
                </div>

                <div id="leftnav">
                    <div class="cell">
                        <ul id=leftsub>
                            <g:each in="${recentExamples}" var="example">
                                <li><g:link controller="example" action="show" id="${example.id}" params="[title:example.title]" class="blinks">${example.title}</g:link>
                            </g:each>
                        </ul>
                    </div>
                </div>

                <div class="leftheader">
                    <div class="cell">
                        <img src="${createLinkTo(dir: 'images', file: 'tarrow.gif')}">Browse
                        <g:link controller="example" action="allFeed">
                            <img src="${createLinkTo(dir: 'images', file: 'rss.jpg')}" alt="Rss" border="0"  align="right"/>
                        </g:link>
                    </div>
                </div>

                <div id="leftbox">
                    <div class="cell">
                        <ul>
                            <li><g:link controller="example" action="list" class="blinks">All</g:link>
                            <!--<li><a class="blinks" href="most_popular_tutorials.php">Most Popular Examples</a>-->
                            <li><g:link controller="example" action="random" class="blinks">Random Example</g:link>
                        </ul>
                        Total examples: <b>${Example.count()}</b><br/>
                    </div>

                </div>

                <div class="leftheader">
                    <div class="cell">
                        <img src="${createLinkTo(dir: 'images', file: 'tarrow.gif')}">Account
                    </div>
                </div>

                <div id="leftbox">
                    <div class="cell">
                        <auth:isNotLoggedIn>
                            <ul>
                                <li><a href="${createLink(controller: 'register')}">Register</a>
                                <li><a href="${createLink(controller: 'login')}">Login</a>
                            </ul>
                        </auth:isNotLoggedIn>
                        <auth:isLoggedIn>
                            Welcome <auth:displayName/>
                            <ul>
                                <li><a href="${createLink(controller: 'logout')}">Logout</a>
                            </ul>
                        </auth:isLoggedIn>
                    %{--
                    <center>
                        <br/>
                        <a href=affiliates.php>View all</a> - <a href=affiliates.php#apply>Apply</a>

                    </center></div>

                    --}%
                    </div>
                </div>


                <div class="leftheader">
                    <div class="cell">
                        <img src="${createLinkTo(dir: 'images', file: 'tarrow.gif')}">Contact
                    </div>
                </div>

                <div id="leftbox">
                    <div class="cell">
                        <ul>
                            <li><a href="http://dontmindthelanguage.wordpress.com">Blog</a>
                            <li><a href="mailto:info@groovyexamples.com">Mail me</a>
                        </ul>
                    </div>

                    <center>
                        <font color="#aaaaaa">Version 0.1</font>
                        <br />
                        <br />
                    </center>
                </div>

            </div>

        </div>

        <div id="middle">
            <g:layoutBody/>
        </div>

        %{--<div id="right">
       <div class="cell">
           <h2>Books</h2><hr>
           <br>
           <center>

               <a href=http://philarmon.lpnow.hop.clickbank.net/?tid=LEARNPHO>
                   <img src="${createLinkTo(dir: 'images', file: 'photoshopnow.gif')}" border=0 width=158 height=250></a>
               <br>
               The fastest way to master the basics of Adobe Photoshop</a>
           </center>
       </div> --}%
    </div>

    </div>

</div>
</body>
</html>
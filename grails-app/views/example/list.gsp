<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Example List</title>
</head>
<body>
    <div class="cell">
        <h1>Examples</h1><hr>
    </div>
    <div class="cell">
        <form action="index.php" method="get">
            <p>${exampleInstanceList.size()} results found:</p>

<!--
            <div align=right>Sort by:
                <select name="sort">
                    <option>Newest</option>
                    <option>Oldest</option>
                    <option>Category</option>
                    <option>Most Clicks</option>
                    <option>Author</option>
                    <option>Name</option>
                    <option>Best Rated</option>
                    <option>Easiest</option>
                    <option>Hardest</option>
                </select>
                <input class=btn type="submit" value="Sort">
            </div>
-->
        </form>

        <g:each in="${exampleInstanceList}" status="i" var="example">
            <div id="tt"></div>
            <div id="tm">
                <div id="tmimg">
                    <img src="${createLinkTo(dir: 'images', file: 'brights_icon_50x50-full.jpeg')}" alt="Default icon">
                </div>
                <g:link controller="example" action="show" id="${fieldValue(bean: example, field: 'id')}" params="[title:example.title]">
                    ${fieldValue(bean: example, field: 'title')}
                </g:link>
                <br>
                <div id="td">${fieldValue(bean: example, field: 'description')}
                    <div id="ts">Language: <a href="3">${fieldValue(bean: example, field: 'language')}</a> - Date added: ${formatDate(date: example.dateCreated, format: "dd-MMM-yyyy")}</div>
                </div>
            </div>
            <div id="tb"></div>
        </g:each>
    </div>


    <div class="paginateButtons">
        <g:paginate total="${Example.count()}"/>
    </div>
</body>
</html>

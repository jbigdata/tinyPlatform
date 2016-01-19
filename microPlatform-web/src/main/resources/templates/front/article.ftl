<#include "include/head.ftl">
<#include "include/navbar.ftl">

<!-- Begin page content -->
<div class="container">
    <div class="page-header">
        <h1>${article.title}</h1>
        ${article.create}
    </div>
    ${article.articleData.content}
</div>

<footer class="footer">
    <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
    </div>
</footer>

</body>
</html>

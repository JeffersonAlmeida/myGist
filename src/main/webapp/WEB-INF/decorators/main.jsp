<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><decorator:title default="Vraptor Scaffold"/></title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/stylesheets/scaffold.css"/>" /> 
     <script type="text/javascript" src="<c:url value="/javascripts/jquery.min.js"/>"></script>
    <script type="text/javascript" src="/javascripts/SyntaxHighlighter/scripts/shCore.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/scripts/shBrushJScript.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/scripts/shBrushJava.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/scripts/shBrushPhp.js"></script>



<!-- css-->
<link href="/javascripts/SyntaxHighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
<link href="/javascripts/SyntaxHighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />


<script type="syntaxhighlighter" class="brush: js"><![CDATA[
  /**
   * SyntaxHighlighter
   */
  function foo()
  {
      if (counter <= 10)
          return;
      // it works!
  }
]]></script> 
    <decorator:head/>
  </head>
  <body>
    <decorator:body/>
   
  </body>
</html>

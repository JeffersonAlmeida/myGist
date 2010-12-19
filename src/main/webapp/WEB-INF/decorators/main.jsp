<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><decorator:title default="Vraptor Scaffold"/></title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/stylesheets/scaffold.css"/>" /> 
     <script type="text/javascript" src="<c:url value="/javascripts/jquery.min.js"/>"></script>
     
     <script type="text/javascript" src="<c:url value="/javascripts/jquery.validate.min.js"/>"></script>
    <script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/shCore.js"></script>


<script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/shBrushJScript.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/shBrushJava.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/scripts/shBrushPhp.js"></script>

<script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/shBrushScala.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/shBrushPerl.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/shBrushRuby.js"></script>
<script type="text/javascript" src="/javascripts/SyntaxHighlighter/Scripts/shBrushCss.js"></script>
		



<link rel="stylesheet" href="/javascripts/jquery/ui/base/jquery.ui.all.css">
<script src="/javascripts/jquery/ui/jquery.ui.core.min.js"></script>
<script src="/javascripts/jquery/ui/jquery.ui.widget.min.js"></script>

<script src="/javascripts/jquery/ui/jquery.ui.tabs.min.js"></script>
<link rel="stylesheet" href="/javascripts/jquery/demos.css">
<script>
$(function() {
	$( "#tabs" ).tabs();
});
$(document).ready( function() {
    $("#formulario").validate({
        // Define as regras
        rules:{
        	nome:{
                // campoNome será obrigatorio (required) e terá tamanho minimo (minLength)
                required: true
            },
            codigo:{
                // campoEmail será obrigatorio (required) e precisará ser um e-mail válido (email)
                required: true
            },
            tags:{
                // campoMensagem será obrigatorio (required) e terá tamanho minimo (minLength)
                required: true
            },
            linguagem:{
            	 required: true
            }
        },
        // Define as mensagens de erro para cada regra
        messages:{
        	nome:{
                required: "Digite uma descricao para o codigo"
            },
            tags:{
                required: "Digite uma descricao para o codigo"
            },
            linguagem:{
                required: "Selecione uma linguagem"
            },
            codigo:{
                required: "Digite o codigo"
            }
        }
    });
});
</script>


<!-- css-->
<link href="/javascripts/SyntaxHighlighter/Styles/shCore.css" rel="stylesheet" type="text/css" />
<link href="/javascripts/SyntaxHighlighter/Styles/shThemeDefault.css" rel="stylesheet" type="text/css" />

<script>
	$(function() {
		$( "#tabs" ).tabs();
	});
	</script>
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
  <div class="demo">

	<div id="tabs">
	<ul>
		<li><a href="#tabs-1">Trabalho Final TES</a></li>
	</ul>
<div id="tabs-1">  
  <div class="demo">
    <decorator:body/>
   </div>
  </div>
  </div> 
  </body>
</html>

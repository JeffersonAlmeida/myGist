<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>

<form method="get" action="<c:url value='/gists_search'/>" >

  <div class="field">
    Nome:<br />
    <input type="text" name="search" value=""/>
  </div>
  
  <div class="actions">
    <button type="submit">send</button>
  </div>

</form>

<fieldset>
	<legend>Gists Cadastrados</legend>
<table class="list">
  <tr class="row0">
   <th>Nome</th>
   <th>C&oacute;digo</th>
   <th>Tags</th>
   <th>Linguagem</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>
<tbody>
<c:forEach items="${gistList}" var="gist">
  <tr class="row1">
      <td>
      ${gist.nome}
    </td>
      <td>
      ${gist.codigo}
    </td>
      <td>
      ${gist.tags}
    </td>
      <td>
      ${gist.linguagem}
    </td>
      <td><a href="<c:url value="/gists/${gist.id}"/>">Ver</a></td>
    <td><a href="<c:url value="/gists/${gist.id}/edit"/>">Editar</a></td>
    <td>
      <form action="<c:url value="/gists/${gist.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">Remover</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</tbody>
</table>

<br />
<a href="<c:url value="/gists/new"/>">Novo Gist</a> 
</fieldset>
</body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<h1> Consulta </h1>

<form method="get" action="<c:url value='/gists_search'/>" >

  <div class="field">
    Nome:<br />
    <input type="text" name="search" value=""/>
  </div>
  
  <div class="actions">
    <button type="submit">send</button>
  </div>

</form>

<h1>Listing Gists</h1>

<table>
  <tr>
   <th>nome</th>
   <th>codigo</th>
   <th>tags</th>
   <th>linguagem</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>

<c:forEach items="${gistList}" var="gist">
  <tr>
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
      <td><a href="<c:url value="/gists/${gist.id}"/>">show</a></td>
    <td><a href="<c:url value="/gists/${gist.id}/edit"/>">edit</a></td>
    <td>
      <form action="<c:url value="/gists/${gist.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

<br />
<a href="<c:url value="/gists/new"/>">New Gist</a> 

</body>

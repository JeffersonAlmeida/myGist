<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<h1>Listing Gists</h1>

<table class="list">
  <tr class="row0">
   <th>nome</th>
   <th>codigo</th>
   <th>tags</th>
   <th>linguagem</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>
<tbody>
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
</tbody>
</table>

</body>

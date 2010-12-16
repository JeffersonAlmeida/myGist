<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="<c:url value="/gists"/>" method="post">
  
  <c:if test="${not empty gist.id}">
    <input type="hidden" name="gist.id" value="${gist.id}"/>
    <input type="hidden" name="_method" value="put"/>
  </c:if>

  <div class="field">
    Nome:<br />
    <input type="text" name="gist.nome" value="${gist.nome}"/>
  </div>
  <div class="field">
    Codigo:<br />
    <textarea cols="50" rows="5" name="gist.codigo" id="codigo">${gist.codigo}</textarea>
   
  </div>
  <div class="field">
    Tags:<br />
    <input type="text" name="gist.tags" value="${gist.tags}"/>
  </div>
  <div class="field">
    Linguagem:<br />
    <input type="text" name="gist.linguagem" value="${gist.linguagem}"/>
  </div>
  <div class="actions">
    <button type="submit">send</button>
  </div>
</form>

<a href="<c:url value="/gists"/>">Back</a>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<div class="formulario">
<form id="formulario" name="formulario" action="<c:url value="/gists"/>" method="post">
  
  <fieldset>
  	<legend>Novo Gists</legend>
  <c:if test="${not empty gist.id}">
    <input type="hidden" name="gist.id" value="${gist.id}"/>
    <input type="hidden" name="_method" value="put"/>
  </c:if>
<Br>	
  <div>
    <label class="requiredLabel">Nome:</label>
    <input type="text" name="gist.nome" id="nome" value="${gist.nome}" class="required"/>
  </div><Br>
  <div>
   <label class="requiredLabel"> Codigo</label>
    <textarea class="required" cols="50" rows="10" name="gist.codigo" id="codigo">${gist.codigo}</textarea>
   
  </div><Br>
  <div>
     <label class="requiredLabel">Tags:</label>
    <input class="required" type="text" name="gist.tags" id="tags" value="${gist.tags}"/>
  </div><Br>
  <div>
    <label class="requiredLabel"> Linguagem:</label>
 
    <input type="text" class="required" id="linguagem" name="gist.linguagem" value="${gist.linguagem}"/>
  </div><Br>		
  <div class="actions">
    <button type="submit">send</button>
  </div>
  
  </fieldset>
</form>
</div>

<a href="<c:url value="/gists"/>">Back</a>



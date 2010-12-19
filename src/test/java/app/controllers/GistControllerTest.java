package app.controllers;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import junit.framework.Assert;

import org.junit.Test;

import br.com.caelum.vraptor.util.test.MockResult;
import br.com.caelum.vraptor.util.test.MockValidator;
import br.com.caelum.vraptor.validator.Message;
import br.com.caelum.vraptor.validator.ValidationException;

public class GistControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new GistController(null, null, null));
 	}
	
	@Test public void controllerTest() {
		assertNotNull("put something real.", new GistController(null, null, null));
		MockResult result = new MockResult();
	    MockValidator validator = new MockValidator();
	  
		GistController controller = new GistController(result, repository, validator);
		controller.list(); // vai chamar result.include("gists", algumaCoisa);
		List<Gist> gists = result.included("gists"); // o cast é automático
		Assert.assertNotNull(gists);
 	}
	
	@Test(expected=ValidationException.class)
	public void testaQueVaiDarErroDeValidacao() {	
		GistController controller = new GistController(null, null, new MockValidator());
		controller.newGist();
	}
	
	@Test
	public void testaQueVaiDarErroDeValidacao() {
		GistController controller = new GistController(null,null,new MockValidator());
		try {
			controller.newGist();
			Assert.fail();
		} catch (ValidationException e) {
			List<Message> errors = e.getErrors();
			//asserts nos erros
		}
	}


	

}

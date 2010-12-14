package app.controllers;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class GistControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new GistController(null, null, null));
 	}
}

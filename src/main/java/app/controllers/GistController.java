package app.controllers;

import java.util.List;

import app.models.Gist;
import app.repositories.GistRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class GistController {

	private final Result result;
	private final GistRepository repository;
	private final Validator validator;
	
	public GistController(Result result, GistRepository repository, Validator validator) {
		this.result = result;
		this.repository = repository;
		this.validator = validator;
	}
	
	@Get
	@Path("/gists")
	public List<Gist> index() {
		return repository.findAll();
	}
	
	
	@Post
	@Path("/gists")
	public void create(Gist gist) {
		validator.validate(gist);
		validator.onErrorUsePageOf(this).newGist();
		repository.create(gist);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/gists/new")
	public Gist newGist() {
		return new Gist();
	}
	
	@Put
	@Path("/gists")
	public void update(Gist gist) {
		validator.validate(gist);
		validator.onErrorUsePageOf(this).edit(gist);
		repository.update(gist);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/gists/{gist.id}/edit")
	public Gist edit(Gist gist) {
		return repository.find(gist.getId());
	}

	@Get
	@Path("/gists/{gist.id}")
	public Gist show(Gist gist) {
		return repository.find(gist.getId());
	}

	@Delete
	@Path("/gists/{gist.id}")
	public void destroy(Gist gist) {
		repository.destroy(repository.find(gist.getId()));
		result.redirectTo(this).index();  
	}
	
	@Get
	@Path("/gists_search")
	public void search(String search) {
		result.include("gistList", repository.search(search) );
		/* redireciona o resultado da busca para index.jsp */
		result.forwardTo("WEB-INF/jsp/gist/index.jsp");
	}
	
}

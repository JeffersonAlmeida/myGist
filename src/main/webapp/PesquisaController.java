package app.controllers;

import java.util.List;

import app.models.Pesquisa;
import app.repositories.PesquisaRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class PesquisaController {

	private final Result result;
	private final PesquisaRepository repository;
	private final Validator validator;
	
	public PesquisaController(Result result, PesquisaRepository repository, Validator validator) {
		this.result = result;
		this.repository = repository;
		this.validator = validator;
	}
	
	@Get
	@Path("/pesquisas")
	public List<Pesquisa> index() {
		return repository.findAll();
	}
	
	@Post
	@Path("/pesquisas")
	public void create(Pesquisa pesquisa) {
		validator.validate(pesquisa);
		validator.onErrorUsePageOf(this).newPesquisa();
		repository.create(pesquisa);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/pesquisas/new")
	public Pesquisa newPesquisa() {
		return new Pesquisa();
	}
	
	@Put
	@Path("/pesquisas")
	public void update(Pesquisa pesquisa) {
		validator.validate(pesquisa);
		validator.onErrorUsePageOf(this).edit(pesquisa);
		repository.update(pesquisa);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/pesquisas/{pesquisa.id}/edit")
	public Pesquisa edit(Pesquisa pesquisa) {
		return repository.find(pesquisa.getId());
	}

	@Get
	@Path("/pesquisas/{pesquisa.id}")
	public Pesquisa show(Pesquisa pesquisa) {
		return repository.find(pesquisa.getId());
	}

	@Delete
	@Path("/pesquisas/{pesquisa.id}")
	public void destroy(Pesquisa pesquisa) {
		repository.destroy(repository.find(pesquisa.getId()));
		result.redirectTo(this).index();  
	}
	
}

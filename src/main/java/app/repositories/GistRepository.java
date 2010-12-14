package app.repositories;

import java.util.List;

import app.models.Gist;

public interface GistRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Gist entity);
	
	void update(Gist entity);
	
	void destroy(Gist entity);
	
	Gist find(Long id);
	
	List<Gist> findAll();

	List<Gist> search(String search);

}

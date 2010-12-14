package app.repositories;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import app.models.Gist;

@Component
public class GistRepositoryImpl 
    extends Repository<Gist, Long>
    implements GistRepository {

	public GistRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}

	@Override
	public List<Gist> search(String search) {
		return entityManager.createQuery("from Gist where nome=:search or tags=:search")
		 .setParameter("search", search).getResultList();
	}
}

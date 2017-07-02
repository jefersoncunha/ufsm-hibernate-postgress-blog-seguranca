package br.ufsm.csi.seguranca.dao;

import br.ufsm.csi.seguranca.model.Comentario;
import br.ufsm.csi.seguranca.model.Post;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.Collection;

;

@Repository
public class ComentarioDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public Collection<Comentario> getComentariosPost(Post post) throws SQLException{
		return sessionFactory.getCurrentSession().createCriteria(Comentario.class).add(Restrictions.eq("post", post)).list();
	}
	
	@Transactional
	public void inserirComentario(Comentario comentario)throws Exception{		
		sessionFactory.getCurrentSession().save(comentario);
	}
	
}

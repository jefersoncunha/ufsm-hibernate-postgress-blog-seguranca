package br.ufsm.csi.seguranca.dao;

import br.ufsm.csi.seguranca.model.Usuario;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.Collection;

@Repository
public class UsuarioDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void inserirUsuario(Usuario usuario)throws Exception{		
		sessionFactory.getCurrentSession().save(usuario);
	}
	
	@Transactional
	public Usuario login(String login)throws Exception{
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Usuario.class);
		crit.add(Restrictions.eq("loginUsuario", login));
		return (Usuario) crit.uniqueResult();
	}
	
		
	@Transactional
	public Collection<Usuario> getUsuarios() throws SQLException{
		return sessionFactory.getCurrentSession().createCriteria(Usuario.class).list();
	}
	
	@Transactional
	public Usuario buscarUsuarioPeloId(Long id) throws Exception{
		return (Usuario) sessionFactory.getCurrentSession().get(Usuario.class, id);
	}

	
	

}
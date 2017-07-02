package br.ufsm.csi.seguranca.controller;

import br.ufsm.csi.seguranca.dao.ComentarioDAO;
import br.ufsm.csi.seguranca.dao.PostDAO;
import br.ufsm.csi.seguranca.model.Comentario;
import br.ufsm.csi.seguranca.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.transaction.Transactional;
import java.util.Map;

//import br.ufsm.csi.dao.PostDAO;

@Controller
public class ComentarioController {

	@Autowired
	private ComentarioDAO daoComentario;	
	
	@Autowired
	private PostDAO daoPost;
	
	@RequestMapping(value="cadastro-comentario.html", method = RequestMethod.POST)
	@Transactional


	public ModelAndView cadastro(Long idPost, Comentario comentario) throws Exception{
		ModelAndView mv = new ModelAndView("redirect: todosPosts.html");
		Post post = new Post();
		post = daoPost.getPostId(idPost);
		
		comentario.setPost(post);		
		daoComentario.inserirComentario(comentario);								
		 
		mv.addObject("msg", "Comentario cadastrado com sucesso!");	
		return mv;
	}
	
	@RequestMapping(value="cadastro-comentario.html", method = RequestMethod.GET)
	public String carregaUsuario(Map<String, Object> model) throws Exception {		
			model.put("comentarios", new Comentario());												
		return "cadastro-comentario";
	}
	
}

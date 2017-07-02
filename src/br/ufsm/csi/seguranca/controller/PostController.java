package br.ufsm.csi.seguranca.controller;

import br.ufsm.csi.seguranca.dao.ComentarioDAO;
import br.ufsm.csi.seguranca.dao.PostDAO;
import br.ufsm.csi.seguranca.model.Comentario;
import br.ufsm.csi.seguranca.model.Post;
import br.ufsm.csi.seguranca.model.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;

@Controller
public class PostController {

	@Autowired
	private PostDAO daoPost;
	
	@Autowired
	private ComentarioDAO daoComentario;


    @RequestMapping("adminTodosPosts.html")
    public ModelAndView paginaAdminPosts(HttpServletRequest request,Map<String, Object> model) throws SQLException{
        Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
        ModelAndView mv = new ModelAndView("adminTodosPosts.html");
        if(u.getTipoUsuario() == 1){
            Collection<Post> posts = daoPost.getPosts();
            model.put("postsAdmin", posts);
            mv = new ModelAndView("adminTodosPosts");
            model.put("posts", new Post());
        }
        else{
            mv.addObject("msg", "ERRO: SEM ACESSO!");
        }
        return mv;
    }

    @RequestMapping("adminMeusPosts.html")
	public ModelAndView paginaPosts(HttpServletRequest request,Map<String, Object> model) throws SQLException{
		Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
		ModelAndView mv = new ModelAndView("adminMeusPosts.html");
		if(u != null){

		    if(u.getTipoUsuario() == 1) {
                mv.addObject("isAdmin", 1);
            }

			Collection<Post> posts = daoPost.getPostsUsuario(u);
			model.put("postsUsuario", posts);
			mv = new ModelAndView("adminMeusPosts");
			model.put("posts", new Post());
		}
		else{
			mv.addObject("msg", "ERRO: SEM ACESSO!");
		}
		return mv;
	}


    @RequestMapping(value="cadastro-post.html", method = RequestMethod.POST)
    @Transactional
    public ModelAndView cadastro(Post post, HttpServletRequest request) throws Exception{
        ModelAndView mv = new ModelAndView("redirect: adminMeusPosts.html");
        Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
        if(u.isAtivo()){
            if(post.getIdPost() == null){
                post.setUsuario(u);
                Date d = new Date(new java.util.Date().getTime());
                post.setDataPost(d);
                daoPost.inserirPost(post);

                mv.addObject("msg", "Post cadastrado com sucesso!");
            }
            else{
                Post postPersiste = daoPost.getPostId(post.getIdPost());
                if(u.getTipoUsuario() == 1 || u.getIdUsuario().equals(postPersiste.getUsuario().getIdUsuario())){

                    postPersiste.setTextoPost(post.getTextoPost());
                    daoPost.alterarPost(postPersiste);
                    mv.addObject("msg", "Post alterado com sucesso!");
                }
                else{
                    mv = new ModelAndView("erro");
                    mv.addObject("msg", "Sem Acesso!");
                }
            }
        }
        else{
            mv = new ModelAndView("erro");
            mv.addObject("msg", "Sem Acesso!");
        }
        return mv;
    }

    @RequestMapping(value="cadastro-post.html", method = RequestMethod.GET)
    public String carregaUsuario(Long id, Map<String, Object> model) throws Exception {

        if(id == null){
            model.put("posts", new Usuario());
        }
        else{
            Post postPersiste = new Post();
            model.put("posts", postPersiste);
        }
        return "cadastro-post";
    }

    @RequestMapping(value="alterarPost.html", method = RequestMethod.GET)
    public ModelAndView alteraUsuario(Long id, Map<String, Object> model, HttpServletRequest request) throws Exception {
        Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
        ModelAndView mv = new ModelAndView("adminAlteraPost");
        Post post = new Post();
        post = daoPost.getPostId(id);
        System.out.println(post.getUsuario().getIdUsuario());
        if(u.getTipoUsuario() == 1 || u.getIdUsuario().equals(post.getUsuario().getIdUsuario())){
            model.put("posts", post);
        }
        else{
            mv = new ModelAndView("erro");
            mv.addObject("msg", "Sem Acesso!");
        }
        return mv;
    }

    @RequestMapping(value="deletaPost.html")
    public ModelAndView excluirPost(Long id, HttpServletRequest request, Map<String, Object> model) throws Exception{
        ModelAndView mv = new ModelAndView("redirect: todosPosts.html");
        Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
        Post post = new Post();
        post = daoPost.getPostId(id);
        if(u.getTipoUsuario() == 1 || u.getIdUsuario().equals(post.getUsuario().getIdUsuario())){
            daoPost.excluirPost(post);
            mv.addObject("msg", "Post deletado com sucesso!");
        }
        else{
            mv = new ModelAndView("erro");
            mv.addObject("msg", "Sem acesso");
        }


        return mv;
    }



    @RequestMapping(value="verPost.html")
	public ModelAndView verPost(Long id, HttpServletRequest request, Map<String, Object> model) throws Exception{
		ModelAndView mv = new ModelAndView("verPost");
		Post post = new Post();
		post = daoPost.getPostId(id);
		model.put("post", post);
		Collection<Comentario> comentarios = daoComentario.getComentariosPost(post);
		model.put("comentariosPost", comentarios);
		model.put("comentarios", new Comentario());
		
		return mv;
	}


	@RequestMapping(value="todosPosts.html")
	public ModelAndView todosPost(HttpServletRequest request, Map<String, Object> model) throws Exception{

		ModelAndView mv = new ModelAndView("todosPosts");
        mv = new ModelAndView("todosPosts");
		Collection<Post> posts = daoPost.getPosts();
		model.put("posts", posts);
		
		return mv;
	}

    @RequestMapping(value="home.html")
    public ModelAndView home(HttpServletRequest request, Map<String, Object> model) throws Exception{

        ModelAndView mv = new ModelAndView("home");
        Collection<Post> posts = daoPost.getPosts10();
        model.put("posts", posts);

        return mv;
    }


	
}

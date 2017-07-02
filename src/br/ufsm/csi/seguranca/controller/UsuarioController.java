package br.ufsm.csi.seguranca.controller;

import br.ufsm.csi.seguranca.dao.PostDAO;
import br.ufsm.csi.seguranca.dao.UsuarioDAO;
import br.ufsm.csi.seguranca.model.Post;
import br.ufsm.csi.seguranca.model.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.security.MessageDigest;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;

//import org.springframework.web.portlet.ModelAndView;


@Controller
public class UsuarioController {

    @Autowired
    private UsuarioDAO dao;

    @Autowired
    private PostDAO daoPost;

    @RequestMapping("login.html")
    @Transactional
    public ModelAndView login(String login, String senha, String form, HttpServletRequest request,
                              Map<String, Object> model, HttpSession session )throws SQLException {

        session.invalidate(); // invalidar a sessão ja existente

        BASE64Decoder decoder = new BASE64Decoder();
        byte[] senha2 = null;
        byte[] crip = null;
        MessageDigest md;

        ModelAndView mv = new ModelAndView("login");

        if (form != null && login != null && login.length() > 0 && senha != null && senha.length() > 0) try {
            Usuario u = dao.login(login);
            if (u != null) {

                senha2 = decoder.decodeBuffer(senha);
                md = MessageDigest.getInstance("SHA-1");
                crip = md.digest(senha2);
                senha = new sun.misc.BASE64Encoder().encode(crip);

                if (senha.equals(u.getSenhaUsuario())) {
                    u.setTentativas(0);
                    if (u.isAtivo()) {
                        request.getSession().setAttribute("usuario", u);

                        System.out.println("Entro em: adminHome ");
                        mv = new ModelAndView("adminHome");

                    } else {
                        System.out.println("Erro ao realizar login: Usuario Desativado");
                        mv.addObject("msg", "Erro ao realizar login: Usuario Desativado");
                    }
                } else {
                    System.out.println("Erro login senha !=");
                    if (u.getTentativas() > 5) {
                        u.setAtivo(false);
                        mv.addObject("msg", "Erro ao realizar login!");
                    } else {
                        u.setTentativas(u.getTentativas() + 1);
                        mv.addObject("msg", "Erro ao realizar login!");
                    }
                }
            } else {
                mv.addObject("msg", "Erro ao realizar login!");
            }

        } catch (Exception e) {
        }
        System.out.println("Retornou");
        return mv;
    }

    @RequestMapping("logout.html")
    public ModelAndView logout(HttpServletRequest request){
        ModelAndView mv =new ModelAndView("login");
        request.getSession().invalidate();
        return mv;
    }

    @RequestMapping("usuarios.html")
    public ModelAndView buscaPacientes(HttpServletRequest request){
        Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
        ModelAndView mv;
        if(u.getTipoUsuario() == 1){  //1 - administrador
            mv = new ModelAndView("adminUsuarios");
        }
        else{  // 2 - usuario Comun
            mv = new ModelAndView("erro");
        }
        return mv;
    }

    @RequestMapping("GerenciaUsuarios.html")
    public ModelAndView paginaUsuarios(HttpServletRequest request,Map<String, Object> model) throws SQLException{
        Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
        ModelAndView mv = new ModelAndView("adminUsuarios");
        Collection<Usuario> usuarios = dao.getUsuarios();
        model.put("usuariosCadastrados", usuarios);

        if(u.getTipoUsuario() == 1){
            mv = new ModelAndView("adminUsuarios");
        }else if(u.getTipoUsuario() == 2){
            mv = new ModelAndView("adminHome");
            mv.addObject("msg", "ERRO: TAREFA DO ADMINISTRADOR!");
        }
        model.put("usuarios", new Usuario());
        return mv;
    }

    @RequestMapping(value="cadastro-usuario.html", method = RequestMethod.POST)
    @Transactional
    public ModelAndView cadastro(Usuario usuario, HttpServletRequest request) throws Exception{
        ModelAndView mv = new ModelAndView("redirect: GerenciaUsuarios.html");
        Usuario	u = (Usuario)request.getSession().getAttribute("usuario");
        if(u.getTipoUsuario() == 1){

            BASE64Decoder decoder = new BASE64Decoder();
            byte[] senha2 = null;
            byte[] crip = null;
            MessageDigest md;

            senha2 = decoder.decodeBuffer(usuario.getSenhaUsuario());
            md = MessageDigest.getInstance("SHA-1");
            crip = md.digest(senha2);
            usuario.setSenhaUsuario(new sun.misc.BASE64Encoder().encode(crip));

            usuario.setAtivo(true);
            usuario.setTentativas(0);
            usuario.setTipoUsuario(2);
            dao.inserirUsuario(usuario);

            mv.addObject("msg", "Usuario cadastrado com sucesso!");
        }
        else{
            mv = new ModelAndView("erro");
            mv.addObject("msg", "Erro: SEM ACESSO!");
        }
        return mv;
    }

    @RequestMapping(value="cadastro-usuario.html", method = RequestMethod.GET)
    public String carregaUsuario(Map<String, Object> model) throws Exception {
        model.put("usuarios", new Usuario());
        return "cadastro-usuario";
    }

    @RequestMapping(value="ativaUsuario.html")
    @Transactional
    public ModelAndView ativaUsuario(String id, HttpServletRequest request) throws Exception{
        ModelAndView mv = new ModelAndView("redirect: GerenciaUsuarios.html");
        Usuario	us = (Usuario)request.getSession().getAttribute("usuario");
        Usuario u = dao.buscarUsuarioPeloId(Long.valueOf(id));

        if(us.getTipoUsuario() == 1){
            if(u.isAtivo()){
                u.setAtivo(false);
            }
            else{
                u.setAtivo(true);
            }
        }
        else{
            mv = new ModelAndView("erro");
            mv.addObject("msg", "Erro: SEM ACESSO!");
        }

        return mv;
    }

    @RequestMapping("adminHome.html")
    public ModelAndView paginaAdm(HttpServletRequest request) {
        Usuario	us = (Usuario)request.getSession().getAttribute("usuario");
        ModelAndView mv = new ModelAndView("erro");

        if(us.getTipoUsuario() == 1){
            mv = new ModelAndView("adminHome");
            return mv;
        }
        else{
            mv = new ModelAndView("erro");
            mv.addObject("msg", "Erro: SEM ACESSO!");
        }
        return mv;
    }

}

package com.RS.Controller;

import java.text.DateFormat;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RS.modal.*;
import com.RS.repository.UserRepository;
import com.RS.services.ClassementService;
import com.RS.services.UserService;

@Controller
public class Contoller {

	@Autowired
	private ClassementService classementservice;
	@Autowired
	private UserService userService;
	Date actuelle = new Date();
	DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	String dat = dateFormat.format(actuelle);

	@RequestMapping("/")
	public String index(HttpServletRequest request, HttpSession session) {

		List<Classement> listAll = new ArrayList<Classement>();
		listAll.addAll(classementservice.afficherclassement());
		Collections.sort(listAll, new SortByScore());
		request.setAttribute("list", listAll);

		if (session.getAttribute("admin") != null ) {
			if(listAll!=null) {
			session.setAttribute("liste", listAll);}

			return "admin";
		} else if (session.getAttribute("user") != null) {

			return "user";
		}

		else {
			return "index";
		}
	}

	@RequestMapping("/Login")
	public ModelAndView Login(@ModelAttribute User user, HttpServletRequest request, HttpSession session,
			RedirectAttributes redir) {

		ModelAndView model = new ModelAndView();
		if (userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null) {

			User test = userService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
			List<Classement> listAll = new ArrayList<Classement>();
			listAll.addAll(classementservice.afficherclassement());
			Collections.sort(listAll, new SortByScore());

			if (user.getUsername().equals("Admin")) {

				model.setViewName("redirect:/admin");
				session.setAttribute("admin", test);
				session.setAttribute("date", dat);
				session.setAttribute("list", listAll);
				return model;
			} else {
				model.setViewName("redirect:/user");
				session.setAttribute("Id1", test.getId());
				request.setAttribute("Id", test.getId());
				session.setAttribute("user", test);
				session.setAttribute("date", dat);
				return model;
			}
		}

		else {
			model.setViewName("redirect:/");
			redir.addFlashAttribute("add", "add");
			session.setAttribute("error", "Nom d'utilisateur ou mot de passe Invalide");
			List<Classement> listAll = new ArrayList<Classement>();
			listAll.addAll(classementservice.afficherclassement());
			Collections.sort(listAll, new SortByScore());
			session.setAttribute("list", listAll);
			return model;

		}
	}

	@RequestMapping("/user")
	public String user() {
		return "user";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping("/adduser")
	public String saveUser(@ModelAttribute User newuser, BindingResult bindingresult, HttpServletRequest request) {
		if (userService.findByUsername(newuser.getUsername()) != null) {
			request.setAttribute("action1", "ce nom d'utilisateur est déjà utilisé");
		} else {
			userService.adduser(newuser);
			request.setAttribute("action2", "L'utilisateur a été enregistré");
		}
		request.setAttribute("add", "add");
		return "admin";
	}

	@GetMapping(path = "/viewmore/{classId}")
	public String getAllClassById(@PathVariable(name = "classId") int id, HttpServletRequest request) {
		List<Classement> listAll = new ArrayList<Classement>();
		listAll.addAll(classementservice.afficherclassementById(id));

		request.setAttribute("viewMore", listAll);
		return "PlusInfo";
	}

	@GetMapping(path = "/admin_plusInfo/{classId}")
	public String getAllClassAdminById(@PathVariable(name = "classId") int id, HttpServletRequest request) {
		List<Classement> listAll = new ArrayList<Classement>();
		listAll.addAll(classementservice.afficherclassementById(id));

		request.setAttribute("viewMore", listAll);
		return "admin_plusInfo";
	}

	@RequestMapping(value = "/vosinfo")
	public String searchProduct(HttpServletRequest request, HttpSession session) {

		List<Classement> liste = new ArrayList<Classement>();
		session = request.getSession();
		liste.addAll(classementservice.afficherclassementById((int) session.getAttribute("Id1")));

		request.setAttribute("viewinfo", liste);
		return "vosinformation";
	}

	@GetMapping(path = "/getAllClass")
	public String getAllClass(HttpSession session) {
		List<Classement> listAll = new ArrayList<Classement>();
		listAll.addAll(classementservice.afficherclassement());
		Collections.sort(listAll, new SortByScore());
		if(listAll!=null) {
		session.setAttribute("list", listAll);}

		return "Classement";
	}
	@GetMapping(path = "/apro")
	public String apro() {
		return "Apropos";
	}
	/*
	 * @GetMapping(path="/AjouterClass") public String AjouterClass(@ModelAttribute
	 * Classement c){ classementservice.saveClassement(c); return null; }
	 */
	
	
	@GetMapping(path = "/retourvie")
	public String retourvie(HttpServletRequest request, HttpSession session) {
	
		return "VieEstudiantine";
	}
	@GetMapping(path = "/retourrhm")
	public String retourrhm(HttpServletRequest request, HttpSession session) {
	
		return "rhm";
	}
	
	@GetMapping(path = "/retourinfo")
	public String retourinfo(HttpServletRequest request, HttpSession session) {
	
		return "info";
	}
	
	@GetMapping(path = "/formulaire")
	public String Formulaire(HttpServletRequest request, HttpSession session) {
		// System.out.println(classementservice.afficherclassementById(id).toString());
	
		session.setAttribute("schoolname",request.getParameterValues(""));
		session.setAttribute("schoolcity",request.getParameterValues(""));
		session.setAttribute("schooldesc",request.getParameterValues(""));
		return "info";
	}

	@GetMapping(path = "/VieEstudiantine")
	public String VieEstudiantine(HttpServletRequest request, HttpSession session) {
		VieEstudiantine vie = new VieEstudiantine();
		vie.setTotal_Prix(Integer.parseInt(request.getParameter("Prix_gagne")));
		vie.setNombre_club(Integer.parseInt(request.getParameter("club")));
		vie.setAdE(request.getParameterValues("ADE")[0]);

		vie.setAssistance_medAnd(request.getParameterValues("hand")[0]);

		vie.setAssistance_medEt(request.getParameterValues("etud")[0]);

		vie.setCeremonie(request.getParameterValues("ceremonie")[0]);
		vie.setStartup(request.getParameterValues("startup")[0]);
		vie.setChoix(request.getParameterValues("etab"));
		ConditionVieEs est = new ConditionVieEs();
		session.setAttribute("VieEst", est.rank(vie));

		return "rhm";
	}

	@GetMapping(path = "/rhm")
	public String rhm(HttpServletRequest request, HttpSession session) {
		rhm hm = new rhm();

		hm.setNbr_etudiant(Integer.parseInt(request.getParameter("Etudiant")));
		hm.setNbr_fct_adm(Integer.parseInt(request.getParameter("Adm")));
		hm.setNbr_fct_tech(Integer.parseInt(request.getParameter("Tech")));
		hm.setNbr_PA(Integer.parseInt(request.getParameter("PA")));
		hm.setNbr_pc(Integer.parseInt(request.getParameter("PC")));
		hm.setNbr_PES(Integer.parseInt(request.getParameter("PES")));
		hm.setNbr_PH(Integer.parseInt(request.getParameter("PH")));
		hm.setSuperficie(Integer.parseInt(request.getParameter("Superficie")));
		hm.setAcces_internet(request.getParameterValues("Internet")[0]);
		hm.setTransport(request.getParameterValues("Transport")[0]);

		ConditionRHM rhm = new ConditionRHM();
		session.setAttribute("RscHumaineMateriel", rhm.rank(hm));
		return "recherche";
	}

	@GetMapping(path = "/info")
	public String info(HttpServletRequest request, HttpSession session) {
		info i = new info();
		i.setNom(request.getParameter("nom"));
		i.setVille(request.getParameter("ville"));
		i.setDescription(request.getParameter("desc"));
		session.setAttribute("inf", i);
session.setAttribute("ville", request.getParameter("ville"));
session.setAttribute("nom", request.getParameter("nom"));
session.setAttribute("desc", request.getParameter("desc"));
		return "formation";
	}
	@GetMapping(path ="/formation")
	public String formation(HttpServletRequest request, HttpSession session) {
		Formation form=new Formation ();
		form.setAtelier(request.getParameterValues("Atelier")[0]);
		
		form.setBourse(request.getParameterValues("bourse")[0]);
		
		form.setCertification(request.getParameterValues("cert")[0]);
		form.setBudget_para(request.getParameterValues("budget")[0]);
		form.setContact_lau(request.getParameterValues("contacte")[0]);
		form.setConvon_etr(request.getParameterValues("convention")[0]);
		form.setModifi_fliere(request.getParameterValues("modif")[0]);
		form.setEvaluation_inst(request.getParameterValues("eva")[0]);
		form.setRapport(request.getParameterValues("rapport")[0]);
		form.setStr_acceuil(request.getParameterValues("accueil")[0]);
		form.setWorkshop(request.getParameterValues("workshop")[0]);
		form.setSuivie_ett(request.getParameterValues("suivi")[0]);
		form.setStr_stage(request.getParameterValues("stage")[0]);
		form.setConf(request.getParameterValues("conference")[0]);
		form.setCom_etudiant(request.getParameterValues("Comm"));
		ConditionFormation condition=new ConditionFormation();
		session.setAttribute("formation", condition.rank(form) );

		return "VieEstudiantine";
	}
	
	@GetMapping(path = "/recherche")
	public String recherche(HttpServletRequest request, HttpSession session) {
		int score=0;
		recherche r = new recherche();
		r.setFormation_doctorat(request.getParameterValues("f-doctorat")[0]);
		r.setNombre_doctorant(Integer.parseInt(request.getParameter("nb_doctorant")));
		r.setNombre_Enseignants_chercheurs(Integer.parseInt(request.getParameter("ens_cher")));
		r.setNB_Articles_indexés(Integer.parseInt(request.getParameter("article_index")));
		r.setPrix_gagnée(Integer.parseInt(request.getParameter("prix-gagne")));

		ConditionRecherche cr = new ConditionRecherche();

		session.setAttribute("recherche", cr.rank(r));
		Classement bean =new Classement();
		int f=0;
		User user=new User();
		user.setId((int) session.getAttribute("Id1"));
		bean.setIduser(user);
		bean.setVille((String)session.getAttribute("ville"));
		bean.setDescription((String)session.getAttribute("desc"));
		bean.setNomEtablissement((String)session.getAttribute("nom"));
		bean.setRhm((int)session.getAttribute("RscHumaineMateriel"));
		bean.setFormation((int)session.getAttribute("formation"));
		bean.setRecherche((int)session.getAttribute("recherche"));
		bean.setVieEtudiante((int)session.getAttribute("VieEst"));
		f=((int)session.getAttribute("RscHumaineMateriel")*25+(int)session.getAttribute("formation")*40+(int)session.getAttribute("recherche")*10+(int)session.getAttribute("VieEst")*25)/100;
		bean.setScoretotal(f);
			classementservice.saveClassement(bean);
		request.setAttribute("Succes", "Merci, vos information ont été enregistrer . ");
		
		
		return "user";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpSession session) {

		session.setAttribute("admin", null);
		session.setAttribute("user", null);
		session.invalidate();
		return "redirect:/";
	} 
	
	

}
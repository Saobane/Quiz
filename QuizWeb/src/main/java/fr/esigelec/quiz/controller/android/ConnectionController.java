package fr.esigelec.quiz.controller.android;

/**
 * @author Simon
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.esigelec.quiz.dao.PersonneDAOImpl;
import fr.esigelec.quiz.model.Personne;

@Controller
public class ConnectionController {

	@RequestMapping(value = "/android/connexion", method = RequestMethod.POST)
	public String connection(@RequestParam("email") String email, @RequestParam("password") String password) {
		String retourJson = "";
		PersonneDAOImpl pDao = new PersonneDAOImpl();
		Personne p;
		
		//On test si l'utilisateur existe dans la base de donn�es
		if(pDao.verifPersonne(email, password) != -1){
			//Si l'utilisateur existe on r�cup�re son id
			p = pDao.getPersonneByEmail(email);
			retourJson = "{'status':'OK', 'message':'utilisateur connect�', 'id':" + p.getId() + "}";
		} else {
			retourJson = "{'status':'KO', 'message':'utilisateur inconnu'}";
		}
		
		return retourJson;
	}

}

package fr.esigelec.quiz.controller.android;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConnectionController {

	@RequestMapping(value = "/android/connection", method = RequestMethod.POST)
	public String connection(@RequestParam("email") String email, @RequestParam("password") String password) {
		String retourJson = "";
			
		//TODO mettre a jour avec les m�thodes de PersonnesDAO
		//On test si l'utilisateur poss�de un compte dans la base de donn�es
		if(true){
			retourJson = "{'status':'OK', 'userId':'userId'}";
		} else {
			retourJson = "{'status':'KO', 'message':'utilisateur inconnu'}";
		}
		
		return retourJson;
	}

}

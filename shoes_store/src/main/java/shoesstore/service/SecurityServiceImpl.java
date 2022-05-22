package shoesstore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;

@Controller
public class SecurityServiceImpl implements SecurityService{
	
	 	    private AuthenticationManager authenticationManager= new AuthenticationManager() {
			
			@Override
			public Authentication authenticate(Authentication authentication) throws AuthenticationException {
				// TODO Auto-generated method stub
				return null;
			}
		};
	 
	  
	    private UserDetailsServiceImpl userDetailsService = new UserDetailsServiceImpl();


	@Override
	public String findLoggedInUsername() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void autoLogin(String email, String password) {
		  UserDetails userDetails = userDetailsService.loadUserByUsername(email);
	        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());

	        authenticationManager.authenticate(usernamePasswordAuthenticationToken);

	        if (usernamePasswordAuthenticationToken.isAuthenticated()) {
	            SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
	            System.out.println("Auto login %s successfully!" + email);
	        }
	    }
		
	}

	

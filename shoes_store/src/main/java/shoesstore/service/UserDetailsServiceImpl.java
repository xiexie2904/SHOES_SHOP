package shoesstore.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import shoesstore.dao.BaseDaoImpl;
import shoesstore.entities.Paging;
import shoesstore.entities.User;

public class UserDetailsServiceImpl<E,ID> implements BaseSerivce<E, ID> {

private final static Logger log = Logger.getLogger(BaseDaoImpl.class);
	
	
	@Autowired
	private SessionFactory sessionFactory;

	
	@Override
	public List<E> findAll(Paging paging) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public E findById(Class<E> e, ID id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<E> findByProperty(String property, Object value) {
		log.info("find by property "+property+" "+value.toString());
		StringBuilder query = new StringBuilder("");
		query.append("from ").append(getGenericName()).append(" as model where model.").append(property).append("=?");
		Query<E> result = sessionFactory.getCurrentSession()
										.createQuery(query.toString());

		System.out.println(result.list());
		return result.list();
	}
	

    public UserDetails loadUserByUsername(String username) {
    	List<User> user = (List<User>)findByProperty("email", username);
//        if (user == null) throw new UsernameNotFoundException(username);

        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        
        grantedAuthorities.add(new SimpleGrantedAuthority(user.get(0).getRole().getName()));
 
        return new org.springframework.security.core.userdetails.User(user.get(0).getEmail(), user.get(0).getPassword(), grantedAuthorities);
    }

	@Override
	public int insert(E instance) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(E instance) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(E instance) {
		// TODO Auto-generated method stub
		
	}
	public String getGenericName() {
		String s = getClass().getGenericSuperclass().toString();
		Pattern pattern = Pattern.compile("\\<(.*?)\\,");
		Matcher m = pattern.matcher(s);
		String generic="null";
		if(m.find()) {
			generic = m.group(1);
		}
		return generic;
	}

}

package shoesstore.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column(unique = true,nullable = false,length = 50)
	private String name;

	@OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
	private Set<Product> products = new HashSet<Product>();
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(String name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public Set<Product> getProducts() {
		return products;
	}

	public void setProduct(Set<Product> products) {
		this.products = products;
	}
	
}

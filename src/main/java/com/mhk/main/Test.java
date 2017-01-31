package com.mhk.main;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mhk.model.Cart;
import com.mhk.model.Item;
import com.mhk.util.HibernateUtil;

public class Test {
	public static void main(String[] args) {

		/* Start Fetching Data */
		Session session = HibernateUtil.getSessionFactory().openSession();
		System.out.println(session);
		Cart cart = (Cart) session.load(Cart.class, 1l);
		System.out.println(cart);
		/* END Fetching Data */

		
		/* Start Inserting Data */
		Item item1 = new Item();
		item1.setName("Television");
		item1.setQuantity(4);

		Item item2 = new Item();
		item2.setName("Toy");
		item2.setQuantity(2);

		Set<Item> items = new HashSet<Item>();
		items.add(item1);
		items.add(item2);

		Cart ebayCart = new Cart();
		ebayCart.setName("Ebay");
		ebayCart.setItems(items);

		Transaction transaction = session.beginTransaction();
		try {
			session.save(ebayCart);
//			Note : As we mentioned cascade="all", Item objects will get saved along with Cart Object.
//			Same applied while 'deletion', i.e., if we delete Cart object then referenced Item objects get deleted.
			transaction.commit();
			/* END Inserting Data */
			
			System.out.println("Inserted Successfully");
			System.out.println("Inserted Cart ID : "+ebayCart.getId());
			System.out.println(ebayCart);
		} finally {
			session.clear();
		}
	}
}

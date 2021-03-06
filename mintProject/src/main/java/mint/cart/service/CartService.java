package mint.cart.service;

import java.util.List;
import java.util.Map;

import mint.product.bean.ProductDTO;

public interface CartService {
	
	public List<Map<String,String>> getCartList(Map<String, String> map);

	public int cartListDelete(Map<String, String> map);

	public int getSameCart(Map<String, String> map);

	public int addCartProduct(Map<String, String> map);

	public int cartSoldOutDelete(Map<String, Object> map);

}

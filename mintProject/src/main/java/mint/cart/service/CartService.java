package mint.cart.service;

import java.util.List;
import java.util.Map;

import mint.product.bean.ProductDTO;

public interface CartService {
	
	public List<ProductDTO> getCartList(Map<String, String> map);

	public void cartListDelete(Map<String, String> map);

}

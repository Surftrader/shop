package edu.karazin.shop.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import edu.karazin.shop.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	// TODO: Move data to Data Base
	private static final List<Product> PRODUCTS = Arrays.asList(
			new Product(1L, "apple", "fruit"),
			new Product(2L, "apricot", "fruit"),
			new Product(3L, "banana", "fruit"),
			new Product(4L, "grape", "berry"),
			new Product(5L, "cherry", "berry")
	);

	@Override
	public List<Product> filter(String searchText) {
		if (searchText == null || searchText.trim().isEmpty()) {
			return PRODUCTS;
		}

		List<Product> results = new ArrayList<>();
		for (Product p : PRODUCTS) {
			if (containsWithNullCheck(p.getTitle(), searchText) || containsWithNullCheck(p.getDescription(), searchText)) {
				results.add(p);
			}
		}
		return results;
	}

	private boolean containsWithNullCheck(String source, String searchText) {
		if (source == null || source.trim().isEmpty()) {
			return false;
		}
		return source.toLowerCase().contains(searchText.toLowerCase());
	}
}

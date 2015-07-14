package net.thucydides.showcase.cucumber.steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;
import net.serenitybdd.core.Serenity;
import net.thucydides.core.annotations.Steps;
import net.thucydides.showcase.cucumber.model.ListingItem;
import net.thucydides.showcase.cucumber.steps.serenity.BuyerSteps;

import static net.thucydides.showcase.cucumber.model.SessionVariables.SELECTED_LISTING;

/**
 * Created by john on 12/11/14.
 */
public class ShoppingCartScenarioSteps {

	@Steps
	BuyerSteps buyer;

	@Quando("I add it to the cart")
	public void addToCart() {
		buyer.adds_current_listing_to_cart();
	}

	@Entao("the item should appear in the cart")
	public void shouldSeeSelectedItemInCart() {
		ListingItem selectedItem = (ListingItem) Serenity.getCurrentSession().get(SELECTED_LISTING);
		buyer.should_see_item_in_cart(selectedItem);
	}

	@Entao("the shipping cost should be included in the total price")
	public void shouldIncludeShippingCost() {
		ListingItem selectedItem = (ListingItem) Serenity.getCurrentSession().get(SELECTED_LISTING);
		buyer.should_see_total_including_shipping_for(selectedItem);
	}

	double itemCost;

	@Dado("I have selected an item that costs (.*)")
	public void itemCosts(double cost) {
		itemCost = cost;
	}

	@Quando("I review the total price")
	public void reviewTotalPrice() {
	}

	@Entao("the price should be (.*) including (.*) tax")
	public void priceShouldBe(double total, double tax) {
	}

}

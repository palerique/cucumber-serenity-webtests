package net.thucydides.showcase.cucumber.steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;
import net.serenitybdd.core.Serenity;
import net.thucydides.core.annotations.Steps;
import net.thucydides.showcase.cucumber.model.ListingItem;
import net.thucydides.showcase.cucumber.steps.serenity.BuyerSteps;

import static net.thucydides.showcase.cucumber.model.SessionVariables.SELECTED_LISTING;

public class DisplayProductDetailsScenarioSteps {

	@Steps
	BuyerSteps buyer;

	@Dado("I have searched for '(.*)' in my region")
	public void DadoIHaveSearchedFor(String searchTerm) {
		buyer.opens_home_page();
		buyer.searches_by_keyword(searchTerm);
		buyer.filters_by_local_region();
	}

	@Quando("I (?:have selected|select) item (\\d+)")
	public void QuandoISelectListingItem(int number) {
		ListingItem selectedListingItem = buyer.selects_listing(number);
		Serenity.setSessionVariable(SELECTED_LISTING).to(selectedListingItem);
	}

	@Entao("I should see product description and price on the details page")
	public void EntaoIShouldSeeProductDescriptionAndPriceOnTheDetailsPage() {
		ListingItem selectedListingItem = (ListingItem) Serenity.sessionVariableCalled(SELECTED_LISTING);
		buyer.should_see_product_details_for(selectedListingItem);
	}

	@Entao("I should see a product rating")
	public void shouldSeeProductRating() {
		buyer.should_see_product_rating();
	}

	@Entao("I should see social media links")
	public void shouldSeeSocialMediaLinks() {
		buyer.should_see_facebook_link();
		buyer.should_see_twitter_link();
		buyer.should_see_tumblr_link();
	}
}

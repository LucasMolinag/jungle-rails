describe('Home Page', () => {
  it('accesses the home page', () => {
    cy.visit('/');
  });
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("Click a product and get redirected to the product page", () => {
    cy.get(".products article").first().click();

    cy.url().should('include', '/products/')
  });
});

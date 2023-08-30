describe("Jungle App", () => {
  it("Click 'Add to Cart' buttons and verify table appears on /cart page", () => {
    // Visit the home page
    cy.visit("/");

    // Click the first 'Add to Cart' button with force option
    cy.get(".btn").first().click({ force: true });

    // Click on the cart icon in the top navigation bar
    cy.get(".nav-link").contains("My Cart").click();

    // Check if the table with class "table table-bordered" is present
    cy.get(".table.table-bordered").should("be.visible");
  });
});

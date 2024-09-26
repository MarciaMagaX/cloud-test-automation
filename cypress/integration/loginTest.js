describe('Seu Barriga - Testes de Login', () => {
  it('Deve fazer login com sucesso', () => {
    cy.visit('https://seubarriga.wcaquino.me');
    cy.get('#email').type('teste@teste.com');
    cy.get('#senha').type('12345');
    cy.get('.btn').click();
    cy.contains('Bem vindo').should('be.visible');
  });

  it('Deve falhar com credenciais inválidas', () => {
    cy.visit('https://seubarriga.wcaquino.me');
    cy.get('#email').type('invalido@teste.com');
    cy.get('#senha').type('senhaerrada');
    cy.get('.btn').click();
    cy.contains('Problemas com login').should('be.visible');
  });
});

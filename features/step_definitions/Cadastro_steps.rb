require_relative '../../PageObject/Screen_Cadastro'

Dado("que estou na tela principal") do                                          

  end                                                                             
                                                                                  
  Quando("clico no menu esquerdo e em login") do          
    sleep 2    
    @cadastro.click_Menu
    @cadastro.click_login
    sleep 2
end                                                                             

E("depois em Cadastro") do                                                 
    @cadastro.click_novoCadastro
    sleep 3
end                                                                             

E("preencho todos necessarios") do                                         
    @cadastro.digita_usuario('usertest6654')
    @cadastro.digita_email('miguel@email.com')
    @cadastro.digita_Senha('96Miguel.')
    @cadastro.confirmaSenha('96Miguel.')
    @cadastro.digita_Nome('Miguel')
    @cadastro.digita_ultimoNome('Bruno')
    @cadastro.digita_Telefone('1199999999')
    @cadastro.escolher_Pais
    sleep 2
    @cadastro.digita_Estado('São Paulo')
    @cadastro.digitar_Endereco('Rua tal de Tal')
    @cadastro.digitar_Cidade('Taboão da Serra')
    @cadastro.digitar_CEP('06777899')
    sleep 2
    
  end                                                                             
  
  Então("confirmo o cadastro") do                                                 
    @cadastro.btn_ConfirmaCadastro
      
  end                                                                             
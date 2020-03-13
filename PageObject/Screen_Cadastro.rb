class Screen_Cadastro < SitePrism::Page

    
    def click_Menu
        btn=driver.find_element(id:'imageViewMenu')
        btn.click
    end

    def click_login
        login = driver.find_element(id:'textViewMenuUser')
        login.click
    end

    def click_novoCadastro
        novaConta = driver.find_element(id:'textViewDontHaveAnAccount')
        novaConta.click
    end

    def digita_usuario(usuario)
        user = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextUserName"]/child::*[1]')
        user.click
        user.send_keys(usuario)
    end

    def digita_email(email)
        emails= driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextEmail"]/child::*[1]')
        emails.click
        emails.send_keys(email)
    end

    def digita_Senha(senha)
        pssw= driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextPassword"]/child::*[1]')
        pssw.click
        pssw.send_keys(senha)
    end

    def confirmaSenha(confiSenha)
        confirma= driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextConfirmPassword"]/child::*[1]')
        confirma.click
        confirma.send_keys(confiSenha)
    end

    def digita_Nome(nome)
        name = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextFirstName"]/child::*[1]')
        name.click
        name.send_keys(nome)
    end

    def digita_ultimoNome(lastName)
        ultimoNome = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextLastName"]/child::*[1]')
        ultimoNome.click
        ultimoNome.send_keys(lastName)
    end

    def digita_Telefone(telefone)
        tel = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextPhoneNumber"]/child::*[1]')
        tel.click
        tel.send_keys(telefone)
        press_keycode 66
    end

    def escolher_Pais
        pais = driver.find_element(id: 'com.Advantage.aShopping:id/textViewCountries').click
        el = driver.scroll_to ('Brazil')
        el.click
    end

    def digita_Estado(estado)
    estados = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextState"]/child::*[1]')
    estados.click
    estados.send_keys(estado)
    press_keycode 66
    end

    def digitar_Endereco(endereco)
        addres = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextStreet"]/child::*[1]')
        addres.click
        addres.send_keys(endereco)
        press_keycode 66
    end

    def digitar_Cidade(cidade)
        city = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextCity"]/child::*[1]')
        city.click
        city.send_keys(cidade)
    end

    def digitar_CEP(cep)
        zip = driver.find_element(:xpath, '//*[@resource-id="com.Advantage.aShopping:id/AosEditTextZip"]/child::*[1]')
        zip.click
        zip.send_keys(cep)
    end

    def btn_ConfirmaCadastro
        btn = driver.scroll_to ('REGISTER')
        #btn = driver.find_element(id: 'com.Advantage.aShopping:id/buttonRegister')
        #driver.touch_action.down(btn).move_to(10, 100).up(50, 50).perform
        btn.click
        
    end
end
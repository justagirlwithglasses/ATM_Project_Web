<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>
    
    <head>
        
        <title> Criar Cartão de Cliente </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<style>
            
		body 
                {
			font-family: Arial, sans-serif;
			background-color: #f4f4f4;
		}

		form 
                {
			background-color: #fff;
			max-width: 500px;
			margin: 20px auto;
			padding: 20px;
			box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
		}

		label 
                {
			display: block;
			margin-bottom: 8px;
		}

		input[type="text"],
		input[type="number"],
		input[type="date"],
		select 
                {
			padding: 8px;
			width: 100%;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			margin-bottom: 20px;
		}

		button 
                {
			background-color: #4CAF50;
			color: #fff;
			padding: 8px 16px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}

		button:hover 
                {
			background-color: #45a049;
		}
                
	</style>
        
    </head>

    <body>
        
        <form action="ATMController" method="POST">
        
            <h2> Criar Cartão de Cliente </h2>
            
            <label for="nif"> NIF: </label>
            <input type="text" id="nif" name="NIF" placeholder="Insira o NIF" value="${novocliente.nif}" disabled>

            <label for="num_conta"> Numero da Conta: </label>
            <input type="text" id="num_conta" name="num_conta" placeholder="Insira o Numero da Conta" value="${novaconta.num_conta}" disabled>
            
            <label for="num_cartao"> Número do Cartão: </label>
            <input type="text" id="num_cartao" name="num_cartao" placeholder="Insira o Número do Cartão" required>
            
            <label for="data_val"> Data de Validade: </label>
            <input type="date" id="data_val" name="data_val" required>
            
            <label for="tipo_cartao"> Tipo de Cartão: </label>
            <select id="tipo_cartao" name="tipo_cartao">
                    <option value="debito"> Débito </option>
                    <option value="credito"> Crédito </option>
            </select>
            
            <label for="nome_titular"> Nome do Titular: </label>
            <input type="text" id="nome_titular" name="nome_titular" placeholder="Insira o Nome do Titular" required>
            
            <label for="cod_seg"> Código de Segurança: </label>
            <input type="text" id="cod_seg" name="cod_seg" placeholder="Insira o Código de Segurança" size="3" maxlength="3" required>
            
            <button type="submit" name="servico" value="criar_cartao"> Criar Cartão </button>
                
	</form>
        
    </body>

</html>

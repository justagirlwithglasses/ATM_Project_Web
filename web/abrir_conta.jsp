<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>
    
    <head>
        
        <title> Abrir Conta </title>
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
        
            <h2> Abrir Conta do Cliente </h2>
            
              
	    <label for="nif"> NIF: </label>
            <input type="text" id="nif" name="NIF" placeholder="Insira o NIF" value="${novocliente.nif}" disabled>

            <label for="num_conta"> Numero da Conta: </label>
            <input type="text" id="num_conta" name="num_conta" placeholder="Insira o Numero da Conta" required>
         
            <label for="tipo_conta"> Tipo de Conta: </label>
            <select id="tipo_conta" name="tipo_conta">
                    <option value="corrente"> Corrente </option>
                    <option value="poupanca"> Poupanca </option>
            </select>
            
            <label for="saldo_conta"> Saldo Conta: </label>
            <input type="number" id="saldo_conta" name="saldo_conta" placeholder="Insira o Saldo da Conta" step="0.01" required>
            
            <button type="submit" name="servico" value="abrir_conta"> Criar Conta </button>
            
	</form>
    
    </body>
    
</html>

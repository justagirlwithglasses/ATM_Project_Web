<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>
    
    <head>
        
        <title> Listar Info </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<style>
		table {
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			text-align: left;
			padding: 8px;
			border: 1px solid #ddd;
		}
		th {
			background-color: #f2f2f2;
			color: #333;
		}
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
	</style>
        
    </head>

    <body>
        
        <!-- Tabela de Info do Cliente -->
        
	<h1> Informação do Cliente </h1>
        
	<table>
		<thead>
			<tr>
				<th>ID de Cliente</th>
				<th>Nome</th>
				<th>NIF</th>
				<th>Email</th>
                                <th>Profissão</th>
			</tr>
		</thead>
                
		<tbody>
			<tr>
				<td>${novocliente.id_cliente}</td>
				<td>${novocliente.nome}</td>
				<td>${novocliente.nif}</td>
				<td>${novocliente.email}</td>
                                <td>${novocliente.profissao}</td>
			</tr>
                        
		</tbody>
                
	</table>             
        
                        
        <br><br><br>
                      
        
        <!-- Tabela de Info da Conta -->
                        
        <h1> Informação da Conta </h1>
        
	<table>
		<thead>
			<tr>
				<th>Nº de Conta</th>
				<th>Tipo de Conta</th>
				<th>Saldo da Conta</th>
				<th>Depositar</th>
                                <th>Levantar</th>
			</tr>
		</thead>
                
		<tbody>
			<tr>
				<td>${novaconta.num_conta}</td>
				<td>${novaconta.tipo_conta}</td>
				<td>${novaconta.saldo_conta}</td>
				<td>Depositar</td>
                                <td>Levantar</td>
			</tr>
                        
		</tbody>
                
	</table>
                        
        
        <br><br><br>
                        
             
        <!-- Tabela de Info do Cartão -->
                        
        <h1> Informação do Cartão </h1>
        
	<table>
		<thead>
			<tr>
				<th>Nº do Cartão</th>
				<th>Data de Validade</th>
				<th>Tipo de Cartão</th>
				<th>Nome do Titular</th>
			</tr>
		</thead>
                
		<tbody>
			<tr>
				<td>${novocartao.num_cartao}</td>
				<td>${novocartao.data_val}</td>
				<td>${novocartao.tipo_cartao}</td>
				<td>${novocartao.nome_titular}</td>
			</tr>
                        
		</tbody>
                
	</table>
                        
    </body>

</html>

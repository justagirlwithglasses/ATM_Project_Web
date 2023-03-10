<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Criar Cartão</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            
            <div class="card-body p-0">
                
                <!-- Nested Row within Card Body -->
                
                <div class="row">
                    
                    <div class="col-lg-5 d-none d-lg-block bg-card-image"></div>
                    
                    <div class="col-lg-7">
                        
                        <div class="p-5">
                            
                            <div class="text-center">
                                
                                <h1 class="h4 text-gray-900 mb-4">Criar Cartão</h1>
                                
                            </div>
                            
                            <form class="user" action="ATMController" method="POST">
                                
                                <div class="form-group">
                                                                   
                                    <input type="text" class="form-control form-control-user" id="nif" name="NIF" placeholder="Insira o NIF" value="${novocliente.nif}" disabled>

                                </div>
                                
                                <div class="form-group">
                                   
                                    <input type="text" class="form-control form-control-user" id="num_conta" name="num_conta" placeholder="Insira o Numero da Conta" value="${novaconta.num_conta}" disabled>
                                      
                                </div>
                                    
                                <div class="form-group">
                                    
                                    <input type="text" class="form-control form-control-user" id="num_cartao" name="num_cartao" maxlength="19" pattern="[0-9]{4}\s[0-9]{4}\s[0-9]{4}\s[0-9]{4}" placeholder="Insira o Número do Cartão (1234 1234 1234 1234)" required>
 
                                </div>
                                    
                                <div class="form-group">
 
                                     <input type="date" class="form-control form-control-user" id="data_val" name="data_val" required>
            
                                </div>
                                    
                                    
                                <div class="form-group">   
                                        
                                        <select class="form-control-user" id="tipo_cartao" name="tipo_cartao">
                                            <option value="debito"> Débito </option>
                                            <option value="credito"> Crédito </option>
                                        </select>

                                </div>                                
                                
                                <div class="form-group">
                                    
                                    <input type="text" class="form-control form-control-user" id="nome_titular" name="nome_titular" placeholder="Insira o Nome do Titular" required>
                                    
                                </div>   
                                 
                                <div class="form-group">
                                    
                                    <input type="text" class="form-control form-control-user" id="cod_seg" name="cod_seg" placeholder="Insira o Código de Segurança" maxlength="3" required>
                                    
                                </div>   
                                    
                                    <button type="submit" class="btn btn-primary btn-user btn-block"  name="servico" value="criar_cartao"> Criar Cartão </button>
                                    
                            </form>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </div>

    </div>         
            
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>

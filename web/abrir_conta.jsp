<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Abrir Conta</title>

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
                    
                    <div class="col-lg-5 d-none d-lg-block bg-account-image"></div>
                    
                    <div class="col-lg-7">
                        
                        <div class="p-5">
                            
                            <div class="text-center">
                                
                                <h1 class="h4 text-gray-900 mb-4">Abrir Conta</h1>
                                
                            </div>
                            
                            <form class="user" action="ATMController" method="POST">
                                
                                <div class="form-group">
                                                                   
                                    <input type="text" class="form-control form-control-user" id="nif" name="NIF" placeholder="Insira o NIF" value="${novocliente.nif}" disabled>

                                </div>
                                
                                <div class="form-group">
                                    
                                    <input type="text" class="form-control form-control-user" id="num_conta" name="num_conta" maxlength="24" pattern="[0-9]{4}\s[0-9]{4}\s[0-9]{11}\s[0-9]{2}" placeholder="Insira o Número da Conta (1234 1234 12345678901 12)" required>
                                        
                                 </div>
                                    
                                <div class="form-group">   
                                        
                                        <select class="form-control-user" id="tipo_conta" name="tipo_conta">
                                                <option value="corrente"> Corrente </option>
                                                <option value="poupanca"> Poupança </option>
                                        </select>

                                </div>
                                
                                <div class="form-group">
                                   
                                    <input type="text" class="form-control form-control-user" id="saldo_conta" name="saldo_conta" placeholder="Insira o Saldo da Conta" required>
                                    
                                </div>                               
                                    
                                    <button type="submit" class="btn btn-primary btn-user btn-block" name="servico" value="abrir_conta"> Abrir Conta </button>
                                
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

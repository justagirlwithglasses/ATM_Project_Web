package pt.atmproject;

import atmproject.model.Cliente;
import atmproject.model.Conta;
import atmproject.model.Cartao;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ATMController", urlPatterns = {"/ATMController"})

public class ATMController extends HttpServlet 
{
    
    // Injeção referente ao EJB da Aplicação
    
    @EJB ATMEJB atmejb;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String paginaseguinte = null;
        
        String servico = request.getParameter("servico");
                
        switch (servico)
        {

            //Form Criar Cliente
            
            case "criar_cliente":       
            {
               
                 Cliente novocliente = new Cliente
                 (

                     request.getParameter("Id_cliente"),
                     request.getParameter("nome"),
                     request.getParameter("NIF"),
                     request.getParameter("email"),
                     request.getParameter("profissao"),
                     request.getParameter("senha")

                 );
                 
                 Cliente cliente = atmejb.criar_cliente(novocliente);
                 
                 request.getSession().setAttribute("novocliente", cliente);
                                 
                 paginaseguinte = "abrir_conta.jsp";
                 
                break;
            
            }
          
             //Form Abrir Conta
            
            
            case "abrir_conta":           
            {

                Conta novaconta = new Conta
               (
                   request.getParameter("num_conta"),
                   Double.parseDouble(request.getParameter("saldo_conta")),
                   Conta.Tipo_Conta.valueOf(request.getParameter("tipo_conta"))

               );
                      
                Conta conta = atmejb.abrir_conta(novaconta);
                
                request.getSession().setAttribute("novaconta", conta);
                
                paginaseguinte = "criar_cartao.jsp";
                
                 break;
            }
    
            //Form Criar Cartão
            
            case "criar_cartao":
            {
                          
                    Cartao novocartao = new Cartao
                   (

                       request.getParameter("num_cartao"),
                       request.getParameter("data_val"),
                       Cartao.Tipo_Cartao.valueOf(request.getParameter("tipo_cartao")),
                       request.getParameter("nome_titular"), 
                       Integer.parseInt(request.getParameter("cod_seg"))

                   );
                    
                   Cartao cartao = atmejb.criar_cartao(novocartao);
                   
                   request.getSession().setAttribute("novocartao", cartao);
                    
                   paginaseguinte = "listar_info.jsp";
                    
                  break;
            }
            
        }
                       
       response.sendRedirect(paginaseguinte);
    }
}

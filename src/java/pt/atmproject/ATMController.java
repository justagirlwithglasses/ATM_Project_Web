package pt.atmproject;

import atmproject.data.Database;
import atmproject.model.Cliente;
import atmproject.model.Conta;
import atmproject.model.Cartao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ATMController", urlPatterns = {"/ATMController"})

public class ATMController extends HttpServlet 
{
    
    //@EJB(lookup = "java:global/ATM_Project!atmproject.model.Servicos");
    //Servicos servicos;
    
    @EJB ATMEJB atmejb;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Object resultado = null;
        String paginaseguinte = null;
        
        String servico = request.getParameter("servico");
                
        switch (servico)
        {

            //Form Criar Cliente
            
            case "criar_cliente":       
            {
               
                 Cliente novocliente = new Cliente
                 (

                     request.getParameter("ID_cliente"),
                     request.getParameter("nome"),
                     request.getParameter("NIF"),
                     request.getParameter("email"),
                     request.getParameter("profissao"),
                     request.getParameter("senha")

                 );
                 
                 //Database.criar_cliente(novocliente);
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
                   Integer.parseInt(request.getParameter("num_conta")),
                   Double.parseDouble(request.getParameter("saldo_conta")),
                   Conta.Tipo_Conta.valueOf(request.getParameter("tipo_conta"))

               );
                
                //Database.abrir_conta(novaconta);
                      
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
                
   
                
       /*         
        try ( PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ATMController</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet ATMController at " + request.getContextPath() + "</h1>");
            //out.println("Novo Cliente: " + novocliente);
            //out.println("Nova Conta: " + novaconta); 
            //out.println("Novo Cartão: " + novocartao);
            out.println("<p> "+resultado+" </p>");
            out.println("</body>");
            out.println("</html>");
        }
        */
       
       response.sendRedirect(paginaseguinte);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

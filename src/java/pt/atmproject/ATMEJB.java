package pt.atmproject;

import atmproject.data.Database;
import atmproject.model.Cartao;
import atmproject.model.Cliente;
import atmproject.model.Conta;
import javax.ejb.Singleton;

// EJB da Aplicação


@Singleton
public class ATMEJB 
{

   
    public Cliente criar_cliente(Cliente cliente) 
    {
        return Database.criar_cliente(cliente);
    }

    public Conta abrir_conta(Conta conta) 
    {
        return Database.abrir_conta(conta);
    }

    public Cartao criar_cartao(Cartao cartao) 
    {
        return Database.criar_cartao(cartao);
    }

    
    public void depositar_dinheiro(String Num_Conta, String quant) {
       
    }

    
    public void levantar_dinheiro(String Num_Conta, String quant) {
       
    }

    
}

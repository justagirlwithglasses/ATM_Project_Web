package pt.atmproject;

import atmproject.data.Database;
import atmproject.model.Cartao;
import atmproject.model.Cliente;
import atmproject.model.Conta;
import atmproject.model.Servicos;
import javax.ejb.Singleton;


@Singleton
public class ATMEJB 
{

   
    public Cliente criar_cliente(Cliente cliente) 
    {
        return Database.criar_cliente(cliente);
    }

    public String abrir_conta(Conta conta) 
    {
        return Database.abrir_conta(conta);
    }

    public String criar_cartao(Cartao cartao) 
    {
        return Database.criar_cartao(cartao);
    }

    
    public void depositar_dinheiro(String Num_Conta, String quant) {
       
    }

    
    public void levantar_dinheiro(String Num_Conta, String quant) {
       
    }

    
}

package Semana7;


public class Empregado {
    
   private String Nome;
   private String Sobrenome;
   private float Salario;
    
    public Empregado(String Nome, String Sobrenome, float Salario) {
        this.Nome = Nome;
        this.Sobrenome = Sobrenome;
        this.Salario = Salario;
    }
    public void Aumento(){
        Salario = Salario * 1.1f;
    }
            
    public float getSalarioAnual(){
      return Salario * 12;
    }
    
    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getSobrenome() {
        return Sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.Sobrenome = Sobrenome;
    }

    public float getSalario() {
        return Salario;
    }

    public void setSalario(float Salario) {
        if (Salario < 0) {
           this.Salario = 0.0f;
        } else
          this.Salario = Salario;
    }
  
}
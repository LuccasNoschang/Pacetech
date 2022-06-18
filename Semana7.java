package semana7;

public class Semana7 {

    public static void main(String[] args) {
        
      Empregado Luccas = new Empregado("Luccas", "Noschang", 2000);
        System.out.println("Salario anual de: " + luccas.getNome() +
        ": R$" + String.format("%.2f",luccas.getSalarioAnual()));
      
        Empregado Beatriz = new Empregado("Beatriz", "Alvez", 4000);
        System.out.println("Salario anual de " + Beatriz.getNome() + 
                ": R$" + String.format("%.2f",Beatriz.getSalarioAnual()));
        
        System.out.println();
        
        Luccas.Aumento();
        Beatriz.Aumento();
        
        System.out.println();
        
        System.out.println("Salario anual de " + Luccas.getPrimeiroNome() +
                " com aumento: R$" + String.format("%.2f",Luccas.getSalarioAnual()));
        System.out.println("Salario anual de " + Beatriz.getPrimeiroNome() +
                " com aumento: R$" + String.format("%.2f",Beatriz.getSalarioAnual()));
        
    }
    
}
    
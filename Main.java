package ProjetoSemana6;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);

        float tempCelsius = 0f, tempFahrenheit = 0f, cCelsius = 0f, cFahrenheit = 0f;
        float mReal = 0f, mDolar = 0f, mCotacao = 0f;
        int menu = 0, menu2 = 0, menu3 = 0;

        do {
            System.out.println("Qual conversão você deseja realizar?");
            System.out.println("");
            System.out.println("1 - Convercao de Temperatura");
            System.out.println("2 - Convercao de Moeda");
            System.out.println("3 - Sair");
            System.out.println("");
            menu = leitor.nextInt();
            switch (menu) {
                case 1 -> {
                    do {
                        System.out.println("1 - Conversão de Celsius para Fahrenheit");
                        System.out.println("2 - Conversão de Fahrenheit para Celsius");
                        System.out.println("3 - Voltar");
                        System.out.println("");
                        menu2 = leitor.nextInt();
                        switch (menu2) {
                            case 1 -> {
                                System.out.print("Favor, informar o valor em Celsius"
                                        + " que deseja converter: ");
                                System.out.println("");
                                tempCelsius = leitor.nextFloat();
                                cFahrenheit = (tempCelsius * 9 / 5) + 32;
                                System.out.println("A temperatura em Celsius " + tempCelsius
                                        + " ºC convertida em Fahrenheit é: " + String.format("%.2f", cFahrenheit) + " ºF");
                                System.out.println("");
                            }

                            case 2 -> {
                                System.out.print("Favor, informar o valor em Fahrenheit"
                                        + " que deseja converter: ");
                                System.out.println("");
                                tempFahrenheit = leitor.nextFloat();
                                cCelsius = (tempFahrenheit - 32) * 9 / 5;
                                System.out.println("A temperatura em Fahrenheit " + tempFahrenheit
                                        + " ºF convertida em Celsius eh: " + String.format("%.2f", cCelsius) + " ºC");
                                System.out.println("");
                            }
                            case 3 -> {
                            }

                            default ->
                                System.out.println("Opcao Invalida");
                        }
                    } while (menu2 != 3);
                }
                case 2 -> {
                    do {
                        System.out.println("1 - Converção de Dolar para Real");
                        System.out.println("2 - Converção de Real para Dolar");
                        System.out.println("3 - Voltar");
                        System.out.println("");
                        menu3 = leitor.nextInt();
                        switch (menu3) {
                            case 1 -> {
                                System.out.print("Favor, informar o valor da cotacao atual do dolar: ")
                                System.out.println("");
                                mCotacao = leitor.nextFloat();

                                System.out.print("Favor, informar o valor em real "
                                        + "que deseja para conversao: ");
                                System.out.println("");
                                mReal = leitor.nextFloat();
                                mDolar = mReal / mCotacao;
                                System.out.println("O valor em dolar e: $ " + String.format("%.2f", mDolar));
                                System.out.println("");
                            }

                            case 2 -> {
                                System.out.print("Favor, informar o valor da cotacao atual do dolar ")
                                System.out.println("");
                                mCotacao = leitor.nextFloat();
                                System.out.print("Favor, informe o valor em dolar "
                                        + "que deseja para conversao: ");
                                System.out.println("");
                                mDolar = leitor.nextFloat();

                                mReal = mDolar * mCotacao;
                                System.out.println("O valor em real eh R$: " + String.format("%.2f", mReal));
                                System.out.println("");
                            }
                            case 3 -> {
                            }

                            default ->
                                System.out.println("Opcao Invalida");
                        }
                    } while (menu3 != 3);
                }
                case 3 -> {
                }

                default ->
                    System.out.println("Opcao Invalida");

            }
        } while (menu != 3);

    }

}
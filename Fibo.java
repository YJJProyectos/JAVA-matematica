package mate;

import java.util.ArrayList;
import java.util.Scanner;

public class Fibo {
	private String algo = "1";
	private int num = 3;
public int devolverPotenciaDeDos(){
    @SuppressWarnings("resource")
	Scanner sc = new Scanner(System.in);
    System.out.println("Ingrese numero");
//    String entrada = sc.nextLine();
    
//    int numero = Integer.parseInt(entrada);
// o se puede hacer como 
    int numero = sc.nextInt();
	return (int) Math.pow(numero, 2);
}

public  int fibonacci(int n)
{
	if (n>1){
		return fibonacci(n-1) + fibonacci(n-2);  //función recursiva
	}
	else if (n==1) {  // caso base
		return 1;
	}
	else {  // caso base
		return 0;
	}

}
public void numerosFibo(int n){
	for ( int i=1; i <= n ; i++){
		System.out.println(this.fibonacci(i));
	}
		
}
public ArrayList<Integer> darNumerosFibonacci(int n){
//	int[] numeros = new int[];
	ArrayList<Integer> lista = new ArrayList<Integer>();
	for ( int i=1; i <= n ; i++){
		lista.add(this.fibonacci(i));
	}
	return lista;
}
public boolean esPrimo(int numero){
	if (numero <= 1){
		return false;
	}
	for (int i=2; i < numero; i++){
		if ( numero % i == 0){
			return false;
		}
	}
	return true;
}
public String dame(){
	return this.algo;
}
public int num(){
	return this.num;
}
public int binario(int numero){
	int bin=0;
	int digito=0;
	int potencia = 0;
	while(numero != 0){
		digito = numero % 2;
		bin = (int) (bin + digito * Math.pow(10, potencia));
		numero = numero / 2;
		potencia++;
	}
	return bin;
}
public int octal(int numero){
	int bin=0;
	int digito=0;
	int potencia = 0;
	while(numero != 0){
		digito = numero % 8;
		bin = (int) (bin + digito * Math.pow(10, potencia));
		numero = numero / 8;
		potencia++;
	}
	return bin;
}
}
package mate;

//import java.util.Scanner;
import java.util.ArrayList;


public class Fibonacci {

	public static void main(String args[]){
		System.out.println("Hola");
		Fibo fibo = new Fibo();
		int algo = fibo.fibonacci(0);
		System.out.println("El fibonacci es :" + algo);	
		fibo.numerosFibo(10);
		System.out.println("La potencia es: "+ fibo.devolverPotenciaDeDos());
		
		
//		System.out.println(fibo.dame());
		ArrayList<Integer> num_fibonacci = fibo.darNumerosFibonacci(10);
		System.out.println(num_fibonacci.get(1));
		int bin = fibo.binario(45);
		System.out.println(bin);
		int octal = fibo.octal(45);
		System.out.println(octal);
		Persona atleta = new Atleta();
		System.out.println(atleta.devolver_nombre() + " " + atleta.devolver_nombre().length());
		System.out.println("El capicua es: " + capicua(12345));
		
		String saludo = "hola";
		System.out.println(saludo.charAt(2));
		System.out.println("el promedio es " + promedioVector());
		String numeroCambio = cambio(49);
		System.out.println(numeroCambio);
	    System.out.println(fibo.esPrimo(38));	
	    nombres();
		System.out.println(dame("mayor"));
		ArrayList<Double> listaNombres = new ArrayList<Double>();
		System.out.println(listaNombres.size());
	}
	public static ArrayList<String> nombres(){
		ArrayList<String> listaNombres = new ArrayList<String>();
		listaNombres.add("lalal");
		listaNombres.add("Jia");
		System.out.println(listaNombres.size());		
		for (String nombre:listaNombres){
			System.out.println(nombre);
		}
		System.out.println("Otra forma");
		for ( int i = 0; i < listaNombres.size(); i++){
			System.out.println(listaNombres.get(i));
		}
		return listaNombres;
	}
	public static int capicua(int num){
		String numString = Integer.toString(num);
		String numero = numString;
		int cantidad = numString.length();
		for (int i=cantidad - 1; i > 0; i--){
			numero = numero + numString.charAt(i-1);
		}
		
		return Integer.parseInt(numero);
	}
	public static float promedioVector(){
//		int promedio = 0;
		int[] vector = new int[3];
		vector[0] = 1;vector[1] = 2; vector[2] = 19;
		int lon = vector.length;
		int suma = 0;
		for ( int i=0 ; i < lon ; i++){
			suma = suma + vector[i];
		}
		float promedio = (float)suma / lon;
		return promedio;
	}
	public static int dame(String devolver){
		ArrayList<Integer> numeros = new ArrayList<Integer>();
		numeros.add(3); numeros.add(4); numeros.add(10); numeros.add(2);
		int devolverNum;
		if ( numeros.size() != 0){
			devolverNum =numeros.get(0);
		} else { 
			devolverNum= 0;
		}
		if  (devolver == "menor"){
			for (int i = 0; i < numeros.size() ; i++){
				if ( devolverNum > numeros.get(i)){
					devolverNum =  numeros.get(i);
				}
			}
		} else {
			for (int i = 0; i < numeros.size() ; i++){
				if ( devolverNum < numeros.get(i)){
					devolverNum =  numeros.get(i);
				}
			}
		}
		return devolverNum;
	}
	public static String cambio(int numero){
		String vuelto="";
		int[] tipo_cambio = new int[] {50,20,10,5,2,1};
		if (numero == 0) {
			vuelto = " $0";
		}
		else {
		// Cambio $50 , $20 , $10 , $5 , $2 , $ 1
		int a_cambiar = numero;
		while (a_cambiar != 0){
/*			if ( a_cambiar >= 50){
				vuelto = vuelto + " "+ "$50";
				a_cambiar = a_cambiar - 50;			

			} else
			if (a_cambiar >= 20){
				vuelto = vuelto + " "+ "$20";
				a_cambiar = a_cambiar - 20;						
			}
			else if ( a_cambiar >= 10 ){
				vuelto = vuelto + " "+ "$10";
				a_cambiar = a_cambiar - 10;						
			} else if ( a_cambiar >= 5){
				vuelto = vuelto + " "+ "$5";
				a_cambiar = a_cambiar - 5;						
			} else if (a_cambiar >= 2){
				vuelto = vuelto + " "+ "$2";
				a_cambiar = a_cambiar - 2;						
			} else if (a_cambiar >=1){
				vuelto = vuelto + " "+ "$1";
				a_cambiar = a_cambiar - 1;		
			} 
			if ( a_cambiar >= 50){
				vuelto = vuelto + " "+ "$50";
				a_cambiar = a_cambiar - 50;			
				continue;
			} 
			if (a_cambiar >= 20){
				vuelto = vuelto + " "+ "$20";
				a_cambiar = a_cambiar - 20;		
				continue;
			}
			if ( a_cambiar >= 10 ){
				vuelto = vuelto + " "+ "$10";
				a_cambiar = a_cambiar - 10;		
				continue;
			} 
			if ( a_cambiar >= 5){
				vuelto = vuelto + " "+ "$5";
				a_cambiar = a_cambiar - 5;		
				continue;
			} 
			if (a_cambiar >= 2){
				vuelto = vuelto + " "+ "$2";
				a_cambiar = a_cambiar - 2;		
				continue;
			}
			if (a_cambiar >=1){
				vuelto = vuelto + " "+ "$1";
				a_cambiar = a_cambiar - 1;		
				continue;
			}
			
		*/
			for (int cantidad_cambio:tipo_cambio){
				if (a_cambiar >= cantidad_cambio){
					vuelto = vuelto + " $" + Integer.toString(cantidad_cambio);
					a_cambiar = a_cambiar - cantidad_cambio;
					break;
				}
			} 
		} 
	}	
		return "El vuelto de " + Integer.toString(numero) + " es:" + vuelto;
	}
    public static int[] ordenacionBurbuja(int vec[]){
        final int N=vec.length;
        for(int i=N-1;i>0;i--){
                for(int j=0;j<i;j++){
                        if(vec[j]>vec[j+1]){
                                int temp=vec[j];
                                vec[j]=vec[j+1];
                                vec[j+1]=temp;
                        }
                }
                System.out.print("iteracion: "+(N-i)+": ");imprimirVector(vec);System.out.println();
        }
        return vec;
    }

    public static void imprimirVector(int vec[]){
        for(int i=0;i<vec.length;i++){
                System.out.print(vec[i]+" ");
        }
    }

}


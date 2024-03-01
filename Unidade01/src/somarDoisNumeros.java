import java.util.*;

class somarDoisNumeros {

	public static Scanner sc = new Scanner(System.in);
	
	public static void main(String args[]) {
		//declarando variaveis
		int num1, num2, soma;
		
		//leituras 
		System.out.println("Digite um nuero: ");
		num1 = sc.nextInt();
		System.out.println("Digite outro nuero: ");
		num2 = sc.nextInt();
		
		//somar
		soma = num1 + num2;
		
		//mostrar na tela
		System.out.println("Soma: " + soma);
	}
}

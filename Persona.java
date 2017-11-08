package mate;

public abstract class Persona {
	protected int num;
	protected String nombre;
	
	public abstract int devolver_numero(int num);
	public String devolver_nombre(){
		return this.nombre;
	}
	public int sumar(int num){
		return this.num + num;
	}
}

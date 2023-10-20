package main;

public aspect CheckAssurance {
	
	pointcut verifyAssurance(): execution(void PetStore.makeAppointment(..));
	
	before() : verifyAssurance(){
		System.out.println("Verifying assurance...");
		String name = PetStore.readConsole("Name of your pet: ");
		System.out.println("Welcome "+ name);
		System.out.println("You are able to use this service");
	}
	
	after() : verifyAssurance(){
		System.out.println("Request was executed successfully");
	}
}

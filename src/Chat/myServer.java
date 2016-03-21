package Chat;
import java.io.*;
import java.net.*;

public class myServer {

	private static ServerSocket serverSocket = null;

	private static Socket clientSocket = null;

	private static int maxClients = 1000;

	private static final clientThread[] threads = new clientThread[maxClients];
	
	public static void main (String args[]) {

		int port = 9347;
		System.out.println("Connected to port " + port);

		try {
			serverSocket = new ServerSocket(port);
			serverSocket.setSoTimeout(1000000000);
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("Setting " + maxClients + " clients as maximum ....");
		System.out.println("Server is ready !!!");

		while(true) {
			
			try {

				clientSocket = serverSocket.accept();

				int i = 0;
				
				//for assign a new client to the requested socket
				for(i = 0; i < maxClients; i++) {
					if(threads[i] == null) {
						
						System.out.println("Server Got connected");
						(threads[i] = new clientThread(clientSocket, threads)).start();
						break;
					
					}
				}
				
				//for checking server load
				if(i == maxClients) {
					
					PrintStream os = new PrintStream(clientSocket.getOutputStream());
					os.println("Server too busy!!! Try Again Later !!!");
					os.close();
					clientSocket.close();
				}
			} catch(IOException e) {
				e.printStackTrace();
			} 
		}
	}
}


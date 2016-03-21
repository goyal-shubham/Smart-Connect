package Chat;

import java.io.*;
import java.net.*;
import java.util.*;




public class Clients implements Runnable {

			
	// the client socket
	private Socket clientSocket = null;					
	// the output stream
	private PrintStream os = null;
	// the input stream						
	private BufferedReader is = null;					
	
	public ArrayList<String> strb = new ArrayList<String>();

	public void first() {
			
			String serverName = "";
			
			int port = 9347;
			serverName = "localhost";
			System.out.println("Connected to server " + serverName + ":" + port);


		try {
			// open a socket to connect
			clientSocket = new Socket(serverName, port);
			
			os = new PrintStream(clientSocket.getOutputStream());			
			is = new BufferedReader(new InputStreamReader(clientSocket.getInputStream())); 
			
			
		} catch (UnknownHostException e) {
			System.err.println("Unknown Host: " + serverName);
		} catch (IOException e) {
			System.err.println("Couldn't get I/O for the connection to host " + serverName);
		}
		
		if(clientSocket != null && os != null && is != null) {
			
			new Thread(this).start();
			
		}
	}
		
		//to get message from UI
	public void giveMessageFromUI(String msg)
	{	
		
		if(clientSocket != null && os != null && is != null) {
			os.println(msg);
		}
	}
	

	public ArrayList<String> getMessageFromServer(){
		return strb;
	}

	public void run() {
		
		String responseLine = null;
		try {
			
			// keep reading till exit is received from server
			while((responseLine = is.readLine()) != null) {
			
				if(responseLine.indexOf("!!!! Bye") != -1) {
					break;
				} else {
					System.out.println("server response" + responseLine);
					strb.add(responseLine + "\n");
					
				}
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
				
	}
	
	
}
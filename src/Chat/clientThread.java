package Chat;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import servlet.chatServlet;

public class clientThread extends Thread {

	private String clientName = null;

	private BufferedReader is = null;
	private PrintStream os = null;
	private Socket clientSocket = null;
	
	//client threads
	private final clientThread[] threads;
	
	private int maxClients;
	private SimpleDateFormat sft;
	private String name;
	public ArrayList<String> strb = new ArrayList<String>();
	
	//constructor
	public clientThread(Socket clientSocket, clientThread[] threads) {
		this.clientSocket = clientSocket;
		this.threads = threads;
		maxClients = threads.length;
	}
	
	//thread start
	public void run() {
		

		try {
			is = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
			os = new PrintStream(clientSocket.getOutputStream());
			
			name = is.readLine(); // will be taken from session or willl save userid
			
			System.out.println(name);
			
			sft = new SimpleDateFormat("HH:mm:ss");
			

			synchronized(this) {

				//for implementing the private chat
				for(int i = 0; i < maxClients; i++) {
					if(threads[i] != null && threads[i] == this) {
						clientName = "@" + name;
						break;
					} 
				}

				for(int i = 0; i < maxClients; i++) {
					if(threads[i] != null && threads[i] != this) {
						
						threads[i].os.println("***** "+ name + " has entered the chat room @ " + sft.format(new Date()) + " *****");
					}
				}

				
			}

				//for message passing
			while(true) {

				String line = is.readLine();
				
				//if no message
				if(line.isEmpty()) {
					System.out.println("Enter some message");
					continue;
				}

				if(line != null) {

					if(line.startsWith("/Exit")) {
						break;
					}	

					// if message is generated, then send it to given client
					if(line.startsWith("@")) {
						boolean user_flag;
						
						// case of private message
						String[] words = line.split("\\s", 2);
						
						if(words.length > 1) {	
							
							if(!words[1].isEmpty()) {
								synchronized(this) {
									
									user_flag = false;
									for(int i = 0; i < maxClients; i++) {
										if(threads[i] != null && threads[i] != this && threads[i].clientName != null) {
											if(threads[i].clientName.equals(words[0])) {
												user_flag = true;
												// to the corresponding client
												threads[i].os.println("[ Private message from " + name + " at " + sft.format(new Date()) + " ] " + words[1]);
												
												// to the sender
												this.os.println("[ Private message to " + words[0] + " at " + sft.format(new Date()) + " ] " + words[1]);	
											} 
										}
									}
								}
							}
						}
					}  
					else {
						// Public message
						synchronized(this) {
							for(int i = 0; i < maxClients; i++) {
								if(threads[i] != null && threads[i]. clientName != null) {
									threads[i].os.println("{ " + name  + " @ " + sft.format(new Date()) + " } " + line);
								}
							}
						}
					}
				}	
			}

			
		
			//free the thread
			synchronized(this) {
				for(int i = 0; i < maxClients; i++) {
					// this allows for new clients to enter the chat room
					if(threads[i] == this) {
						threads[i] = null;
					}
				}
			}

			// close the input stream
			is.close();
			// close the output stream
			os.close();
			// close the client socket
			clientSocket.close();
		} catch (IOException e) {
			// if exception, then just print its stack trace
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<String> getOnlineUsers(){
		
		ArrayList<String> onlineList = new ArrayList<String>();
		
		this.os.println("Existing Users are: ");

		for(int i = 0; i < maxClients; i++) {
			if(threads[i] != null) {
				onlineList.add(threads[i].name);
			}
		}
		return onlineList;
	}
}


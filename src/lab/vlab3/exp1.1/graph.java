import java.util.*;
import java.util.PropertyPermission.*;
import java.awt.*;
import java.awt.Color.*;
import java.awt.MediaTracker.*;
import java.awt.event.*;
import java.text.*;
import java.awt.datatransfer.*;
import java.net.*;
import java.net.URLEncoder.*;
import java.io.*;
import java.io.File.*;
import java.text.*;
import javax.swing.*;
import javax.swing.text.*;
import javax.swing.tree.*;
import javax.swing.table.*;
import javax.swing.ImageIcon.*;
public class graph extends JPanel {

    public static void main(String args[]) throws Exception
    {

	String fileToRead = "outfile";
	StringBuffer strBuff;
	TextArea txtArea;
	String myline;
	JLabel l;
	double[] time = new double[1005];
	double[] V_in = new double[1005];
	double[] V_out = new double[1005];
	int no_values = 0;
	fileToRead = "outfile";
	URL url = null;
	FileReader fr = new FileReader(fileToRead); 
	BufferedReader bf = new BufferedReader(fr);
	/*	try {
		url = new URL(getCodeBase(), fileToRead);
		} catch (MalformedURLException e) {
		System.out.println("I did't got the outfile to read :( :( So I am very said ");
		}*/
	String line;
	try {
	    //   InputStream in = url.openStream();
	    //   BufferedReader bf = new BufferedReader(new InputStreamReader(in));
	    strBuff = new StringBuffer();
	    myline = bf.readLine();
	    while (!myline.equals("Values:")) {
		myline = bf.readLine();
	    }
	    int i = 0;
	    while ((line = bf.readLine()) != null) {
		line = bf.readLine();
		line = bf.readLine();
		time[i] = Double.parseDouble(line.split(",")[0]);
		line = bf.readLine();
		line = bf.readLine();
		V_out[i] = Double.parseDouble(line.split(",")[0]);
		line = bf.readLine();
		line = bf.readLine();
		V_in[i] = Double.parseDouble(line.split(",")[0]);
		i++;
	    }
	    no_values = i;
	    FileWriter fstream = new FileWriter("myfile.txt"); 
	    BufferedWriter out = new BufferedWriter(fstream);
	    //   FileOutputStream stream = new FileOutputStream("myfile.txt");
	    //   OutputStreamWriter out = new OutputStreamWriter(stream, "US-ASCII");
	    for(int ii=0;ii<i;ii++)
	    {	    	    
		out.write(String.valueOf(time[ii])+" "+String.valueOf(V_out[ii])+"\n");
		System.out.print(String.valueOf(time[ii])+" "+String.valueOf(V_out[ii])+"\n");
	    }	
	    out.close();


	    //		System.out.println("Hi I am in the contrct func of the exp1_graph class :)");
	} catch (IOException e) {
	    e.printStackTrace();
	}
    }

}

import javax.swing.JApplet;     // import the class JApplet
import java.awt.*;              // import the class awt (abstract windowing toolkit)

public class DrawCircuit extends JApplet{

    private Font fontType = null;   // Font variable - to set font type and size

    // Method in which the variables are initialised
    public void init(){

        // Set font type and size
        this.fontType = new Font("Dialog", Font.ITALIC, 12);
    }

    // Method that displays the graphics and text
    public void paint(Graphics circuit){

        // SET FONT
        circuit.setFont(this.fontType);

        // DRAW CAPACITOR
        // draw capacitor leads
        circuit.drawLine(100, 50, 150, 50);
        circuit.drawLine(170, 50, 230, 50);

        // draw capacitor plates
        circuit.drawLine(150, 25, 150, 75);
        circuit.drawLine(170, 25, 170, 75);

        // draw capacitor C
        circuit.drawString("C", 180, 40);

        // DRAW RESISTOR
        // draw resistor body
        circuit.drawRect(230, 37, 60, 26);

        // draw resistor lead
        circuit.drawLine(290, 50, 340, 50);

        // draw resistor R
        circuit.drawString("R", 255, 30);

        // DRAW BATTERY
        // draw battery terminals
        circuit.drawLine(255, 105, 255, 135);
        circuit.drawLine(270, 90, 270, 150);

        // draw battery leads
        circuit.drawLine(340, 50, 340, 120);
        circuit.drawLine(270, 120, 340, 120);
        circuit.drawLine(174, 120, 255, 120);

        // draw battery E
        circuit.drawString("E", 275, 110);

        // DRAW SWITCH
        // draw switch
        circuit.fillOval(171, 117, 6, 6);
        circuit.fillOval(149, 117, 6, 6);
        circuit.drawLine(156, 108, 175, 120);

        // switch leads
        circuit.drawLine(100, 120, 148, 120);
        circuit.drawLine(100, 50, 100, 120);

        // draw switch S
        circuit.drawString("S", 162, 106);

    }
}


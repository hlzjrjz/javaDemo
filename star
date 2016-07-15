package com.cx.test;

import javax.swing.*;
import java.awt.*;

/**
 * Created by cxspace on 16-7-15.
 */
public class Star {

    public static void main(String [] args){
        JFrame f = new JFrame();

        f.setSize(1024,768);

        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        MyPanel mp = new MyPanel();

        f.add(mp);

        new Thread(mp).start();

        f.setBackground(Color.black);

        f.setVisible(true);

    }
}

class MyPanel extends JPanel implements Runnable {



    @Override
    public void paint(Graphics g) {

        g.setColor(Color.white);

        for (int i = 0; i <= 20; i++) {
            g.drawString("*",(int) (Math.random() * 1024),(int) (Math.random() * 768));
        }
        g.fillOval(100, 100, 100, 100);
        g.setColor(Color.black);
        g.fillOval(120, 90, 100, 100);

    }


    @Override
    public void run() {
        while (true) {

            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

           this.repaint();
        }
    }
}

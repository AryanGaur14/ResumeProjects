import java.io.*;
import java.lang.*;
import java.awt.event.*;
import javax.swing.*;

class textArea extends JFrame implements ActionListener{
    JTextArea ta;
    JMenu File,Edit,View;
    JMenuItem Open,Save,SaveAs,Exit;

    static String path;
    static boolean flag=false;
    public textArea(){
        super("Notepad");
        ta=new JTextArea();
        File=new JMenu("File");
        Edit= new JMenu("Edit");
        View =new JMenu("View");

        Open=new JMenuItem("Open");
        Save=new JMenuItem("Save");
        SaveAs=new JMenuItem("SaveAs");
        Exit=new JMenuItem("Exit");
        Open.addActionListener(this);
        Open.setMnemonic(KeyEvent.VK_O);
        Save.addActionListener(this);
        Save.setMnemonic(KeyEvent.VK_S);

        SaveAs.addActionListener(this);
        SaveAs.setMnemonic(KeyEvent.VK_A);

        Exit.addActionListener(this);
        Exit.setMnemonic(KeyEvent.VK_E);

        File.add(Open);
        File.add(Save);
        File.add(SaveAs);
        File.add(Exit);


        JMenuBar mb=new JMenuBar();
        mb.add(File);
        mb.add(Edit);
        mb.add(View);
        setJMenuBar(mb);
        add(ta);

    }

    @Override
    public void actionPerformed(ActionEvent e){
        if(e.getSource()==SaveAs){
            JFileChooser fc=new JFileChooser();
            fc.showOpenDialog(this);
            File f=fc.getSelectedFile();
            path=String.valueOf(f);
            flag=true;
            try {

                FileOutputStream fos = new FileOutputStream(f);
                String text=ta.getText();
                fos.write(text.getBytes());
            }
            catch(IOException exp){}

        }
        else if(e.getSource()==Save){
            if(flag==false){
                JFileChooser fc=new JFileChooser();
                fc.showOpenDialog(this);
                File f=fc.getSelectedFile();
                path=String.valueOf(f);
                flag=true;
                try {

                    FileOutputStream fos = new FileOutputStream(f);
                    String text=ta.getText();
                    fos.write(text.getBytes());
                    fos.close();
                }
                catch(IOException exp){}

            }
            else{
                try {
                    FileOutputStream fos = new FileOutputStream(path);
                    fos.write(ta.getText().getBytes());
                    fos.close();
                }
                catch(IOException exp){}
            }
        }
        else if(e.getSource()==Exit){
            System.exit(0);
        }
        else if(e.getSource()==Open){
            JFileChooser fc=new JFileChooser();
            fc.showOpenDialog(this);
            File f=fc.getSelectedFile();
            try {
                FileInputStream fis = new FileInputStream(f);
                byte b[]=new byte[fis.available()];
                fis.read(b);
                String text=new String(b);
                ta.setText(text);
                fis.close();
            }
            catch(IOException exp){}
        }
    }
}
public class Notepad {
    public static void main(String arg[]){
        textArea ta=new textArea();
        ta.setVisible(true);
        ta.setSize(900,500);
        ta.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}

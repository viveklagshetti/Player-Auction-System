/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 *
 * @author 91762
 */
public class Helper {

    public static boolean deletefile(String path) {
        boolean f = false;
        try {
            File file = new File(path);
            f = file.delete();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    };
    
   public static boolean saveFile(InputStream is,String path){
       boolean f = false;
       try{
           //we read the data by byte InputStream  
        byte b[] = new byte[is.available()];  //this is the size of data 
        is.read(b);                           // Reading the data
           try ( //we write a data with the help of the FileOutputStream
                   FileOutputStream fos = new FileOutputStream(path)) {
               fos.write(b);                         // Writing a data
               fos.flush();
// we close the file...It is good habbit to close the file after writing the data
           } // Writing a data
           f = true;
       }catch(IOException e)
       {
          e.printStackTrace();
       }
       return f;
       
   }
}

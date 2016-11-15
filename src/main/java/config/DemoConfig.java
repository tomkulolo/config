package config;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Properties;

public class DemoConfig {
    public static void main(String[] args) throws IOException {
        Properties prop = new Properties();
	// 读取属性文件
        InputStream in = new BufferedInputStream(new FileInputStream("/run/mysql.properties"));
        prop.load(in); /// 加载属性列表
	Iterator<String> it = prop.stringPropertyNames().iterator();
        while (it.hasNext()) {
            String key = it.next();
	    System.out.println(key + ":" + prop.getProperty(key));
        }
        in.close();
    }
}

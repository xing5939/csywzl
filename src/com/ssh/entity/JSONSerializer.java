package com.ssh.entity;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

public class JSONSerializer {
	private static final String DEFAULT_CHARSET_NAME = "UTF-8";

    public static <T> String serialize(T object) {
        return JSON.toJSONString(object);
    }
    /**为解决fastJson重复数据，显示成ref问题*/
    public static <T> String serializeRep(T object) {
    	SerializerFeature feature = SerializerFeature.DisableCircularReferenceDetect;  
    	return JSON.toJSONString(object, feature);
    	/**会引起中文乱码问�?/
    	/*byte[] bytes = JSON.toJSONBytes(object,feature);  
        return new String(bytes);*/
    }
    public static <T> Object serializeJson(T object) {
        return JSON.toJSON(object);
    }
    
    public static <T> T deserialize(String string, Class<T> clz) {
        return JSON.parseObject(string, clz);
    }

    public static <T> T load(Path path, Class<T> clz) throws IOException {
        return deserialize(
                new String(Files.readAllBytes(path), DEFAULT_CHARSET_NAME), clz);
    }

    public static <T> void save(Path path, T object) throws IOException {
        if (Files.notExists(path.getParent())) {
            Files.createDirectories(path.getParent());
        }
        Files.write(path,
                serialize(object).getBytes(DEFAULT_CHARSET_NAME),
                StandardOpenOption.WRITE,
                StandardOpenOption.CREATE,
                StandardOpenOption.TRUNCATE_EXISTING);
    }
    
    /*
    public static void main(String[] args) {
        Person person1 = new Person();
        person1.setAddress("address");
        person1.setAge(11);
        person1.setName("amao");
        
        Person person2 = new Person();
        person2.setAddress("address");
        person2.setAge(11);
        person2.setName("amao");
        
        List<Person> lp = new ArrayList<Person>();
        lp.add(person1);
        lp.add(person2);
        System.out.println(serialize(lp));
    }
    */
}

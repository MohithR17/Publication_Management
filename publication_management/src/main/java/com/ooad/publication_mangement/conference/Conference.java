/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ooad.publication_mangement.conference;


import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

/**
 *
 * @author mohith
 */

public class Conference {
   private String name;
   private String email_id;
   private String password;
   private boolean isPremium = false;
   private int papers_download_limit = 3;
   private static MongoClient mongoClient;
   private static MongoCollection<Document> collection;
   static {
       mongoClient = MongoClients.create();
       MongoDatabase db = mongoClient.getDatabase("publication_management");
       collection = db.getCollection("users");
   }
   Conference()
   {
       
   }
   Conference(String name,String password,String mail) {
                this.name = name;
                this.password = password;
                this.email_id = mail;
		
	}
	
   public void insert_data() {
		Document document = new Document("name",name).append("email",email_id).append("password", password)
                        .append("isPremium",isPremium).append("papers_download_limit",papers_download_limit);
		collection.insertOne(document);
		
    }
//    public FindIterable<Document> get_data() {
//		return collection.find();
//    }
   public static boolean check_user_name_exists(String user_name){
       BasicDBObject search_query = new BasicDBObject();
       search_query.put("name",user_name);
       FindIterable<Document> cursor = collection.find(search_query);
       for(Document d:cursor){
           return true;
       }
       return false;
   }
   private static boolean check_password(String orginal_password,String given_password){
       return orginal_password.equals(given_password);
   }
   public static int check_credentials(String username_or_mail,String password){
        BasicDBObject search_query = new BasicDBObject();
        if(username_or_mail.contains("@"))
            search_query.put("email",username_or_mail);
        else
            search_query.put("name",username_or_mail);
        FindIterable<Document> cursor = collection.find(search_query);
        for(Document record : cursor){
            if(check_password(record.getString("password"),password) == true)
                return 1;
             else
                return -1;
        }
        return 0;
        
   }
}

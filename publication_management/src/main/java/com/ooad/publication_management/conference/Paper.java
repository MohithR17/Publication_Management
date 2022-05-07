/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ooad.publication_management.conference;

/**
 *
 * @author rajesh
 */
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Aggregates.match;
import static com.mongodb.client.model.Aggregates.project;
import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Projections.computed;
import java.util.List;
import org.bson.Document;
 import static java.util.Arrays.*;

/**
 *
 * @author duos1
 */

   
public class Paper {
   
   private static MongoClient mongoClient;
   private static MongoCollection<Document> collection;
   static {
       mongoClient = MongoClients.create();
       MongoDatabase db = mongoClient.getDatabase("publication_management");
       collection = db.getCollection("papers");
   }
   public void insert_paper(String title, String filename, String acronym) {
        
        //papers.add(new BasicDBObject("milestone_id", "2333"));
        
	Document document = new Document("title",title).append("filename",filename).append("conference",acronym);
        
	collection.insertOne(document);
		
    }
   public String search_paper(String title) {
        
        //papers.add(new BasicDBObject("milestone_id", "2333"));
        
	BasicDBObject search_query = new BasicDBObject();
        search_query.put("title",title);
        String name = "";
        FindIterable<Document> d = collection.find(search_query);
        for(Document p : d){
            name = p.getString("filename");
        }
        return name;
		
    }
}

package dao;
import java.util.ArrayList;
import dto.Liverpool;


public class LiverpoolRepository {
    private ArrayList<Liverpool>listOfLiverpools=new ArrayList<Liverpool>();
    private static LiverpoolRepository instance = new LiverpoolRepository();
    
    public static LiverpoolRepository getInstance() {
    	return instance;
    }
    public LiverpoolRepository(){
        
    	
        Liverpool liverpool1 = new Liverpool("Num1", 1);
        liverpool1.setCategory("유니폼");
        liverpool1.setId("21/22HOME");
        liverpool1.setPrice(119000);
        liverpool1.setDescription("[LFC Nike 스타디움 홈 21/22]" + "\r\n"
        		 + "LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool1.setSize("Free");
        liverpool1.setFile("resources/image/uniform/001.png");
        
        listOfLiverpools.add(liverpool1);
        
        Liverpool liverpool2 = new Liverpool("Num2", 2);
        liverpool2.setCategory("유니폼");
        liverpool2.setId("21/22AWAY");
        liverpool2.setPrice(119000);
        liverpool2.setDescription("[LFC Nike 스타디움 어웨이 21/22]" + "LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool2.setSize("Free");
        liverpool2.setFile("resources/image/uniform/002.png");
        
        listOfLiverpools.add(liverpool2);
        
        Liverpool liverpool3 = new Liverpool("Num3", 3);
        liverpool3.setCategory("유니폼");
        liverpool3.setId("21/22THIRD");
        liverpool3.setPrice(119000);
        liverpool3.setDescription("[LFC Nike 스타디움 써드 21/22]" + "LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool3.setSize("Free");
        liverpool3.setFile("resources/image/uniform/003.png");
        
        listOfLiverpools.add(liverpool3);
        
        Liverpool liverpool4 = new Liverpool("Num4", 4);
        liverpool4.setCategory("유니폼");
        liverpool4.setId("20/21HOME");
        liverpool4.setPrice(119000);
        liverpool4.setDescription("[LFC Nike 스타디움 홈 20/21]\" + \"LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool4.setSize("Free");
        liverpool4.setFile("resources/image/uniform/004.png");
        
        listOfLiverpools.add(liverpool4);
        
        Liverpool liverpool5 = new Liverpool("Num5", 5);
        liverpool5.setCategory("유니폼");
        liverpool5.setId("20/21AWAY");
        liverpool5.setPrice(119000);
        liverpool5.setDescription("[LFC Nike 스타디움 어웨이 20/21]\\\" + \\\"LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool5.setSize("Free");
        liverpool5.setFile("resources/image/uniform/005.png");
        
        listOfLiverpools.add(liverpool5);
        
        Liverpool liverpool6 = new Liverpool("Num6", 6);
        liverpool6.setCategory("유니폼");
        liverpool6.setId("20/21THIRD");
        liverpool6.setPrice(119000);
        liverpool6.setDescription("[LFC Nike 스타디움 써드 20/21]\\\" + \\\"LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool6.setSize("Free");
        liverpool6.setFile("resources/image/uniform/006.png");
        
        listOfLiverpools.add(liverpool6);
        
        Liverpool liverpool7 = new Liverpool("Num7", 7);
        liverpool7.setCategory("유니폼");
        liverpool7.setId("19/20HOME");
        liverpool7.setPrice(119000);
        liverpool7.setDescription("[LFC Nike 스타디움 홈 19/20]" + "LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool7.setSize("Free");
        liverpool7.setFile("resources/image/uniform/007.jpg");
        
        listOfLiverpools.add(liverpool7);
        
        Liverpool liverpool8 = new Liverpool("Num8", 8);
        liverpool8.setCategory("유니폼");
        liverpool8.setId("19/20AWAY");
        liverpool8.setPrice(119000);
        liverpool8.setDescription("[LFC Nike 스타디움 어웨이 19/20]" + "LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool8.setSize("Free");
        liverpool8.setFile("resources/image/uniform/008.jpg");
        
        listOfLiverpools.add(liverpool8);
        
        Liverpool liverpool9 = new Liverpool("Num9", 9);
        liverpool9.setCategory("유니폼");
        liverpool9.setId("19/20THIRD");
        liverpool9.setPrice(119000);
        liverpool9.setDescription("[LFC Nike 스타디움 써드 19/20]\" + \"LFC first-team players will wear Premier League font in all thirty-eight league fixtures. They will also wear one premier league patch to the right sleeve.");
        liverpool9.setSize("Free");
        liverpool9.setFile("resources/image/uniform/009.jpg");
       
        listOfLiverpools.add(liverpool9);
        
    }
    
        public ArrayList<Liverpool> getAllLiverpools(){
            return listOfLiverpools;
        }
        
        public Liverpool getLiverpoolById(String liverpoolId) {
        	
        	Liverpool liverpoolById = null;
        	
        	for(int i=0; i < listOfLiverpools.size(); i++) {
        		
        		Liverpool liverpool = listOfLiverpools.get(i);
        		if(liverpool != null && liverpool.getId() != null && liverpool.getId().contentEquals(liverpoolId)) {
        			liverpoolById = liverpool;
        			break;
        		}
        	}
        	return liverpoolById;
        }
        
        public void addLiverpool(Liverpool liverpool) {
            listOfLiverpools.add(liverpool);
        }
        
        public Liverpool getId(String id) {
        	Liverpool Id = null;
    		for (int i = 0; i < listOfLiverpools.size(); i++) {
    			Liverpool liverpool = listOfLiverpools.get(i);
    			if (liverpool != null && liverpool.getId() != null && liverpool.getId().equals(id)) {
    				Id = liverpool;
    				break;
    			}
    		}
    		return Id;
        }	
}

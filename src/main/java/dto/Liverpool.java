package dto;

public class Liverpool implements java.io.Serializable{
	   private static final long serialVersionUID = -4274700572038677000L;
	   
	    private String category;
	    private String id; 
	    private Integer price;
	    private String description;
		private String size;
	    private String file; 
	    private int compare;
	    private int quantity;
		public Liverpool() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Liverpool( String id, int compare) {
			super();

			this.id = id;
			this.compare = compare;
		}
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public Integer getPrice() {
			return price;
		}
		public void setPrice(Integer price) {
			this.price = price;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getSize() {
			return size;
		}
		public void setSize(String size) {
			this.size = size;
		}
		public String getFile() {
			return file;
		}
		public void setFile(String file) {
			this.file = file;
		}
		public int getCompare() {
			return compare;
		}
		public void setCompare(int compare) {
			this.compare = compare;
		} 
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
	}
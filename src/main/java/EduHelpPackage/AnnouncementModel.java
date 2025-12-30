package EduHelpPackage;

public class AnnouncementModel {
        private int annid;
        private String title;
        private String content;
        private String date;
		
        private String description;
        public AnnouncementModel(int annid, String title, String content, String date) {
			super();
			this.annid = annid;
			this.title = title;
			this.content = content;
			this.date = date;
		}

		public int getannid() {
			return annid;
		}

		public void setAnnid(int annid) {
			this.annid = annid;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}
        
}

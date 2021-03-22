<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>


<%!public enum Genre { 
		발라드, 댄스, 록_메탈, 인디음악,국내영화;
	};

	public class Music {
		private int no;
		private String singer;
		private String name;
		private String album;
		private Genre genre;
		private String type;

		public Music(int no, String singer, String name, String album, Genre genre, String type) {
			super();
			this.no = no;
			this.singer = singer;
			this.name = name;
			this.album = album;
			this.genre = genre;
			this.type = type;
		}

		public int getNo() {
			return no;
		}

		public void setNo(int no) {
			this.no = no;
		}

		public String getSinger() {
			return singer;
		}

		public void setSinger(String singer) {
			this.singer = singer;
		}
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getAlbum() {
			return album;
		}

		public void setAlbum(String album) {
			this.album = album;
		}

		public Genre getGenre() {
			return genre;
		}

		public void setGenre(Genre genre) {
			this.genre = genre;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		@Override
		public String toString() {
			return "Music [no=" + no + ", singer=" + singer + ", name=" + name + ", album=" + album
					+ ", genre=" + genre + ", type=" + type + "]";
		}
	};

	public class MusicList {
		private List<Music> mList = new ArrayList<Music>();

		public MusicList() {
			mList.add(new Music(1, "아이유(IU)","Celebrity","정규 5집 선공개", Genre.댄스, "싱글"));
			mList.add(new Music(2, "산들","취기를 빌려 (취향저격 그녀 X 산들)","취기를 빌려 (취향저격 그녀 X 산들)", Genre.발라드, "싱글"));
			mList.add(new Music(3, "방탄소년단","Dynamite","Dynamite", Genre.댄스, "싱글"));
			mList.add(new Music(4, "로제","On The Ground","R", Genre.록_메탈, "싱글"));
			mList.add(new Music(5, "브레이브걸스","롤린 (Rollin)","Rollin", Genre.댄스, "EP"));
			mList.add(new Music(6, "아이유(IU)","내 손을 잡아","최고의 사랑 OST Part.4", Genre.발라드, "OST"));
			mList.add(new Music(7, "카더가든","나무","나무", Genre.발라드, "싱글"));
			mList.add(new Music(8, "장범준","노래방에서","장범준 3집", Genre.록_메탈, "정규"));
			mList.add(new Music(9, "장기하와 얼굴들","사람의 마음","사람의 마음", Genre.인디음악, "정규"));
			mList.add(new Music(10, "잔나비","가을밤에 든 생각","잔나비 소곡집 I", Genre.인디음악, "EP"));
			mList.add(new Music(11, "볼빨간사춘기","워커홀릭","Two Five", Genre.인디음악, "EP"));
			mList.add(new Music(12, "오마이걸","비밀정원","비밀정원", Genre.댄스, "EP"));
			mList.add(new Music(13, "윤하","비가 내리는 날에는","STABLE MINDSET", Genre.발라드, "EP"));
			mList.add(new Music(14, "이승기","잘할게","The Project", Genre.발라드, "정규"));
			mList.add(new Music(15, "자전거 탄 풍경","너에게 난 나에게 넌","클래식 OST", Genre.국내영화, "OST"));
			mList.add(new Music(16, "벤","내 목소리 들리니","호텔 델루나 OST Part.9", Genre.발라드, "OST"));
			mList.add(new Music(17, "10CM","방에 모기가 있어","방에 모기가 있어 (4.4)", Genre.인디음악, "싱글"));
			mList.add(new Music(18, "우효","민들레","민들레", Genre.인디음악, "싱글"));
			mList.add(new Music(19, "폴킴","너를 만나","너를 만나", Genre.발라드, "싱글"));
			mList.add(new Music(20, "AKMU","Give Love","PLAY", Genre.댄스, "정규"));
			
			
		}

		public List<Music> getList() {
			return mList;
		}

		public void setList(List<Music> list) {
			this.mList = list;
		}

		// add 
		public void add(Music song) {
			mList.add(song);
		}

		// remove all 
		public void removeAll() {
			Iterator<Music> it = mList.iterator();
			while (it.hasNext()) {
				Music m = it.next();
				it.remove();
			}
		}

		// remove 
		public void remove(Music other) {
			Iterator<Music> it = mList.iterator();
			while (it.hasNext()) {
				Music m = it.next();
				if (m == other) {
					it.remove();
				}
			}
		}

		// get 
		public Music get(Music other) {
			Iterator<Music> it = mList.iterator();
			while (it.hasNext()) {
				Music m = it.next();
				if (m == other) {
					return m;
				}
			}
			return null;
		}

		// get (by name)
		public Music get(String name) {
			Music song = null;
			for (Music m : mList) {
				if (m != null && m.getName().equals(name)) {
					song = m;
					break;
				}
			}
			return song;
		}
		// get (by no)
		public Music get(int no) {
			Music song = null;
			for (Music m : mList) {
				if (m != null && m.getNo()==no) {
					song = m;
					break;
				}
			}
			return song;
		}
	}
	
	MusicList song = new MusicList();
	%>


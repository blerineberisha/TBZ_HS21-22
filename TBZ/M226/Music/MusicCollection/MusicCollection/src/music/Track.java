package music;

public class Track {
    private String artist;
    private String title;
    private String filename;

    public Track(String filename) {
        this.artist = artist;
        this.title = title;
        this.filename = filename;
    }

    public String getArtist() {
        artist = filename.replace("Audio/", "").replace(".mp3", "");
        String art[] = artist.split("-");
        artist = art[0];
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getTitle() {
        title = filename.replace("Audio/", "").replace(".mp3", "");
        String cut[] = title.split("-");
        title = cut[1];
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFilename() {
        filename = filename.replace("Audio/", "").replace(".mp3", "");
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}

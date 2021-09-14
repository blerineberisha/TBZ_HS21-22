package music;


import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Scanner;
import music.MusicPlayer;
import music.Track;

public class TrackReader {

    public ArrayList<Track> readTracks(String folder, final String suffix)
    {
        File audioFolder = new File(folder);
        ArrayList<Track> tracks = new ArrayList<Track>();
        File[] audioFiles = audioFolder.listFiles(new FilenameFilter() {
            public boolean accept(File dir, String name)
            {
                return name.toLowerCase().endsWith(suffix);
            }
        });
        // Put all the matching files into the organizer.
        for(File file : audioFiles) {
            Track trackDetails = decodeDetails(file);
            tracks.add(trackDetails);
        }
        return tracks;
    }
    private Track decodeDetails(File file)
    {
        // The information needed.
        String artist = "unknown" ;
        String title = "unknown";
        String filename = file.getPath();
        // Look for artist and title in the name of the file.
        String details = file.getName();
        String[] parts = details.split("-");
        if(parts.length == 2) {
            artist = parts[0];
            String titlePart = parts[1];
            // Remove a file-type suffix.
            parts = titlePart.split("\\.");
            if(parts.length >= 1) {
                title = parts[0];
            }
            else {
                title = titlePart;
            }
        }
        return new Track(artist, title, filename);
    }
}

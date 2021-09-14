package music;

import java.util.ArrayList;
import music.MusicPlayer;
import music.Track;
/**
 * A class to hold details of audio files.
 *
 * @author David J. Barnes and Michael Koelling
 *
 */
public class MusicOrganizer
{
    // An ArrayList for storing the file names of music files.
    private ArrayList<Track> files;
    // A player for the music files.
    private MusicPlayer player;
    private Track track;

    /**
     * Create a MusicOrganizer
     */
    public MusicOrganizer()
    {
        files = new ArrayList<Track>();
        player = new MusicPlayer();
    }

    /**
     * Add a file to the collection.
     * @param filename The file to be added.
     */
    public void addFile(String artist, String title, String filename)
    {
        files.add(new Track(artist, title, filename));
    }

    /**
     * Return the number of files in the collection.
     * @return The number of files in the collection.
     */
    public int getNumberOfFiles()
    {
        return files.size();
    }

    /**
     * List a file from the collection.
     * @param index The index of the file to be listed.
     */
    public void listFile(int index)
    {
        if(index >= 0 && index < files.size()) {
            Track filename = files.get(index);
            System.out.println(filename);
        }
    }
    //TODO: implement a listAllFiles method (task 2) use a for-each loop or lambda
    public void listAllFiles(){
        int index = 0;
        for (Track file: files) {
            System.out.println("["+index +"] "+file.getArtist() + "\n" + file.getTitle());
            index++;
        }
    }

    //TODO: implement a listMatching method (task 3)
    public void listMatching(String path){
        if (files.contains(path)){
            System.out.println("Found!" + "\n" + "enjoy :) ");
        }else {
            System.out.println("path does not exist :( ");
        }
    }
    public void playSample(String path){
        player.playSample(path);
    }
    /**
     * Find the index of the first file matching the given
     * search string.
     * @param searchString The string to match.
     * @return The index of the first occurrence, or -1 if
     *         no match is found.
     */
    public int findFirst(String searchString)
    {
        int index = 0;
        // Record that we will be searching until a match is found.
        boolean searching = true;

        while(searching && index < files.size()) {
            if(track.getFilename().contains(searchString)) {
                // A match. We can stop searching.
                searching = false;
            }
            else {
                // Move on.
                index++;
            }
        }
        if(searching) {
            // We didn�t find it.
            return -1;
        }
        else {
            // Return where it was found.
            return index;
        }
    }
    /**
     * Remove a file from the collection.
     * @param index The index of the file to be removed.
     */
    public void removeFile(int index)
    {
        if(index >= 0 && index < files.size()) {
            files.remove(index);
        }
    }
    /**
     * Start playing a file in the collection.
     * Use stopPlaying() to stop it playing.
     * @param index The index of the file to be played.
     */
    public void startPlaying(int index)
    {
        Track track = files.get(index);
        player.startPlaying(track.getFilename());
    }
    /**
     * Stop the player.
     */
    public void stopPlaying()
    {
        player.stop();
    }

    public void setFiles(ArrayList<Track> files) {
        this.files = files;
    }

    public ArrayList<Track> getFiles() {
        return files;
    }
}
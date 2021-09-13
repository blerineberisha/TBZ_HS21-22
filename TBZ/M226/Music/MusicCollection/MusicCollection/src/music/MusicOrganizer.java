package music;

import java.time.temporal.Temporal;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Scanner;

/**
 * A class to hold details of audio files.
 *
 * @author David J. Barnes and Michael Koelling
 */
public class MusicOrganizer {
    // An ArrayList for storing the file names of music files.
    private ArrayList<Track> files;
    // A player for the music files.
    private MusicPlayer player;

    /**
     * Create a MusicOrganizer
     */
    public MusicOrganizer() {
        files = new ArrayList<Track>();
        player = new MusicPlayer();
    }

    public ArrayList<Track> getFiles() {
        return files;
    }

    public void setFiles(ArrayList<Track> files) {
        this.files = files;
    }

    public MusicPlayer getPlayer() {
        return player;
    }

    public void setPlayer(MusicPlayer player) {
        this.player = player;
    }

    /**
     * Add a file to the collection.
     *
     * @param filename The file to be added.
     */
    public void addFile(String filename) {
        files.add(new Track(filename));
    }

    /**
     * Return the number of files in the collection.
     *
     * @return The number of files in the collection.
     */
    public int getNumberOfFiles() {
        return files.size();
    }

    /**
     * List a file from the collection.
     *
     * @param index The index of the file to be listed.
     */
    public void listFile(int index) {
        if (index >= 0 && index < files.size()) {
            String filename = files.get(index).getFilename();
            System.out.println(filename);
        }
    }


    //TODO: implement a listAllFiles method (task 2) use a for-each loop or lambda
    public void listAllFiles() {
        int index = 1;
        System.out.println("Songs in library: ");
        for (Track t : files) {
            System.out.println(index + ". " + t.getFilename());
            index++;
        }
    }

    //TODO: implement a listMatching method (task 3)
    public void listMatching() {
        System.out.println("Enter a song title or artist: ");
        Scanner scan = new Scanner(System.in);
        String input = scan.next();
        for (Track t : files) {
            if (t.getFilename().toLowerCase().contains(input.toLowerCase())) {
                System.out.println(t.getFilename());
            }
        }
    }

    /**
     * Find the index of the first file matching the given
     * search string.
     *
     * @param searchString The string to match.
     * @return The index of the first occurrence, or -1 if
     * no match is found.
     */
    public int findFirst(String searchString) {
        int index = 0;
        // Record that we will be searching until a match is found.
        boolean searching = true;

        while (searching && index < files.size()) {
            String filename = files.get(index).getFilename();
            if (filename.contains(searchString)) {
                // A match. We can stop searching.
                searching = false;
            } else {
                // Move on.
                index++;
            }
        }
        if (searching) {
            // We didn�t find it.
            return -1;
        } else {
            // Return where it was found.
            return index;
        }
    }

    /**
     * Remove a file from the collection.
     *
     * @param index The index of the file to be removed.
     */
    public void removeFile(int index) {
        if (index >= 0 && index < files.size()) {
            files.remove(index);
        }
    }

    /**
     * Start playing a file in the collection.
     * Use stopPlaying() to stop it playing.
     *
     * @param index The index of the file to be played.
     */
    public void startPlaying(int index) {
        String filename = files.get(index).getFilename();
        player.startPlaying(filename);
    }

    /**
     * Stop the player.
     */
    public void stopPlaying() {
        player.stop();
    }

   /* public void playAllSamples(){
        for (Track t:files) {
            player.playSample(t.getFilename());
        }
    }*/
}

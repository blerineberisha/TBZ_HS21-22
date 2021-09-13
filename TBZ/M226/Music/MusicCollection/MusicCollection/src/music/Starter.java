package music;

public class Starter {

    public static void main(String[] args) {
        MusicOrganizer mo = new MusicOrganizer();
        mo.addFile("Audio/Sammy Rae & the Friends - Whatever We Feel.mp3");
        mo.addFile("Audio/unknown - greekMusic.mp3");
        mo.addFile("Audio/Bo Burnham - Welcome to the Internet.mp3");
        mo.listAllFiles();
        //mo.playAllSamples();
    }
}
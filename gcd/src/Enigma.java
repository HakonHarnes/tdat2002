public class Enigma {
    private int p;
    private int q;
    private int e;

    public Enigma(int p, int q, int e){
        this.p = p;
        this.q = q;
        this.e = e;
    }

    public String decrypt(String[] cryptedMessages){
        String message = "";

        for(String cryptedMessage : cryptedMessages)
            message += decrypt(cryptedMessage);

        return message;
    }

    private String decrypt(String message){
        String decrypted = "";



        return decrypted;
    }

}

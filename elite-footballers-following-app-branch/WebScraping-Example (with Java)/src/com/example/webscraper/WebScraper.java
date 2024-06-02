package com.example.webscraper;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class WebScraper {
    public static void main(String[] args) {
        try {
            // URL der Webseite, die du scrapen möchtest
            String url = "https://www.srf.ch/";
            // User-Agent setzen, um als Browser erkannt zu werden
            Document doc = Jsoup.connect(url).userAgent("Mozilla/5.0").get();

            // Titel des Dokuments ausgeben, um zu bestätigen, dass die Seite geladen wird
            System.out.println("Document title: " + doc.title());

            // Elemente extrahieren, die mit einem spezifischen CSS-Query ausgewählt wurden
            // Da "h1.headline" möglicherweise nicht existiert, suchen wir nach etwas Häufigerem wie z.B. Artikel-Titeln
            Elements newsHeadlines = doc.select(".teaser__title"); // Verwende eine Klasse, die typisch für Nachrichtentitel ist

            // Überprüfen, wie viele Titel gefunden wurden
            System.out.println("Found " + newsHeadlines.size() + " headlines.");

            // Durch die extrahierten Elemente iterieren und Text ausgeben
            for (Element headline : newsHeadlines) {
                System.out.println(headline.text());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

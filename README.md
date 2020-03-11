# bio_WP
A cinema WP-project 
Ni ska bygga en film-site i WordPress.

G

- Siten ska ha ett lämpligt tema. Eget eller färdigt spelar ingen roll. //

- Det ska finnas en Movie-cpt som ska skapas i ett eget plugin.

- Varje film ska ha ett eget fält (Custom Meta Box) där användaren kan fylla i IMDb-id för filmen och spara det. 
För filmen https://www.imdb.com/title/tt3896198/ är id:t alltså tt3896198.
- Användaren ska kunna rejta filmer, antingen via egen eller tredjepartsplugin.
- Siten ska kunna visa de högst rejtade filmerna på förstasidan. Det spelar ingen roll om man gör det som en arkivsida eller widget.

VG

- Om man sparar en film ska ditt plugin kolla om IMDb-id är ifyllt. Om så är fallet ska ditt plugin hämta information om filmen från t ex http://www.omdbapi.com/ , uppdatera titeln på posten och handlingen ("plot") ska sparas som content.
  - Utgivningsår och skådespelare sparas som postmeta och visas om användaren tittar på en detaljsida (single post).
- Pluginet ska skapa sina datastrukturer (som cpt och liknande) när det aktiveras och städa efter sig när det avaktiveras.
- Metaboxen (för IMDb-id) ska skapas i ditt plugin, alltså inte via tredjepartsplugin som t ex ACF.
- Det ska finnas en egengjord filmlista (archive). Du måste visa att du förstår WPs arkitektur tillräckligt bra för att göra det på ett beständigt sätt.
  - I filmlistan ska de filmer som har ett IMDb-id ifyllt indikeras med en liten ikon eller liknande.
- Man kan bara få VG om man blir klar i tid.

Redovisning sker dels genom en zippad export av er site som ni laddar upp här, dels genom en muntlig redovisning inför mig. Datum för båda är 19 mars.

Om filen är för stor för att ladda upp, ta bort uploads i första hand för uppladdningen här. Skicka i så fall hela projektet till mig via WeTransfer eller liknande. Om du kör Local, starta siten, högerklicka på den i listan och välj Export. I annat fall, glöm inte bort att exportera databasen,
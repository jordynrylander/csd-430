/*
 * Jordyn Rylander
 * 11/14/2026
 * Module 4.2
 * Holds the character information from The Housemaid.
 */

package housemaid;

import java.io.Serializable;

public class HousemaidCharacterBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private String category;
    private String characterName;
    private String description;
    private String bookTitle;
    private String authorName;

// Required no-argument constructor for a JavaBean.
    public HousemaidCharacterBean() {
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCharacterName() {
        return characterName;
    }

    public void setCharacterName(String characterName) {
        this.characterName = characterName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }
}
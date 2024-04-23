/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author wess
 */
public class FamilyMember {
    private String name;
    private String relationshipType;
    public FamilyMember(int idOfThePersonTheyAreRelatedTo)
    {
        
    }

    public String getName() {
        return name;
    }

    public String getRelationshipType() {
        return relationshipType;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRelationshipType(String relationshipType) {
        this.relationshipType = relationshipType;
    }
}

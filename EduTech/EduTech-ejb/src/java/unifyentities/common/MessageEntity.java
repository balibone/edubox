/***************************************************************************************
*   Title:                  MessageEntity.java
*   Purpose:                UNIFY USER'S MAILBOX (SYSTEM MESSAGE + CHAT MESSAGE FROM MARKETPLACE & ERRANDS)
*   Created & Modified By:  TAN CHIN WEE WINSTON
*   Credits:                CHEN MENG, NIGEL LEE TJON YI, TAN CHIN WEE WINSTON, ZHU XINYI
*   Date:                   19 FEBRUARY 2018
*   Code version:           1.0
*   Availability:           === NO REPLICATE ALLOWED. YOU HAVE BEEN WARNED. ===
***************************************************************************************/
package unifyentities.common;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import commoninfrastructureentities.UserEntity;

@Entity(name = "Message")
public class MessageEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long messageID;
    private String messageSenderID;
    private String messageReceiverID;
    private String messageContent;
    private Long contentID;
    private String messageType;
    private String messageStatus;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date messageDate;
    
    @ManyToOne
    private UserEntity userEntity;
    
    @PrePersist
    public void creationDate() { this.messageDate = new Date(); }
    
    /* MISCELLANEOUS METHODS */
    public void createContentMessage(String messageSenderID, String messageReceiverID, 
            String messageContent, long contentID, String messageType) {
        this.messageSenderID = messageSenderID;
        this.messageReceiverID = messageReceiverID;
        this.messageContent = messageContent;
        this.contentID = contentID;
        this.messageType = messageType;
        this.messageStatus = "Unread";
    }
    
    /* GETTER METHODS */
    public Long getMessageID() { return messageID; }
    public String getMessageSenderID() { return messageSenderID; }
    public String getMessageReceiverID() { return messageReceiverID; }
    public String getMessageContent() { return messageContent; }
    public Long getContentID() { return contentID; }
    public String getMessageType() { return messageType; }
    public Date getMessageDate() { return messageDate; }
    public String getMessageStatus() { return messageStatus; }
    public UserEntity getUserEntity() { return userEntity; }
    
    /* SETTER METHODS */
    public void setMessageID(Long messageID) { this.messageID = messageID; }
    public void setMessageSenderID(String messageSenderID) { this.messageSenderID = messageSenderID; }
    public void setMessageReceiverID(String messageReceiverID) { this.messageReceiverID = messageReceiverID; }
    public void setMessageContent(String messageContent) { this.messageContent = messageContent; }
    public void setContentID(Long contentID) { this.contentID = contentID; } 
    public void setMessageType(String messageType) { this.messageType = messageType; }
    public void setMessageDate(Date messageDate) { this.messageDate = messageDate; }
    public void setMessageStatus(String messageStatus) { this.messageStatus = messageStatus; }
    public void setUserEntity(UserEntity userEntity) { this.userEntity = userEntity; }
}
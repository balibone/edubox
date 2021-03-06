package commoninfrastructureentities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import unifyentities.marketplace.ItemEntity;
import unifyentities.errands.JobEntity;

import unifyentities.voices.CompanyReviewEntity;
import unifyentities.voices.CompanyRequestEntity;
import unifyentities.marketplace.ItemReviewEntity;
import unifyentities.errands.JobReviewEntity;
import unifyentities.marketplace.ItemTransactionEntity;
import unifyentities.errands.JobTransactionEntity;

import unifyentities.common.ChatEntity;
import unifyentities.common.CompanyReviewReportEntity;
import unifyentities.common.ItemReportEntity;
import unifyentities.common.JobReportEntity;
import unifyentities.common.LikeListingEntity;
import unifyentities.common.MessageEntity;
import unifyentities.marketplace.ItemOfferEntity;
import unifyentities.errands.JobOfferEntity;
import unifyentities.shouts.ShoutsEntity;
import unifyentities.shouts.ShoutsLikesEntity;
import unifyentities.shouts.ShoutsCommentsEntity;
import unifyentities.shouts.ShoutsBookmarksEntity;
import unifyentities.shouts.ShoutsReportEntity;
import unifyentities.voices.ResumeEntity;
import unifyentities.event.EventRSVPEntity;

@Entity(name = "SystemUser")
public class UserEntity implements Serializable {
    @Id
    private String username;
    private String userSalutation;
    private String userFirstName;
    private String userLastName;
    private String userPassword;
    private String userType;
    //active by default
    private Boolean userActiveStatus = true;
    private String imgFileName = "unknown-user.png";
    private String email;
    private String contactNum;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date userCreationDate;
    
    
    /* OBJECT-ORIENTED MAPPINGS (UNIFY) */
    @OneToMany(mappedBy = "userEntity")
    private Set<ItemEntity> itemSet = new HashSet<ItemEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<JobEntity> jobSet = new ArrayList<JobEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ChatEntity> chatSet = new ArrayList<ChatEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ItemOfferEntity> itemOfferSet = new ArrayList<ItemOfferEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<JobOfferEntity> jobOfferSet = new ArrayList<JobOfferEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<LikeListingEntity> likeListingSet = new ArrayList<LikeListingEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<CompanyReviewReportEntity> companyReviewReportSet = new ArrayList<CompanyReviewReportEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ItemReportEntity> itemReportSet = new ArrayList<ItemReportEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<JobReportEntity> jobReportSet = new ArrayList<JobReportEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<MessageEntity> messageSet = new ArrayList<MessageEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<CompanyReviewEntity> companyReviewSet = new ArrayList<CompanyReviewEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<CompanyRequestEntity> companyRequestSet = new ArrayList<CompanyRequestEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ResumeEntity> resumeSet = new ArrayList<ResumeEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ItemReviewEntity> itemReviewSet = new ArrayList<ItemReviewEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<JobReviewEntity> jobReviewSet = new ArrayList<JobReviewEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ItemTransactionEntity> itemTransactionSet = new ArrayList<ItemTransactionEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<JobTransactionEntity> jobTransactionSet = new ArrayList<JobTransactionEntity>();
    //@OneToMany(mappedBy = "userEntity", cascade=CascadeType.ALL)
    //private Collection<ShoutsEntity> shoutsSet = new ArrayList<ShoutsEntity>();   
    @OneToMany(mappedBy = "userEntity")
    private Collection<ShoutsLikesEntity> shoutsLikesSet = new ArrayList<ShoutsLikesEntity>();    
    @OneToMany(mappedBy = "userEntity")
    private Collection<ShoutsCommentsEntity> shoutsCommentsSet = new ArrayList<ShoutsCommentsEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ShoutsBookmarksEntity> shoutsBookmarksSet = new ArrayList<ShoutsBookmarksEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<ShoutsReportEntity> shoutsReportSet = new ArrayList<ShoutsReportEntity>();
    @OneToMany(mappedBy = "userEntity")
    private Collection<EventRSVPEntity> eventRsvpSet = new ArrayList<EventRSVPEntity>();
    
    @PrePersist
    public void creationDate() { 
        this.userCreationDate = new Date(); }
    
    /* DEFAULT CONSTRUCTOR */
    public UserEntity() {
        this.username = "";
        this.userSalutation = "";
        this.userFirstName = "";
        this.userLastName = "";
        this.userPassword = "";
        this.userType = "";
        this.email = "";
        this.contactNum = "";
        this.userCreationDate = new Date();
    }

    public UserEntity(String username, String userSalutation, String userFirstName, String userLastName, String userPassword, String userType, String imgFileName, String email, String contactNum) {
        this.username = username;
        this.userSalutation = userSalutation;
        this.userFirstName = userFirstName;
        this.userLastName = userLastName;
        this.userPassword = userPassword;
        this.email = email;
        this.contactNum = contactNum;
        this.userType = userType;
        this.imgFileName = imgFileName;
        this.userActiveStatus = true;
        this.userCreationDate = new Date();
    }
    //for front end registration page
    public UserEntity(String salutation, String firstName, String lastName, String username, String password, String email, String contactNum) {
        this.username = username;
        this.userSalutation = salutation;
        this.userFirstName = firstName;
        this.userLastName = lastName;
        this.userPassword = password;
        this.email = email;
        this.contactNum = contactNum;
        this.userType = "student";
        this.imgFileName = "defaultPhoto.jpg";
        this.userActiveStatus = true;
        this.userCreationDate = new Date();
    }
    /* GETTER METHODS */
    public String getUsername() { return username; }
    public String getUserPassword() { return userPassword; }
    public String getUserType() { return userType; }
    public Boolean getUserActiveStatus() { return userActiveStatus; }
    public Date getUserCreationDate() { return userCreationDate; }
    public String getImgFileName() { return imgFileName; }
    public String getUserSalutation() { return userSalutation; }
    public String getUserLastName() { return userLastName;}
    public String getUserFirstName() { return userFirstName; }
    
    /* GETTER METHODS (UNIFY) */
    public Set<ItemEntity> getItemSet() { return itemSet; }
    public Collection<JobEntity> getJobSet() { return jobSet; }
    public Collection<ChatEntity> getChatSet() { return chatSet; }
    public Collection<ItemOfferEntity> getItemOfferSet() { return itemOfferSet; }
    public Collection<JobOfferEntity> getJobOfferSet() { return jobOfferSet; }
    public Collection<LikeListingEntity> getLikeListingSet() { return likeListingSet; }
    public Collection<CompanyReviewReportEntity> getCompanyReviewReportSet() { return companyReviewReportSet; }
    public Collection<ItemReportEntity> getItemReportSet() { return itemReportSet; }
    public Collection<JobReportEntity> getJobReportSet() { return jobReportSet; }
    public Collection<MessageEntity> getMessageSet() { return messageSet; }
    public Collection<CompanyReviewEntity> getCompanyReviewSet() { return companyReviewSet; }
    public Collection<CompanyRequestEntity> getCompanyRequestSet() { return companyRequestSet; }
    public Collection<ResumeEntity> getResumeSet() { return resumeSet; }
    public Collection<ItemReviewEntity> getItemReviewSet() { return itemReviewSet; }
    public Collection<JobReviewEntity> getJobReviewSet() { return jobReviewSet; }
    public Collection<ItemTransactionEntity> getItemTransactionSet() { return itemTransactionSet; }
    public Collection<JobTransactionEntity> getJobTransactionSet() { return jobTransactionSet; }
    //public Collection<ShoutsEntity> getShoutsSet() { return shoutsSet; }
    public Collection<ShoutsLikesEntity> getShoutsLikesSet() { return shoutsLikesSet; }
    public Collection<ShoutsCommentsEntity> getShoutsCommentsSet() { return shoutsCommentsSet; }
    public Collection<ShoutsBookmarksEntity> getShoutsBookmarksSet() { return shoutsBookmarksSet; }
    public Collection<ShoutsReportEntity> getShoutsReportSet() { return shoutsReportSet; }
    public Collection<EventRSVPEntity> getEventRsvpSet() { return eventRsvpSet; }
    
    /* SETTER METHODS */
    public void setUsername(String username) { this.username = username; }
    public void setUserPassword(String userPassword) { this.userPassword = userPassword; }
    public void setUserType(String userType) { this.userType = userType; }
    public void setUserActiveStatus(Boolean userActiveStatus) { this.userActiveStatus = userActiveStatus; }
    public void setUserCreationDate(Date userCreationDate) { this.userCreationDate = userCreationDate; }
    public void setImgFileName(String imgFileName) {this.imgFileName = imgFileName;}
    public void setUserSalutation(String userSalutation) {this.userSalutation= userSalutation;}
    public void setUserLastName(String userLastName) {this.userLastName= userLastName;}
    public void setUserFirstName(String userFirstName) {this.userFirstName= userFirstName;}

    /* SETTER METHODS (UNIFY) */
    public void setItemSet(Set<ItemEntity> itemSet) { this.itemSet = itemSet; }
    public void setJobSet(Collection<JobEntity> jobSet) { this.jobSet = jobSet; }
    public void setChatSet(Collection<ChatEntity> chatSet) { this.chatSet = chatSet; }
    public void setItemOfferSet(Collection<ItemOfferEntity> itemOfferSet) { this.itemOfferSet = itemOfferSet; }
    public void setJobOfferSet(Collection<JobOfferEntity> jobOfferSet) { this.jobOfferSet = jobOfferSet; }
    public void setLikeListingSet(Collection<LikeListingEntity> likeListingSet) { this.likeListingSet = likeListingSet; }
    public void setCompanyReviewReportSet(Collection<CompanyReviewReportEntity> companyReviewReportSet) { this.companyReviewReportSet = companyReviewReportSet; }
    public void setItemReportSet(Collection<ItemReportEntity> itemReportSet) { this.itemReportSet = itemReportSet; }
    public void setJobReportSet(Collection<JobReportEntity> jobReportSet) { this.jobReportSet = jobReportSet; }
    public void setMessageSet(Collection<MessageEntity> messageSet) { this.messageSet = messageSet; }
    public void setCompanyReviewSet(Collection<CompanyReviewEntity> companyReviewSet) { this.companyReviewSet = companyReviewSet; }
    public void setCompanyRequestSet(Collection<CompanyRequestEntity> companyRequestSet) { this.companyRequestSet = companyRequestSet; }
    public void setResumeSet(Collection<ResumeEntity> resumeSet) { this.resumeSet = resumeSet; }
    public void setItemReviewSet(Collection<ItemReviewEntity> itemReviewSet) { this.itemReviewSet = itemReviewSet; }
    public void setJobReviewSet(Collection<JobReviewEntity> jobReviewSet) { this.jobReviewSet = jobReviewSet; }
    public void setItemTransactionSet(Collection<ItemTransactionEntity> itemTransactionSet) { this.itemTransactionSet = itemTransactionSet; }
    public void setJobTransactionSet(Collection<JobTransactionEntity> jobTransactionSet) { this.jobTransactionSet = jobTransactionSet; }
    //public void setShoutsSet(Collection<ShoutsEntity> shoutsSet) { this.shoutsSet = shoutsSet; }
    public void setShoutsLikesSet(Collection<ShoutsLikesEntity> shoutsLikesSet) { this.shoutsLikesSet = shoutsLikesSet; }
    public void setShoutsCommentsSet(Collection<ShoutsCommentsEntity> shoutsCommentsSet) { this.shoutsCommentsSet = shoutsCommentsSet; }
    public void setShoutsBookmarksSet(Collection<ShoutsBookmarksEntity> shoutsBookmarksSet) { this.shoutsBookmarksSet = shoutsBookmarksSet; }
    public void setShoutsReportSet(Collection<ShoutsReportEntity> shoutsReportSet) { this.shoutsReportSet = shoutsReportSet; }
    public void setEventRsvpSet(Collection<EventRSVPEntity> eventRsvpSet) { this.eventRsvpSet = eventRsvpSet; }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNum() {
        return contactNum;
    }

    public void setContactNum(String contactNum) {
        this.contactNum = contactNum;
    }

}
.class Lorg/telegram/messenger/MessagesController$106;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelViews:Landroid/util/SparseArray;

.field final synthetic val$chatInfoToUpdate:Ljava/util/ArrayList;

.field final synthetic val$contactsIds:Ljava/util/ArrayList;

.field final synthetic val$editingMessages:Ljava/util/HashMap;

.field final synthetic val$interfaceUpdateMaskFinal:I

.field final synthetic val$messages:Ljava/util/HashMap;

.field final synthetic val$printChangedArg:Z

.field final synthetic val$updatesOnMainThread:Ljava/util/ArrayList;

.field final synthetic val$webPages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 6703
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$106;->val$interfaceUpdateMaskFinal:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$106;->val$updatesOnMainThread:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$106;->val$webPages:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$106;->val$messages:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$106;->val$editingMessages:Ljava/util/HashMap;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$106;->val$printChangedArg:Z

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$106;->val$contactsIds:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$106;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    iput-object p10, p0, Lorg/telegram/messenger/MessagesController$106;->val$channelViews:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 6706
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$106;->val$interfaceUpdateMaskFinal:I

    move/from16 v41, v0

    .line 6707
    .local v41, "updateMask":I
    const/16 v24, 0x0

    .line 6709
    .local v24, "hasDraftUpdates":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 6710
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6711
    .local v12, "dbUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6712
    .local v13, "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v15, 0x0

    .line 6713
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_29

    .line 6714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6715
    .local v39, "update":Lorg/telegram/tgnet/TLRPC$Update;
    new-instance v37, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$User;-><init>()V

    .line 6716
    .local v37, "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v39

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v37

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 6717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v39

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 6720
    .local v11, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v2, Lorg/telegram/ui/Apogram/UserChanges/UpdateBiz;

    invoke-direct {v2}, Lorg/telegram/ui/Apogram/UserChanges/UpdateBiz;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v2, v11, v0}, Lorg/telegram/ui/Apogram/UserChanges/UpdateBiz;->insertUpdate(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Update;)Z

    .line 6722
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v36

    .line 6723
    .local v36, "specificPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "specific_contact"

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 6724
    .local v35, "specificContact":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "specific_c"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v28

    .line 6727
    .local v28, "isSpecific":Z
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v2, :cond_2

    .line 6728
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    if-eqz v2, :cond_1

    .line 6729
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;Z)V

    .line 6713
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 6730
    :cond_1
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    if-eqz v2, :cond_0

    .line 6731
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;Z)V

    goto :goto_1

    .line 6733
    :cond_2
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v2, :cond_c

    .line 6735
    const/16 v27, 0x0

    .line 6736
    .local v27, "isInvisible":Z
    const/16 v23, 0x0

    .line 6738
    .local v23, "getOnline":Z
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v2, :cond_5

    .line 6739
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v4, -0x64

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 6740
    const/16 v27, 0x1

    .line 6748
    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 6749
    move-object/from16 v0, v39

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 6750
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 6752
    :cond_4
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v0, v37

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 6753
    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6754
    move-object/from16 v0, v39

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 6755
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/NotificationsController;->setLastOnlineFromOtherDevice(I)V

    goto :goto_1

    .line 6741
    :cond_5
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v2, :cond_6

    .line 6742
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v4, -0x65

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 6743
    const/16 v27, 0x1

    goto :goto_2

    .line 6744
    :cond_6
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v2, :cond_3

    .line 6745
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v4, -0x66

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 6746
    const/16 v27, 0x1

    goto :goto_2

    .line 6758
    :cond_7
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    .line 6759
    const/16 v27, 0x1

    .line 6761
    :cond_8
    if-eqz v35, :cond_0

    if-eqz v28, :cond_0

    .line 6762
    if-eqz v11, :cond_9

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_9

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v2, :cond_9

    .line 6763
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6764
    const/16 v23, 0x1

    .line 6767
    :cond_9
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    if-le v2, v4, :cond_a

    .line 6768
    const/16 v23, 0x1

    .line 6770
    :cond_a
    if-nez v27, :cond_b

    if-eqz v23, :cond_b

    .line 6771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "GetOnline"

    const v5, 0x7f0705a9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/MessagesController;->SuperNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 6773
    :cond_b
    if-nez v27, :cond_0

    .line 6774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "GetOffline"

    const v5, 0x7f0705a8

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/MessagesController;->SuperNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 6780
    .end local v23    # "getOnline":Z
    .end local v27    # "isInvisible":Z
    :cond_c
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v2, :cond_11

    .line 6781
    if-eqz v11, :cond_10

    .line 6782
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 6783
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 6784
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 6786
    :cond_d
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 6787
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6789
    :cond_e
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    if-eqz v2, :cond_f

    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 6790
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    invoke-virtual {v2, v4, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6792
    :cond_f
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 6794
    :cond_10
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 6795
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 6796
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 6797
    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6799
    :cond_11
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v2, :cond_13

    .line 6800
    if-eqz v11, :cond_12

    .line 6801
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 6803
    :cond_12
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v37

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 6804
    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6806
    if-eqz v35, :cond_0

    if-eqz v28, :cond_0

    .line 6807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "changed_photo"

    const v5, 0x7f070647

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/MessagesController;->SuperNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 6811
    :cond_13
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v2, :cond_15

    .line 6812
    if-eqz v11, :cond_14

    .line 6813
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 6814
    sget-object v2, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$106$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lorg/telegram/messenger/MessagesController$106$1;-><init>(Lorg/telegram/messenger/MessagesController$106;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6821
    :cond_14
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 6822
    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6824
    if-eqz v35, :cond_0

    if-eqz v28, :cond_0

    .line 6825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "changed_phone"

    const v5, 0x7f070646

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/MessagesController;->SuperNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 6829
    :cond_15
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v2, :cond_1e

    move-object/from16 v42, v39

    .line 6830
    check-cast v42, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    .line 6831
    .local v42, "updateNotifySettings":Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v2, :cond_0

    move-object/from16 v0, v42

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;

    if-eqz v2, :cond_0

    .line 6832
    if-nez v15, :cond_16

    .line 6833
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 6834
    .local v34, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 6837
    .end local v34    # "preferences":Landroid/content/SharedPreferences;
    :cond_16
    move-object/from16 v0, v42

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_19

    .line 6838
    move-object/from16 v0, v42

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 6845
    .local v16, "dialog_id":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 6846
    .local v14, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v14, :cond_17

    .line 6847
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 6849
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "silent_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6850
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    if-le v2, v4, :cond_1c

    .line 6851
    const/16 v38, 0x0

    .line 6852
    .local v38, "until":I
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    const v5, 0x1e13380

    add-int/2addr v4, v5

    if-le v2, v4, :cond_1b

    .line 6853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6854
    if-eqz v14, :cond_18

    .line 6855
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v4, 0x7fffffff

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 6865
    :cond_18
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move/from16 v0, v38

    int-to-long v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1

    or-long/2addr v4, v6

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 6866
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    goto/16 :goto_1

    .line 6839
    .end local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "dialog_id":J
    .end local v38    # "until":I
    :cond_19
    move-object/from16 v0, v42

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_1a

    .line 6840
    move-object/from16 v0, v42

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .restart local v16    # "dialog_id":J
    goto/16 :goto_3

    .line 6842
    .end local v16    # "dialog_id":J
    :cond_1a
    move-object/from16 v0, v42

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .restart local v16    # "dialog_id":J
    goto/16 :goto_3

    .line 6858
    .restart local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v38    # "until":I
    :cond_1b
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v38, v0

    .line 6859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyuntil_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6861
    if-eqz v14, :cond_18

    .line 6862
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move/from16 v0, v38

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto/16 :goto_4

    .line 6868
    .end local v38    # "until":I
    :cond_1c
    if-eqz v14, :cond_1d

    .line 6869
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v4, 0x0

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 6871
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6872
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_1

    .line 6875
    .end local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "dialog_id":J
    .end local v42    # "updateNotifySettings":Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;
    :cond_1e
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v2, :cond_21

    .line 6876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v39

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v4, v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 6877
    .restart local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v39

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 6878
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_1f

    .line 6879
    if-nez v14, :cond_20

    instance-of v2, v10, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v2, :cond_20

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_20

    .line 6880
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$106$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/MessagesController$106$2;-><init>(Lorg/telegram/messenger/MessagesController$106;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6890
    :cond_1f
    :goto_5
    move/from16 v0, v41

    or-int/lit16 v0, v0, 0x2000

    move/from16 v41, v0

    .line 6891
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v39

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    goto/16 :goto_1

    .line 6886
    :cond_20
    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v2, :cond_1f

    if-eqz v14, :cond_1f

    .line 6887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v4, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_5

    .line 6892
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_21
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v2, :cond_22

    .line 6893
    move/from16 v0, v41

    or-int/lit16 v0, v0, 0x4000

    move/from16 v41, v0

    goto/16 :goto_1

    .line 6894
    :cond_22
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v2, :cond_23

    .line 6895
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V

    goto/16 :goto_1

    .line 6896
    :cond_23
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v2, :cond_24

    .line 6897
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->order:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->reorderStickers(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 6898
    :cond_24
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v2, :cond_25

    .line 6899
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto/16 :goto_1

    .line 6900
    :cond_25
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v2, :cond_26

    .line 6901
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 6902
    .local v20, "editor2":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "lastGifLoadTime"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 6903
    .end local v20    # "editor2":Landroid/content/SharedPreferences$Editor;
    :cond_26
    move-object/from16 v0, v39

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v2, :cond_0

    .line 6904
    const/16 v24, 0x1

    move-object/from16 v2, v39

    .line 6906
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v33, v0

    .line 6907
    .local v33, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_27

    .line 6908
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 6914
    .local v18, "did":J
    :goto_6
    move-object/from16 v0, v39

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    goto/16 :goto_1

    .line 6909
    .end local v18    # "did":J
    :cond_27
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_28

    .line 6910
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .restart local v18    # "did":J
    goto :goto_6

    .line 6912
    .end local v18    # "did":J
    :cond_28
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .restart local v18    # "did":J
    goto :goto_6

    .line 6917
    .end local v11    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v18    # "did":J
    .end local v28    # "isSpecific":Z
    .end local v33    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    .end local v35    # "specificContact":Z
    .end local v36    # "specificPreferences":Landroid/content/SharedPreferences;
    .end local v37    # "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v39    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_29
    if-eqz v15, :cond_2a

    .line 6918
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6919
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6921
    :cond_2a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v13, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 6922
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v12, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 6925
    .end local v8    # "a":I
    .end local v12    # "dbUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v13    # "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 6926
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessagesController$106;->val$webPages:Ljava/util/HashMap;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6927
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 6928
    .local v22, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 6929
    .local v9, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v9, :cond_2c

    .line 6930
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 6931
    .local v44, "webpage":Lorg/telegram/tgnet/TLRPC$WebPage;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6932
    .local v3, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const-wide/16 v16, 0x0

    .line 6933
    .restart local v16    # "dialog_id":J
    move-object/from16 v0, v44

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-nez v2, :cond_2d

    move-object/from16 v0, v44

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-eqz v2, :cond_2f

    .line 6934
    :cond_2d
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_30

    .line 6935
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v44

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 6936
    if-nez v8, :cond_2e

    .line 6937
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    .line 6938
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6940
    :cond_2e
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6934
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 6943
    .end local v8    # "a":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v44

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6945
    :cond_30
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 6946
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 6947
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 6953
    .end local v3    # "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v16    # "dialog_id":J
    .end local v22    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v44    # "webpage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_31
    const/16 v40, 0x0

    .line 6954
    .local v40, "updateDialogs":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 6955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 6956
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 6957
    .local v29, "key":Ljava/lang/Long;
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    .line 6958
    .local v43, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v43

    invoke-virtual {v2, v4, v5, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    goto :goto_9

    .line 6960
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v29    # "key":Ljava/lang/Long;
    .end local v43    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_32
    const/16 v40, 0x1

    .line 6965
    .end local v25    # "i$":Ljava/util/Iterator;
    :cond_33
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 6966
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 6967
    .local v32, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 6968
    .local v16, "dialog_id":Ljava/lang/Long;
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 6969
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/telegram/messenger/MessageObject;

    .line 6970
    .local v31, "oldObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v31, :cond_35

    .line 6971
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_35

    .line 6972
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/telegram/messenger/MessageObject;

    .line 6973
    .local v30, "newMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v2, v4, :cond_37

    .line 6974
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6975
    move-object/from16 v0, v30

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_34

    move-object/from16 v0, v30

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_34

    .line 6976
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6978
    :cond_34
    const/16 v40, 0x1

    .line 6983
    .end local v8    # "a":I
    .end local v30    # "newMessage":Lorg/telegram/messenger/MessageObject;
    :cond_35
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 6961
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v16    # "dialog_id":Ljava/lang/Long;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v31    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .end local v32    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_36
    if-eqz v24, :cond_33

    .line 6962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 6963
    const/16 v40, 0x1

    goto/16 :goto_a

    .line 6971
    .restart local v8    # "a":I
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v16    # "dialog_id":Ljava/lang/Long;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v30    # "newMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v31    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .restart local v32    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 6986
    .end local v8    # "a":I
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v16    # "dialog_id":Ljava/lang/Long;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v30    # "newMessage":Lorg/telegram/messenger/MessageObject;
    .end local v31    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .end local v32    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_38
    if-eqz v40, :cond_39

    .line 6987
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6990
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$printChangedArg:Z

    if-eqz v2, :cond_3a

    .line 6991
    or-int/lit8 v41, v41, 0x40

    .line 6993
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$contactsIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 6994
    or-int/lit8 v41, v41, 0x1

    .line 6995
    move/from16 v0, v41

    or-int/lit16 v0, v0, 0x80

    move/from16 v41, v0

    .line 6997
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 6998
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_3c

    .line 6999
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 7000
    .local v26, "info":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    .line 6998
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 7003
    .end local v8    # "a":I
    .end local v26    # "info":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$106;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 7004
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessagesController$106;->val$channelViews:Landroid/util/SparseArray;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7006
    :cond_3d
    if-eqz v41, :cond_3e

    .line 7007
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7009
    :cond_3e
    return-void
.end method

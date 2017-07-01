.class Lorg/telegram/messenger/ContactsController$6$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$6;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 714
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v8, "toDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 717
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 719
    .local v2, "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_4

    .line 720
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 721
    .local v10, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 722
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v9, :cond_0

    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 719
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_1
    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 745
    .end local v0    # "a":I
    .end local v2    # "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v10    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :catch_0
    move-exception v3

    .line 746
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 751
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-virtual {v12, v8}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;)V

    .line 753
    :cond_3
    return-void

    .line 727
    .restart local v0    # "a":I
    .restart local v2    # "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    const/4 v7, 0x0

    .line 728
    .local v7, "removed":I
    :try_start_1
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v12, v12, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 729
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 730
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v11, 0x0

    .line 731
    .local v11, "was":Z
    const/4 v0, 0x0

    :goto_3
    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_7

    .line 732
    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 733
    .local v6, "phone":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 734
    .restart local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v9, :cond_6

    .line 735
    const/4 v11, 0x1

    .line 736
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 738
    add-int/lit8 v0, v0, -0x1

    .line 731
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 741
    .end local v6    # "phone":Ljava/lang/String;
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    if-eqz v11, :cond_8

    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-nez v12, :cond_5

    .line 742
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

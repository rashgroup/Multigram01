.class Lorg/telegram/messenger/ContactsController$6;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$contactHashMap:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$force:Z

.field final synthetic val$request:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZ)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 566
    const/4 v13, 0x1

    .line 590
    .local v13, "disableDeletion":Z
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 591
    .local v11, "contactShortHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 592
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/ContactsController$Contact;

    .line 593
    .local v9, "c":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    iget-object v2, v9, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 594
    iget-object v2, v9, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 598
    .end local v8    # "a":I
    .end local v9    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :cond_1
    const-string/jumbo v2, "tmessages"

    const-string/jumbo v3, "start read contacts from phone"

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    if-nez v2, :cond_2

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    # invokes: Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z
    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->access$200(Lorg/telegram/messenger/ContactsController;)Z

    .line 602
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    # invokes: Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->access$500(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v7

    .line 603
    .local v7, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v6, "contactsBookShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v22

    .line 606
    .local v22, "oldCount":I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v27, "toImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 608
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 609
    .local v23, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 610
    .local v18, "id":Ljava/lang/Integer;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/ContactsController$Contact;

    .line 611
    .local v29, "value":Lorg/telegram/messenger/ContactsController$Contact;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/ContactsController$Contact;

    .line 612
    .local v15, "existing":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v15, :cond_4

    .line 613
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_2
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_4

    .line 614
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/ContactsController$Contact;

    .line 615
    .restart local v9    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v9, :cond_9

    .line 616
    move-object v15, v9

    .line 617
    iget v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 623
    .end local v8    # "a":I
    .end local v9    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_4
    if-eqz v15, :cond_a

    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_6
    const/16 v21, 0x1

    .line 624
    .local v21, "nameChanged":Z
    :goto_3
    if-eqz v15, :cond_7

    if-eqz v21, :cond_e

    .line 625
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_4
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_d

    .line 626
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 627
    .local v26, "sphone":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    if-eqz v15, :cond_b

    .line 629
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 630
    .local v20, "index":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_b

    .line 631
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 632
    .local v12, "deleted":Ljava/lang/Integer;
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 625
    .end local v12    # "deleted":Ljava/lang/Integer;
    .end local v20    # "index":I
    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 613
    .end local v21    # "nameChanged":Z
    .end local v26    # "sphone":Ljava/lang/String;
    .restart local v9    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 623
    .end local v8    # "a":I
    .end local v9    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_a
    const/16 v21, 0x0

    goto :goto_3

    .line 638
    .restart local v8    # "a":I
    .restart local v21    # "nameChanged":Z
    .restart local v26    # "sphone":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v2, :cond_8

    .line 639
    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 643
    :cond_c
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 644
    .local v19, "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v2, v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 645
    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v0, v8

    move-wide/from16 v30, v0

    const/16 v32, 0x20

    shl-long v30, v30, v32

    or-long v2, v2, v30

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 646
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 647
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 648
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 649
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 652
    .end local v19    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v26    # "sphone":Ljava/lang/String;
    :cond_d
    if-eqz v15, :cond_3

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 656
    .end local v8    # "a":I
    :cond_e
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_6
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_12

    .line 657
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 658
    .restart local v26    # "sphone":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 660
    .restart local v20    # "index":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_11

    .line 661
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v2, :cond_f

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 663
    .local v10, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v10, :cond_10

    .line 664
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v28

    .line 665
    .local v28, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v28, :cond_f

    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 656
    .end local v10    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v28    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 670
    .restart local v10    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_10
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 671
    .restart local v19    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v2, v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 672
    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v0, v8

    move-wide/from16 v30, v0

    const/16 v32, 0x20

    shl-long v30, v30, v32

    or-long v2, v2, v30

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 673
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 674
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 675
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 676
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 679
    .end local v10    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v19    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    :cond_11
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v3, v15, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 681
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 682
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 683
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 686
    .end local v20    # "index":I
    .end local v26    # "sphone":Ljava/lang/String;
    :cond_12
    iget-object v2, v15, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 691
    .end local v8    # "a":I
    .end local v15    # "existing":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v18    # "id":Ljava/lang/Integer;
    .end local v21    # "nameChanged":Z
    .end local v23    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v29    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v2

    move/from16 v0, v22

    if-ne v0, v2, :cond_15

    .line 692
    const-string/jumbo v2, "tmessages"

    const-string/jumbo v3, "contacts not changed!"

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_14
    :goto_8
    return-void

    .line 695
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 696
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 697
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    .line 699
    :cond_16
    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 700
    new-instance v2, Lorg/telegram/messenger/ContactsController$6$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/ContactsController$6$1;-><init>(Lorg/telegram/messenger/ContactsController$6;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 783
    :cond_17
    const-string/jumbo v2, "tmessages"

    const-string/jumbo v3, "done processing contacts"

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v2, :cond_1d

    .line 786
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 794
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 795
    .local v4, "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->access$002(Lorg/telegram/messenger/ContactsController;I)I

    .line 796
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 797
    .local v5, "count":I
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_9
    if-ge v8, v5, :cond_14

    .line 798
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v16, "finalToImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    mul-int/lit16 v2, v8, 0x1f4

    add-int/lit8 v3, v8, 0x1

    mul-int/lit16 v3, v3, 0x1f4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 800
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 801
    .local v25, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 802
    const/4 v2, 0x0

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    .line 803
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v30

    new-instance v2, Lorg/telegram/messenger/ContactsController$6$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/ContactsController$6$2;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v3, 0x6

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 797
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 757
    .end local v4    # "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v5    # "count":I
    .end local v8    # "a":I
    .end local v16    # "finalToImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    .end local v25    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v2, :cond_17

    .line 758
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_19
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 759
    .restart local v23    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/ContactsController$Contact;

    .line 760
    .restart local v29    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 761
    .local v18, "id":I
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_a
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_19

    .line 762
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    if-nez v2, :cond_1b

    .line 763
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 764
    .local v24, "phone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 765
    .restart local v10    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v10, :cond_1b

    .line 766
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v28

    .line 767
    .restart local v28    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v28, :cond_1a

    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 761
    .end local v10    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v24    # "phone":Ljava/lang/String;
    .end local v28    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1a
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 772
    :cond_1b
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 773
    .restart local v19    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move/from16 v0, v18

    int-to-long v2, v0

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 774
    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v0, v8

    move-wide/from16 v30, v0

    const/16 v32, 0x20

    shl-long v30, v30, v32

    or-long v2, v2, v30

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 775
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 776
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 777
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 778
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 859
    .end local v8    # "a":I
    .end local v18    # "id":I
    .end local v19    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v23    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v29    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_1c
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ContactsController$6$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lorg/telegram/messenger/ContactsController$6$3;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 884
    :cond_1d
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ContactsController$6$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lorg/telegram/messenger/ContactsController$6$4;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 900
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 901
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    goto/16 :goto_8
.end method

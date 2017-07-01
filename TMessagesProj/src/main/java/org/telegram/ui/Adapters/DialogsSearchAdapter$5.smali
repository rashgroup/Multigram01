.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->val$searchId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 46

    .prologue
    .line 461
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->val$query:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    .line 462
    .local v30, "search1":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    const/16 v41, -0x1

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I
    invoke-static/range {v40 .. v41}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$802(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v44, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v44

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static/range {v40 .. v44}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 746
    .end local v30    # "search1":Ljava/lang/String;
    :goto_0
    return-void

    .line 467
    .restart local v30    # "search1":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 468
    .local v31, "search2":Ljava/lang/String;
    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_2

    .line 469
    :cond_1
    const/16 v31, 0x0

    .line 471
    :cond_2
    if-eqz v31, :cond_5

    const/16 v40, 0x1

    :goto_1
    add-int/lit8 v40, v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 472
    .local v29, "search":[Ljava/lang/String;
    const/16 v40, 0x0

    aput-object v30, v29, v40

    .line 473
    if-eqz v31, :cond_3

    .line 474
    const/16 v40, 0x1

    aput-object v31, v29, v40

    .line 477
    :cond_3
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v39, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v7, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v16, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v15, "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v28, 0x0

    .line 483
    .local v28, "resultCount":I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 484
    .local v11, "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v40

    const-string/jumbo v41, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 400"

    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 485
    .local v8, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4
    :goto_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v40

    if-eqz v40, :cond_9

    .line 486
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v20

    .line 487
    .local v20, "id":J
    new-instance v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V

    .line 488
    .local v10, "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->date:I

    .line 489
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v23, v0

    .line 492
    .local v23, "lower_id":I
    const/16 v40, 0x20

    shr-long v40, v20, v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v18, v0

    .line 493
    .local v18, "high_id":I
    if-eqz v23, :cond_8

    .line 494
    const/16 v40, 0x1

    move/from16 v0, v18

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v40 .. v40}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v40

    if-nez v40, :cond_4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_4

    .line 496
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 743
    .end local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v11    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    .end local v15    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v16    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "high_id":I
    .end local v20    # "id":J
    .end local v23    # "lower_id":I
    .end local v28    # "resultCount":I
    .end local v29    # "search":[Ljava/lang/String;
    .end local v30    # "search1":Ljava/lang/String;
    .end local v31    # "search2":Ljava/lang/String;
    .end local v39    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v14

    .line 744
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v40, "tmessages"

    move-object/from16 v0, v40

    invoke-static {v0, v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 471
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v30    # "search1":Ljava/lang/String;
    .restart local v31    # "search2":Ljava/lang/String;
    :cond_5
    const/16 v40, 0x0

    goto/16 :goto_1

    .line 499
    .restart local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v11    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    .restart local v15    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v16    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "high_id":I
    .restart local v20    # "id":J
    .restart local v23    # "lower_id":I
    .restart local v28    # "resultCount":I
    .restart local v29    # "search":[Ljava/lang/String;
    .restart local v39    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    if-lez v23, :cond_7

    .line 500
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v40 .. v40}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v40

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_4

    .line 501
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 504
    :cond_7
    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_4

    .line 505
    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 509
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v40 .. v40}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v40

    if-nez v40, :cond_4

    .line 510
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_4

    .line 511
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 515
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v18    # "high_id":I
    .end local v20    # "id":J
    .end local v23    # "lower_id":I
    :cond_9
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 517
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_14

    .line 518
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v40

    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v42, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string/jumbo v45, ","

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v41 .. v43}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 519
    :cond_a
    :goto_3
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v40

    if-eqz v40, :cond_13

    .line 520
    const/16 v40, 0x2

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v24

    .line 521
    .local v24, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 522
    .local v33, "tName":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 523
    const/16 v33, 0x0

    .line 525
    :cond_b
    const/16 v37, 0x0

    .line 526
    .local v37, "username":Ljava/lang/String;
    const-string/jumbo v40, ";;;"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v38

    .line 527
    .local v38, "usernamePos":I
    const/16 v40, -0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_c

    .line 528
    add-int/lit8 v40, v38, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    .line 530
    :cond_c
    const/16 v17, 0x0

    .line 531
    .local v17, "found":I
    move-object/from16 v5, v29

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v25, v5, v19

    .line 532
    .local v25, "q":Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_d

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_d

    if-eqz v33, :cond_10

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_d

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 533
    :cond_d
    const/16 v17, 0x1

    .line 537
    :cond_e
    :goto_5
    if-eqz v17, :cond_12

    .line 538
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 539
    .local v9, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_a

    .line 540
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v40

    const/16 v41, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v36

    .line 541
    .local v36, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 542
    move-object/from16 v0, v36

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 543
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v40, v0

    if-eqz v40, :cond_f

    .line 544
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 546
    :cond_f
    const/16 v40, 0x1

    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_11

    .line 547
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 551
    :goto_6
    move-object/from16 v0, v36

    iput-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 552
    add-int/lit8 v28, v28, 0x1

    .line 553
    goto/16 :goto_3

    .line 534
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    if-eqz v37, :cond_e

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 535
    const/16 v17, 0x2

    goto/16 :goto_5

    .line 549
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "@"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "@"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_6

    .line 531
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 558
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v17    # "found":I
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "q":Ljava/lang/String;
    .end local v33    # "tName":Ljava/lang/String;
    .end local v37    # "username":Ljava/lang/String;
    .end local v38    # "usernamePos":I
    :cond_13
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 561
    :cond_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_1c

    .line 562
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v40

    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v42, "SELECT data, name FROM chats WHERE uid IN(%s)"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string/jumbo v45, ","

    move-object/from16 v0, v45

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v41 .. v43}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 563
    :cond_15
    :goto_7
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 564
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v24

    .line 565
    .restart local v24    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 566
    .restart local v33    # "tName":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 567
    const/16 v33, 0x0

    .line 569
    :cond_16
    move-object/from16 v5, v29

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v19, 0x0

    .restart local v19    # "i$":I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    aget-object v25, v5, v19

    .line 570
    .restart local v25    # "q":Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_17

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_17

    if-eqz v33, :cond_1a

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_17

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 571
    :cond_17
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 572
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_15

    .line 573
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v40

    const/16 v41, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 574
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 575
    if-eqz v6, :cond_15

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    move/from16 v40, v0

    if-nez v40, :cond_15

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v40

    if-eqz v40, :cond_18

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v40

    if-nez v40, :cond_15

    .line 577
    :cond_18
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v40, v0

    if-lez v40, :cond_19

    .line 578
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v40, v0

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v12, v0

    .line 582
    .local v12, "dialog_id":J
    :goto_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 583
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 584
    iput-object v6, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 585
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_7

    .line 580
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v12    # "dialog_id":J
    :cond_19
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    .restart local v12    # "dialog_id":J
    goto :goto_9

    .line 569
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "dialog_id":J
    :cond_1a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 592
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "q":Ljava/lang/String;
    .end local v33    # "tName":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 595
    :cond_1c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_29

    .line 596
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v40

    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v42, "SELECT q.data, u.name, q.user, q.g, q.authkey, q.ttl, u.data, u.status, q.layer, q.seq_in, q.seq_out, q.use_count, q.exchange_id, q.key_date, q.fprint, q.fauthkey, q.khash FROM enc_chats as q INNER JOIN users as u ON q.user = u.uid WHERE q.uid IN(%s)"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string/jumbo v45, ","

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v41 .. v43}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 597
    :cond_1d
    :goto_a
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v40

    if-eqz v40, :cond_28

    .line 598
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v24

    .line 599
    .restart local v24    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 600
    .restart local v33    # "tName":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1e

    .line 601
    const/16 v33, 0x0

    .line 604
    :cond_1e
    const/16 v37, 0x0

    .line 605
    .restart local v37    # "username":Ljava/lang/String;
    const-string/jumbo v40, ";;;"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v38

    .line 606
    .restart local v38    # "usernamePos":I
    const/16 v40, -0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_1f

    .line 607
    add-int/lit8 v40, v38, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    .line 609
    :cond_1f
    const/16 v17, 0x0

    .line 610
    .restart local v17    # "found":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_b
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v4, v0, :cond_1d

    .line 611
    aget-object v25, v29, v4

    .line 612
    .restart local v25    # "q":Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_20

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_20

    if-eqz v33, :cond_25

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_20

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_25

    .line 613
    :cond_20
    const/16 v17, 0x1

    .line 618
    :cond_21
    :goto_c
    if-eqz v17, :cond_27

    .line 619
    const/4 v6, 0x0

    .line 620
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    const/16 v36, 0x0

    .line 621
    .restart local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 622
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_22

    .line 623
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v40

    const/16 v41, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 624
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 626
    :cond_22
    const/16 v40, 0x6

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 627
    if-eqz v9, :cond_23

    .line 628
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v40

    const/16 v41, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v36

    .line 629
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 631
    :cond_23
    if-eqz v6, :cond_1d

    if-eqz v36, :cond_1d

    .line 632
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const/16 v42, 0x20

    shl-long v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 633
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    const/16 v40, 0x2

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 634
    const/16 v40, 0x3

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 635
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 636
    const/16 v40, 0x5

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 637
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 638
    const/16 v40, 0x9

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 639
    const/16 v40, 0xa

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 640
    const/16 v40, 0xb

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v35

    .line 641
    .local v35, "use_count":I
    shr-int/lit8 v40, v35, 0x10

    move/from16 v0, v40

    int-to-short v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    iput-short v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 642
    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    iput-short v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 643
    const/16 v40, 0xc

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 644
    const/16 v40, 0xd

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 645
    const/16 v40, 0xe

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 646
    const/16 v40, 0xf

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 647
    const/16 v40, 0x10

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 649
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v40, v0

    if-eqz v40, :cond_24

    .line 650
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v40, v0

    const/16 v41, 0x7

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 652
    :cond_24
    const/16 v40, 0x1

    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_26

    .line 653
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "<c#ff00a60e>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v41 .. v42}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "</c>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 657
    :goto_d
    iput-object v6, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 658
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v28, v28, 0x1

    .line 660
    goto/16 :goto_a

    .line 614
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v35    # "use_count":I
    .end local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_25
    if-eqz v37, :cond_21

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_21

    .line 615
    const/16 v17, 0x2

    goto/16 :goto_c

    .line 655
    .restart local v6    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v35    # "use_count":I
    .restart local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_26
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "@"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "@"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_d

    .line 610
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v35    # "use_count":I
    .end local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 665
    .end local v4    # "a":I
    .end local v17    # "found":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "q":Ljava/lang/String;
    .end local v33    # "tName":Ljava/lang/String;
    .end local v37    # "username":Ljava/lang/String;
    .end local v38    # "usernamePos":I
    :cond_28
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 668
    :cond_29
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    .local v32, "searchResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 670
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v40, v0

    if-eqz v40, :cond_2a

    iget-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    if-eqz v40, :cond_2a

    .line 671
    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 675
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    :cond_2b
    new-instance v40, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 687
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v26, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v27, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_f
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v4, v0, :cond_2c

    .line 691
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 692
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 696
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v40 .. v40}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v40

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_37

    .line 697
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v40

    const-string/jumbo v41, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 698
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_10
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v40

    if-eqz v40, :cond_36

    .line 699
    const/16 v40, 0x3

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v34

    .line 700
    .local v34, "uid":I
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_2d

    .line 703
    const/16 v40, 0x2

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v24

    .line 704
    .restart local v24    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 705
    .restart local v33    # "tName":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2e

    .line 706
    const/16 v33, 0x0

    .line 708
    :cond_2e
    const/16 v37, 0x0

    .line 709
    .restart local v37    # "username":Ljava/lang/String;
    const-string/jumbo v40, ";;;"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v38

    .line 710
    .restart local v38    # "usernamePos":I
    const/16 v40, -0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_2f

    .line 711
    add-int/lit8 v40, v38, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    .line 713
    :cond_2f
    const/16 v17, 0x0

    .line 714
    .restart local v17    # "found":I
    move-object/from16 v5, v29

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_11
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2d

    aget-object v25, v5, v19

    .line 715
    .restart local v25    # "q":Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_30

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_30

    if-eqz v33, :cond_33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_30

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_33

    .line 716
    :cond_30
    const/16 v17, 0x1

    .line 720
    :cond_31
    :goto_12
    if-eqz v17, :cond_35

    .line 721
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 722
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_2d

    .line 723
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v40

    const/16 v41, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v36

    .line 724
    .restart local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 725
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v40, v0

    if-eqz v40, :cond_32

    .line 726
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 728
    :cond_32
    const/16 v40, 0x1

    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_34

    .line 729
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    :goto_13
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 717
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_33
    if-eqz v37, :cond_31

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_31

    .line 718
    const/16 v17, 0x2

    goto :goto_12

    .line 731
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_34
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "@"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "@"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 714
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_35
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_11

    .line 739
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v17    # "found":I
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "q":Ljava/lang/String;
    .end local v33    # "tName":Ljava/lang/String;
    .end local v34    # "uid":I
    .end local v37    # "username":Ljava/lang/String;
    .end local v38    # "usernamePos":I
    :cond_36
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 742
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;->val$searchId:I

    move/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v41

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static {v0, v1, v2, v15, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

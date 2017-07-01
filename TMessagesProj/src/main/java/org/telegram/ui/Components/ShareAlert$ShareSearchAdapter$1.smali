.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$searchId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 774
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$query:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 775
    .local v24, "search1":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_0

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v33, v0

    const/16 v34, -0x1

    # setter for: Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I
    invoke-static/range {v33 .. v34}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2402(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;I)I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v33, v0

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v35, v0

    # getter for: Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I
    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2400(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I

    move-result v35

    # invokes: Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
    invoke-static/range {v33 .. v35}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2500(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/ArrayList;I)V

    .line 963
    .end local v24    # "search1":Ljava/lang/String;
    :goto_0
    return-void

    .line 780
    .restart local v24    # "search1":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 781
    .local v25, "search2":Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_2

    .line 782
    :cond_1
    const/16 v25, 0x0

    .line 784
    :cond_2
    if-eqz v25, :cond_5

    const/16 v33, 0x1

    :goto_1
    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 785
    .local v23, "search":[Ljava/lang/String;
    const/16 v33, 0x0

    aput-object v24, v23, v33

    .line 786
    if-eqz v25, :cond_3

    .line 787
    const/16 v33, 0x1

    aput-object v25, v23, v33

    .line 790
    :cond_3
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v32, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v7, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    .line 794
    .local v22, "resultCount":I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 795
    .local v11, "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v33

    const-string/jumbo v34, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 400"

    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 796
    .local v8, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4
    :goto_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 797
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v16

    .line 798
    .local v16, "id":J
    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert$1;)V

    .line 799
    .local v10, "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v33

    move/from16 v0, v33

    iput v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->date:I

    .line 800
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    .line 803
    .local v19, "lower_id":I
    const/16 v33, 0x20

    shr-long v34, v16, v33

    move-wide/from16 v0, v34

    long-to-int v14, v0

    .line 804
    .local v14, "high_id":I
    if-eqz v19, :cond_4

    const/16 v33, 0x1

    move/from16 v0, v33

    if-eq v14, v0, :cond_4

    .line 805
    if-lez v19, :cond_6

    .line 806
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 807
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 960
    .end local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v11    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    .end local v14    # "high_id":I
    .end local v16    # "id":J
    .end local v19    # "lower_id":I
    .end local v22    # "resultCount":I
    .end local v23    # "search":[Ljava/lang/String;
    .end local v24    # "search1":Ljava/lang/String;
    .end local v25    # "search2":Ljava/lang/String;
    .end local v32    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v12

    .line 961
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v33, "tmessages"

    move-object/from16 v0, v33

    invoke-static {v0, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 784
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v24    # "search1":Ljava/lang/String;
    .restart local v25    # "search2":Ljava/lang/String;
    :cond_5
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 810
    .restart local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .restart local v11    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    .restart local v14    # "high_id":I
    .restart local v16    # "id":J
    .restart local v19    # "lower_id":I
    .restart local v22    # "resultCount":I
    .restart local v23    # "search":[Ljava/lang/String;
    .restart local v32    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v33, v0

    :try_start_1
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 811
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 816
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v14    # "high_id":I
    .end local v16    # "id":J
    .end local v19    # "lower_id":I
    :cond_7
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 818
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_12

    .line 819
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v33

    sget-object v34, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v35, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string/jumbo v38, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v34 .. v36}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 820
    :cond_8
    :goto_3
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v33

    if-eqz v33, :cond_11

    .line 821
    const/16 v33, 0x2

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v20

    .line 822
    .local v20, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 823
    .local v27, "tName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 824
    const/16 v27, 0x0

    .line 826
    :cond_9
    const/16 v30, 0x0

    .line 827
    .local v30, "username":Ljava/lang/String;
    const-string/jumbo v33, ";;;"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 828
    .local v31, "usernamePos":I
    const/16 v33, -0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    .line 829
    add-int/lit8 v33, v31, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 831
    :cond_a
    const/4 v13, 0x0

    .line 832
    .local v13, "found":I
    move-object/from16 v5, v23

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_4
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    aget-object v21, v5, v15

    .line 833
    .local v21, "q":Ljava/lang/String;
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_b

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_b

    if-eqz v27, :cond_e

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_b

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 834
    :cond_b
    const/4 v13, 0x1

    .line 838
    :cond_c
    :goto_5
    if-eqz v13, :cond_10

    .line 839
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 840
    .local v9, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_8

    .line 841
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v33

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 842
    .local v29, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 843
    move-object/from16 v0, v29

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 844
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 845
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 847
    :cond_d
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v13, v0, :cond_f

    .line 848
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 852
    :goto_6
    move-object/from16 v0, v29

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 853
    iget-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 854
    add-int/lit8 v22, v22, 0x1

    .line 855
    goto/16 :goto_3

    .line 835
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    if-eqz v30, :cond_c

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 836
    const/4 v13, 0x2

    goto/16 :goto_5

    .line 850
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .restart local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "@"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "@"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_6

    .line 832
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 860
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "found":I
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "q":Ljava/lang/String;
    .end local v27    # "tName":Ljava/lang/String;
    .end local v30    # "username":Ljava/lang/String;
    .end local v31    # "usernamePos":I
    :cond_11
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 863
    :cond_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_19

    .line 864
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v33

    sget-object v34, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v35, "SELECT data, name FROM chats WHERE uid IN(%s)"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string/jumbo v38, ","

    move-object/from16 v0, v38

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v34 .. v36}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 865
    :cond_13
    :goto_7
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v33

    if-eqz v33, :cond_18

    .line 866
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v20

    .line 867
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 868
    .restart local v27    # "tName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 869
    const/16 v27, 0x0

    .line 871
    :cond_14
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_8
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v4, v0, :cond_13

    .line 872
    aget-object v21, v23, v4

    .line 873
    .restart local v21    # "q":Ljava/lang/String;
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_15

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_15

    if-eqz v27, :cond_17

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_15

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 874
    :cond_15
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 875
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_13

    .line 876
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v33

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 877
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 878
    if-eqz v6, :cond_13

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v33

    if-nez v33, :cond_13

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v33

    if-eqz v33, :cond_16

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move/from16 v33, v0

    if-nez v33, :cond_16

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    move/from16 v33, v0

    if-nez v33, :cond_16

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v33, v0

    if-eqz v33, :cond_13

    .line 879
    :cond_16
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    neg-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 880
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 881
    iput-object v6, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 882
    iget-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v33, v0

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 883
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_7

    .line 871
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 890
    .end local v4    # "a":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "q":Ljava/lang/String;
    .end local v27    # "tName":Ljava/lang/String;
    :cond_18
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 893
    :cond_19
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 894
    .local v26, "searchResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 895
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    iget-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1a

    iget-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 896
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 900
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    :cond_1b
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v33

    const-string/jumbo v34, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 901
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_a
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v33

    if-eqz v33, :cond_25

    .line 902
    const/16 v33, 0x3

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v28

    .line 903
    .local v28, "uid":I
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1c

    .line 906
    const/16 v33, 0x2

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v20

    .line 907
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 908
    .restart local v27    # "tName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1d

    .line 909
    const/16 v27, 0x0

    .line 911
    :cond_1d
    const/16 v30, 0x0

    .line 912
    .restart local v30    # "username":Ljava/lang/String;
    const-string/jumbo v33, ";;;"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 913
    .restart local v31    # "usernamePos":I
    const/16 v33, -0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_1e

    .line 914
    add-int/lit8 v33, v31, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 916
    :cond_1e
    const/4 v13, 0x0

    .line 917
    .restart local v13    # "found":I
    move-object/from16 v5, v23

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_b
    move/from16 v0, v18

    if-ge v15, v0, :cond_1c

    aget-object v21, v5, v15

    .line 918
    .restart local v21    # "q":Ljava/lang/String;
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_1f

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_1f

    if-eqz v27, :cond_22

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_1f

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_22

    .line 919
    :cond_1f
    const/4 v13, 0x1

    .line 923
    :cond_20
    :goto_c
    if-eqz v13, :cond_24

    .line 924
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 925
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_1c

    .line 926
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v33

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 927
    .restart local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 928
    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert$1;)V

    .line 929
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v33, v0

    if-eqz v33, :cond_21

    .line 930
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 932
    :cond_21
    iget-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 933
    move-object/from16 v0, v29

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 934
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v13, v0, :cond_23

    .line 935
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 939
    :goto_d
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 920
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_22
    if-eqz v30, :cond_20

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_20

    .line 921
    const/4 v13, 0x2

    goto/16 :goto_c

    .line 937
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .restart local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_23
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "@"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "@"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_d

    .line 917
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_24
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 945
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "found":I
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "q":Ljava/lang/String;
    .end local v27    # "tName":Ljava/lang/String;
    .end local v28    # "uid":I
    .end local v30    # "username":Ljava/lang/String;
    .end local v31    # "usernamePos":I
    :cond_25
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 947
    new-instance v33, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$searchId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move/from16 v2, v34

    # invokes: Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2500(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.class Lorg/telegram/messenger/MessagesStorage$34;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat_id:I

.field final synthetic val$invited_id:I

.field final synthetic val$user_id:I

.field final synthetic val$version:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIIII)V
    .locals 0

    .prologue
    .line 1829
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$chat_id:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$what:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$user_id:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$invited_id:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$version:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1833
    :try_start_0
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SELECT info, pinned FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$chat_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 1834
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v6, 0x0

    .line 1835
    .local v6, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    .local v7, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1837
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 1838
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_0

    .line 1839
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v2, v12, v13}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    .line 1840
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1841
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 1844
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1845
    instance-of v12, v6, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v12, :cond_2

    .line 1846
    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$what:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 1847
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_1

    .line 1848
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1849
    .local v10, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$user_id:I

    if-ne v12, v13, :cond_3

    .line 1850
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1886
    .end local v0    # "a":I
    .end local v10    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_1
    :goto_1
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$version:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    .line 1888
    move-object v4, v6

    .line 1889
    .local v4, "finalInfo":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v12, Lorg/telegram/messenger/MessagesStorage$34$1;

    invoke-direct {v12, p0, v4}, Lorg/telegram/messenger/MessagesStorage$34$1;-><init>(Lorg/telegram/messenger/MessagesStorage$34;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1896
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "REPLACE INTO chat_settings_v2 VALUES(?, ?, ?)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    .line 1897
    .local v11, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$ChatFull;->getObjectSize()I

    move-result v12

    invoke-direct {v2, v12}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1898
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v6, v2}, Lorg/telegram/tgnet/TLRPC$ChatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1899
    const/4 v12, 0x1

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$chat_id:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1900
    const/4 v12, 0x2

    invoke-virtual {v11, v12, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1901
    const/4 v12, 0x3

    iget v13, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1902
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1903
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1904
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1909
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "finalInfo":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v6    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v7    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v11    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_2
    :goto_2
    return-void

    .line 1847
    .restart local v0    # "a":I
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v6    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .restart local v7    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v10    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1854
    .end local v0    # "a":I
    .end local v10    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_4
    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$what:I

    if-nez v12, :cond_7

    .line 1855
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1856
    .local v9, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v12, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$user_id:I

    if-ne v12, v13, :cond_5

    goto :goto_2

    .line 1860
    .end local v9    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_6
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 1861
    .local v10, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$user_id:I

    iput v12, v10, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 1862
    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$invited_id:I

    iput v12, v10, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 1863
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v12

    iput v12, v10, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 1864
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1906
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v7    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v10    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    :catch_0
    move-exception v3

    .line 1907
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1865
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v6    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .restart local v7    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_7
    :try_start_1
    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$what:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 1866
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_1

    .line 1867
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1868
    .local v10, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$user_id:I

    if-ne v12, v13, :cond_9

    .line 1870
    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$invited_id:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 1871
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    .line 1872
    .local v8, "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 1873
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 1874
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    .line 1881
    :goto_4
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1876
    .end local v8    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_8
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 1877
    .restart local v8    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 1878
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 1879
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1866
    .end local v8    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

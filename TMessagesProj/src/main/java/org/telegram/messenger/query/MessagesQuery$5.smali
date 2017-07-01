.class final Lorg/telegram/messenger/query/MessagesQuery$5;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogId:J

.field final synthetic val$replyMessageRandomOwners:Ljava/util/HashMap;

.field final synthetic val$replyMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;JLjava/util/HashMap;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$replyMessages:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$dialogId:J

    iput-object p4, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "SELECT m.data, m.mid, m.date, r.random_id FROM randoms as r INNER JOIN messages as m ON r.mid = m.mid WHERE r.random_id IN(%s)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$replyMessages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    .line 218
    .local v5, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 219
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    .line 220
    .local v6, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v6, :cond_0

    .line 221
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    .line 222
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 223
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 224
    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 225
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$dialogId:J

    iput-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    const/4 v14, 0x3

    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 228
    .local v3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v3, :cond_0

    .line 229
    new-instance v11, Lorg/telegram/messenger/MessageObject;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v10, v13, v14, v15}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 230
    .local v11, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_0

    .line 231
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 232
    .local v12, "object":Lorg/telegram/messenger/MessageObject;
    iput-object v11, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 233
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v4    # "b":I
    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v11    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v12    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_1
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 241
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 242
    .restart local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_2

    .line 243
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-wide/16 v14, 0x0

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v2    # "a":I
    .end local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v13, Lorg/telegram/messenger/query/MessagesQuery$5$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/messenger/query/MessagesQuery$5$1;-><init>(Lorg/telegram/messenger/query/MessagesQuery$5;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v5    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_2
    return-void

    .line 253
    :catch_0
    move-exception v7

    .line 254
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

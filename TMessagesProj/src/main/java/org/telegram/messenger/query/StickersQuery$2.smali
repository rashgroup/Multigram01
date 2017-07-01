.class final Lorg/telegram/messenger/query/StickersQuery$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 178
    const/4 v7, 0x0

    .line 179
    .local v7, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v4, 0x0

    .line 180
    .local v4, "date":I
    const/4 v6, 0x0

    .line 181
    .local v6, "hash":I
    const/4 v2, 0x0

    .line 183
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    const-string/jumbo v11, "SELECT data, date, hash FROM stickers_v2 WHERE 1"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 185
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 186
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_1

    .line 187
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .local v8, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v3, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    .line 189
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 190
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v9

    .line 191
    .local v9, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v9    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .line 195
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_1
    const/4 v10, 0x1

    :try_start_2
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    .line 196
    # invokes: Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I
    invoke-static {v7}, Lorg/telegram/messenger/query/StickersQuery;->access$000(Ljava/util/ArrayList;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 201
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_2
    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 205
    :cond_3
    :goto_1
    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(Ljava/util/ArrayList;ZII)V
    invoke-static {v7, v13, v4, v6}, Lorg/telegram/messenger/query/StickersQuery;->access$100(Ljava/util/ArrayList;ZII)V

    .line 206
    return-void

    .line 198
    :catch_0
    move-exception v5

    .line 199
    .local v5, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_1

    .line 201
    .end local v5    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v2, :cond_4

    .line 202
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_4
    throw v10

    .line 201
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    goto :goto_3

    .line 198
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :catch_1
    move-exception v5

    move-object v7, v8

    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    goto :goto_2
.end method

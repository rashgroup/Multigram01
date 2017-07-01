.class Lorg/telegram/messenger/MessagesStorage$26;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$did:I

.field final synthetic val$photos:Lorg/telegram/tgnet/TLRPC$photos_Photos;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;I)V
    .locals 0

    .prologue
    .line 1412
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$26;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$photos:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$did:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1416
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$26;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "REPLACE INTO user_photos VALUES(?, ?, ?)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 1417
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$photos:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1418
    .local v3, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v5, :cond_0

    .line 1421
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1422
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$Photo;->getObjectSize()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1423
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1424
    const/4 v5, 0x1

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$did:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1425
    const/4 v5, 0x2

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1426
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1427
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1428
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1431
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1434
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1430
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

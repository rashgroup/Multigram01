.class Lorg/telegram/messenger/MessagesStorage$6;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->loadPendingTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$6;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 632
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$6;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT id, data FROM pending_tasks WHERE 1"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .line 633
    .local v15, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 634
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    .line 635
    .local v6, "taskId":J
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v16

    .line 636
    .local v16, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v16, :cond_0

    .line 637
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v18

    .line 638
    .local v18, "type":I
    packed-switch v18, :pswitch_data_0

    .line 679
    :cond_1
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    .end local v6    # "taskId":J
    .end local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v16    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v18    # "type":I
    :catch_0
    move-exception v17

    .line 684
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    .end local v17    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 640
    .restart local v6    # "taskId":J
    .restart local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v16    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v18    # "type":I
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    .line 641
    .local v14, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v14, :cond_1

    .line 642
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$6$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v6, v7}, Lorg/telegram/messenger/MessagesStorage$6$1;-><init>(Lorg/telegram/messenger/MessagesStorage$6;Lorg/telegram/tgnet/TLRPC$Chat;J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 651
    .end local v14    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    .line 652
    .local v4, "channelId":I
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    .line 653
    .local v5, "newDialogType":I
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$6$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage$6$2;-><init>(Lorg/telegram/messenger/MessagesStorage$6;IIJ)V

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 661
    .end local v4    # "channelId":I
    .end local v5    # "newDialogType":I
    :pswitch_2
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 662
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 663
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 664
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 665
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 666
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 667
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 669
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 670
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    .line 671
    .local v11, "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    new-instance v8, Lorg/telegram/messenger/MessagesStorage$6$3;

    move-object/from16 v9, p0

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesStorage$6$3;-><init>(Lorg/telegram/messenger/MessagesStorage$6;Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 682
    .end local v6    # "taskId":J
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v16    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v18    # "type":I
    :cond_2
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

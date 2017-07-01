.class Lorg/telegram/messenger/SendMessagesHelper$4;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$isMegagroupFinal:Z

.field final synthetic val$messagesByRandomIdsFinal:Ljava/util/HashMap;

.field final synthetic val$newMsgArr:Ljava/util/ArrayList;

.field final synthetic val$newMsgObjArr:Ljava/util/ArrayList;

.field final synthetic val$peer:J

.field final synthetic val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;JZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 19
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 844
    if-nez p2, :cond_9

    .line 845
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "newMessagesByIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object/from16 v12, p1

    .line 846
    check-cast v12, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 847
    .local v12, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_1

    .line 848
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Update;

    .line 849
    .local v10, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v14, :cond_0

    move-object v11, v10

    .line 850
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 851
    .local v11, "updateMessageID":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 853
    add-int/lit8 v2, v2, -0x1

    .line 847
    .end local v11    # "updateMessageID":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v10    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 857
    .local v13, "value":Ljava/lang/Integer;
    if-nez v13, :cond_2

    .line 858
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 859
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_a

    .line 863
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Update;

    .line 864
    .restart local v10    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v14, :cond_3

    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v14, :cond_5

    .line 866
    :cond_3
    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v14, :cond_6

    move-object v14, v10

    .line 867
    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 868
    .local v3, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    const/4 v15, -0x1

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move/from16 v16, v0

    const/16 v17, -0x1

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    .line 876
    :cond_4
    :goto_2
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget v15, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v14, v15, :cond_7

    const/4 v14, 0x1

    :goto_3
    iput-boolean v14, v3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 878
    iget v14, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 879
    .local v8, "random_id":Ljava/lang/Long;
    if-eqz v8, :cond_5

    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 881
    .local v6, "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v6, :cond_8

    .line 862
    .end local v3    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v8    # "random_id":Ljava/lang/Long;
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move-object v14, v10

    .line 870
    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 871
    .restart local v3    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget v15, v10, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move/from16 v16, v0

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    .line 872
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    if-eqz v14, :cond_4

    .line 873
    iget v14, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v15, -0x80000000

    or-int/2addr v14, v15

    iput v14, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_2

    .line 876
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 884
    .restart local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v8    # "random_id":Ljava/lang/Long;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 885
    .local v4, "msgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 887
    .local v7, "oldId":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v9, "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    iget v14, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v14, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 890
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    invoke-static {v14, v4, v3, v15, v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    .line 891
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v14

    new-instance v15, Lorg/telegram/messenger/SendMessagesHelper$4$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6, v7, v9}, Lorg/telegram/messenger/SendMessagesHelper$4$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;ILjava/util/ArrayList;)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 915
    .end local v2    # "a":I
    .end local v3    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v4    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v5    # "newMessagesByIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v7    # "oldId":I
    .end local v8    # "random_id":Ljava/lang/Long;
    .end local v9    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v10    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v12    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    .end local v13    # "value":Ljava/lang/Integer;
    :cond_9
    new-instance v14, Lorg/telegram/messenger/SendMessagesHelper$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$4$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 924
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_b

    .line 925
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 926
    .restart local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    invoke-virtual {v14, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 927
    new-instance v14, Lorg/telegram/messenger/SendMessagesHelper$4$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lorg/telegram/messenger/SendMessagesHelper$4$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 924
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 940
    .end local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_b
    return-void
.end method

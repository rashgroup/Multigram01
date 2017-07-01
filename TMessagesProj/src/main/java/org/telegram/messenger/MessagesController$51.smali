.class Lorg/telegram/messenger/MessagesController$51;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIIIIIIZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$dialog_id:J

.field final synthetic val$first_unread:I

.field final synthetic val$isCache:Z

.field final synthetic val$isChannel:Z

.field final synthetic val$isEnd:Z

.field final synthetic val$last_date:I

.field final synthetic val$last_message_id:I

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field final synthetic val$queryFromServer:Z

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIZIIIZ)V
    .locals 1

    .prologue
    .line 2564
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    iput p6, p0, Lorg/telegram/messenger/MessagesController$51;->val$count:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$51;->val$load_type:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$51;->val$queryFromServer:Z

    iput p9, p0, Lorg/telegram/messenger/MessagesController$51;->val$first_unread:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$51;->val$max_id:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$51;->val$classGuid:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$51;->val$last_message_id:I

    iput-boolean p13, p0, Lorg/telegram/messenger/MessagesController$51;->val$isChannel:Z

    iput p14, p0, Lorg/telegram/messenger/MessagesController$51;->val$loadIndex:I

    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/MessagesController$51;->val$unread_count:I

    move/from16 v0, p16

    iput v0, p0, Lorg/telegram/messenger/MessagesController$51;->val$last_date:I

    move/from16 v0, p17

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$51;->val$isEnd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 2567
    const/4 v10, 0x0

    .line 2568
    .local v10, "createDialog":Z
    const/16 v21, 0x0

    .line 2569
    .local v21, "isMegagroup":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v4, :cond_1

    .line 2570
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    long-to-int v4, v4

    neg-int v14, v4

    .line 2571
    .local v14, "channelId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 2572
    .local v15, "channelPts":Ljava/lang/Integer;
    if-nez v15, :cond_0

    .line 2573
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 2574
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 2575
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    const/4 v10, 0x1

    .line 2577
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_3

    .line 2578
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v14, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJ)V

    .line 2584
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_1

    .line 2585
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2586
    .local v16, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v4, v14, :cond_4

    .line 2587
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v21, v0

    .line 2592
    .end local v11    # "a":I
    .end local v14    # "channelId":I
    .end local v15    # "channelPts":Ljava/lang/Integer;
    .end local v16    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    long-to-int v0, v4

    move/from16 v22, v0

    .line 2593
    .local v22, "lower_id":I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v0, v4

    move/from16 v18, v0

    .line 2594
    .local v18, "high_id":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    if-nez v4, :cond_2

    .line 2595
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 2597
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_5

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 2598
    new-instance v4, Lorg/telegram/messenger/MessagesController$51$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$51$1;-><init>(Lorg/telegram/messenger/MessagesController$51;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2708
    :goto_2
    return-void

    .line 2580
    .end local v18    # "high_id":I
    .end local v22    # "lower_id":I
    .restart local v14    # "channelId":I
    .restart local v15    # "channelPts":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    # invokes: Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V
    invoke-static {v4, v14}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;I)V

    goto :goto_0

    .line 2584
    .restart local v11    # "a":I
    .restart local v16    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2606
    .end local v11    # "a":I
    .end local v14    # "channelId":I
    .end local v15    # "channelPts":Ljava/lang/Integer;
    .end local v16    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v18    # "high_id":I
    .restart local v22    # "lower_id":I
    :cond_5
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 2607
    .local v31, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2608
    .local v17, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_6

    .line 2609
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/tgnet/TLRPC$User;

    .line 2610
    .local v29, "u":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2612
    .end local v29    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_7

    .line 2613
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2614
    .local v13, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2616
    .end local v13    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 2617
    .local v28, "size":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    if-nez v4, :cond_12

    .line 2618
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 2619
    .local v19, "inboxValue":Ljava/lang/Integer;
    if-nez v19, :cond_8

    .line 2620
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 2621
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 2625
    .local v27, "outboxValue":Ljava/lang/Integer;
    if-nez v27, :cond_9

    .line 2626
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 2627
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    :cond_9
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v28

    if-ge v11, v0, :cond_11

    .line 2631
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2632
    .local v23, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    if-nez v4, :cond_a

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_a

    .line 2633
    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2635
    :cond_a
    if-eqz v21, :cond_b

    .line 2636
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2639
    :cond_b
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v4, :cond_c

    .line 2640
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/telegram/tgnet/TLRPC$User;

    .line 2641
    .local v30, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v30, :cond_c

    move-object/from16 v0, v30

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_c

    .line 2642
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 2645
    .end local v30    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v4, :cond_d

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v4, :cond_e

    .line 2646
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 2647
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2630
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2649
    :cond_e
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_f

    move-object/from16 v4, v27

    :goto_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v23

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v5, :cond_10

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, v23

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_6

    :cond_f
    move-object/from16 v4, v19

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    goto :goto_8

    .line 2652
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/MessagesController$51;->val$load_type:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesController$51;->val$max_id:I

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    .line 2654
    .end local v19    # "inboxValue":Ljava/lang/Integer;
    .end local v27    # "outboxValue":Ljava/lang/Integer;
    :cond_12
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2655
    .local v26, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2656
    .local v25, "messagesToReload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 2657
    .local v32, "webpagesToReload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    const/16 v20, 0x0

    .line 2658
    .local v20, "inputChannel":Lorg/telegram/tgnet/TLRPC$InputChannel;
    const/4 v11, 0x0

    :goto_9
    move/from16 v0, v28

    if-ge v11, v0, :cond_18

    .line 2659
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2660
    .restart local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    move-object/from16 v0, v23

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 2661
    new-instance v24, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 2662
    .local v24, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    if-eqz v4, :cond_14

    .line 2664
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v4, :cond_15

    .line 2665
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    if-eqz v4, :cond_14

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v4, v4

    if-eqz v4, :cond_13

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/16 v5, 0x35

    if-ge v4, v5, :cond_14

    .line 2666
    :cond_13
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2658
    :cond_14
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 2668
    :cond_15
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_14

    .line 2669
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_16

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-gt v4, v5, :cond_16

    .line 2670
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2671
    :cond_16
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    if-eqz v4, :cond_14

    .line 2672
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 2673
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v12, :cond_17

    .line 2674
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2675
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    :cond_17
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2682
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v24    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_18
    new-instance v4, Lorg/telegram/messenger/MessagesController$51$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v32

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$51$2;-><init>(Lorg/telegram/messenger/MessagesController$51;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method

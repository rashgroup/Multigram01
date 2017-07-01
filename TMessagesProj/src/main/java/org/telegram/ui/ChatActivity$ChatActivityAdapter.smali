.class public Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$Holder;
    }
.end annotation


# instance fields
.field private botInfoRow:I

.field private isBot:Z

.field private loadingDownRow:I

.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field private messagesStartRow:I

.field private rowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 8985
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 8979
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 8986
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    .line 8987
    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    .line 8988
    return-void

    .line 8987
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 8974
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    return v0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 8974
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    return v0
.end method

.method static synthetic access$15500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 8974
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 8974
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 9028
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 9033
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 9389
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_0

    .line 9390
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 9394
    :goto_0
    return v0

    .line 9391
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne p1, v0, :cond_1

    .line 9392
    const/4 v0, 0x3

    goto :goto_0

    .line 9394
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 9433
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9435
    :try_start_0
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9439
    :goto_0
    return-void

    .line 9436
    :catch_0
    move-exception v0

    .line 9437
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 9443
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9445
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9449
    :goto_0
    return-void

    .line 9446
    :catch_0
    move-exception v0

    .line 9447
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 9463
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9465
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9469
    :goto_0
    return-void

    .line 9466
    :catch_0
    move-exception v0

    .line 9467
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemMoved(II)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 9473
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9475
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9479
    :goto_0
    return-void

    .line 9476
    :catch_0
    move-exception v0

    .line 9477
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 9453
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9455
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9459
    :goto_0
    return-void

    .line 9456
    :catch_0
    move-exception v0

    .line 9457
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 9483
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9485
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9489
    :goto_0
    return-void

    .line 9486
    :catch_0
    move-exception v0

    .line 9487
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 9503
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9505
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9509
    :goto_0
    return-void

    .line 9506
    :catch_0
    move-exception v0

    .line 9507
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 9493
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 9495
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9499
    :goto_0
    return-void

    .line 9496
    :catch_0
    move-exception v0

    .line 9497
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 18
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 9338
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 9339
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 9340
    .local v4, "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->botInfo:Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->botInfo:Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$BotInfo;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$BotInfo;->description:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(Ljava/lang/String;)V

    .line 9385
    .end local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_0
    :goto_1
    return-void

    .line 9340
    .restart local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 9341
    .end local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    move/from16 v0, p2

    if-eq v0, v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    move/from16 v0, p2

    if-ne v0, v12, :cond_5

    .line 9342
    :cond_3
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 9343
    .local v5, "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->loadsCount:I
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v5, v12}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 9344
    .end local v5    # "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v0, p2

    if-lt v0, v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    move/from16 v0, p2

    if-ge v0, v12, :cond_0

    .line 9345
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v14, p2, v14

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 9346
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9348
    .local v11, "view":Landroid/view/View;
    const/4 v9, 0x0

    .line 9349
    .local v9, "selected":Z
    const/4 v3, 0x0

    .line 9350
    .local v3, "disableSelection":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 9351
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    .line 9352
    .local v8, "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_3
    if-eq v8, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$1100(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v16

    cmp-long v12, v14, v16

    if-nez v12, :cond_9

    const/4 v12, 0x0

    :goto_4
    aget-object v12, v13, v12

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 9353
    :cond_6
    const v12, 0x6633b5e5

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9354
    const/4 v9, 0x1

    .line 9358
    :goto_5
    const/4 v3, 0x1

    .line 9363
    .end local v8    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_6
    instance-of v12, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_11

    move-object v7, v11

    .line 9364
    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 9365
    .local v7, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_7
    iput-boolean v12, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 9366
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 9367
    if-nez v3, :cond_d

    const/4 v12, 0x1

    move v13, v12

    :goto_8
    if-eqz v3, :cond_e

    if-eqz v9, :cond_e

    const/4 v12, 0x1

    :goto_9
    invoke-virtual {v7, v13, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 9368
    instance-of v12, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 9369
    check-cast v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->downloadAudioIfNeed()V

    .line 9371
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v12

    const v13, 0x7fffffff

    if-eq v12, v13, :cond_f

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    if-ne v12, v13, :cond_f

    const/4 v12, 0x1

    :goto_a
    invoke-virtual {v7, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 9372
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->searchContainer:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->searchContainer:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_10

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 9373
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9351
    .end local v7    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v11    # "view":Landroid/view/View;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 9352
    .restart local v8    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_9
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 9356
    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 9360
    .end local v8    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 9365
    .restart local v7    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    .line 9367
    :cond_d
    const/4 v12, 0x0

    move v13, v12

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    goto :goto_9

    .line 9371
    .end local v11    # "view":Landroid/view/View;
    :cond_f
    const/4 v12, 0x0

    goto :goto_a

    .line 9375
    :cond_10
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9377
    .end local v7    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v11    # "view":Landroid/view/View;
    :cond_11
    instance-of v12, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v12, :cond_12

    move-object v2, v11

    .line 9378
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 9379
    .local v2, "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_1

    .line 9380
    .end local v2    # "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    :cond_12
    instance-of v12, v11, Lorg/telegram/ui/Cells/ChatUnreadCell;

    if-eqz v12, :cond_0

    move-object v10, v11

    .line 9381
    check-cast v10, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .line 9382
    .local v10, "unreadCell":Lorg/telegram/ui/Cells/ChatUnreadCell;
    const-string/jumbo v12, "NewMessages"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->unread_to_load:I
    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Cells/ChatUnreadCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9038
    const/4 v1, 0x0

    .line 9039
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_2

    .line 9040
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9041
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "view":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 9042
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    move-object v0, v1

    .line 9046
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 9047
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 9268
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_0

    .line 9269
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    .line 9332
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_0
    :goto_1
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9333
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$Holder;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$Holder;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Landroid/view/View;)V

    return-object v2

    .line 9044
    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 9271
    :cond_2
    if-ne p2, v4, :cond_3

    .line 9272
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 9273
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_1

    .line 9311
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 9312
    new-instance v1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_1

    .line 9313
    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    .line 9314
    new-instance v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/BotHelpCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 9315
    check-cast v2, Lorg/telegram/ui/Cells/BotHelpCell;

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V

    goto :goto_1

    .line 9329
    :cond_5
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 9330
    new-instance v1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 9399
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_0

    .line 9400
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 9401
    .local v0, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 9419
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 9421
    .end local v0    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_0
    return-void

    .line 9419
    .restart local v0    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 9424
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 9425
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9429
    :goto_0
    return-void

    .line 9428
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public updateRows()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8991
    iput v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 8992
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_2

    .line 8993
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 8997
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8998
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_3

    .line 8999
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 9003
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 9004
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 9005
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 9006
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->forwardEndReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->forwardEndReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_4

    .line 9007
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 9017
    :goto_2
    return-void

    .line 8995
    :cond_2
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    goto :goto_0

    .line 9001
    :cond_3
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_1

    .line 9009
    :cond_4
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    goto :goto_2

    .line 9012
    :cond_5
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 9013
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 9014
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 9015
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    goto :goto_2
.end method

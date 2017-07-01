.class Lorg/telegram/ui/MediaActivity$1$3;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$1;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 16
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "did"    # J
    .param p4, "param"    # Z

    .prologue
    .line 429
    move-wide/from16 v0, p2

    long-to-int v14, v0

    .line 430
    .local v14, "lower_part":I
    if-eqz v14, :cond_7

    .line 431
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v10, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "scrollToTopOnResume"

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    if-lez v14, :cond_2

    .line 434
    const-string/jumbo v3, "user_id"

    invoke-virtual {v10, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 468
    .end local v10    # "args":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 435
    .restart local v10    # "args":Landroid/os/Bundle;
    :cond_2
    if-gez v14, :cond_0

    .line 436
    const-string/jumbo v3, "chat_id"

    neg-int v4, v14

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 442
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v5, "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v9, 0x1

    .local v9, "a":I
    :goto_2
    if-ltz v9, :cond_6

    .line 444
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 445
    .local v13, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 446
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 447
    .local v12, "id":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 451
    .end local v12    # "id":Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 443
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 453
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v3, v4}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 456
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 458
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v10}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 459
    .local v2, "chatActivity":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 460
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;ZZ)V

    .line 462
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/MediaActivity;->removeSelfFromStack()V

    goto/16 :goto_1

    .line 466
    .end local v2    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    .end local v5    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v9    # "a":I
    .end local v10    # "args":Landroid/os/Bundle;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_1
.end method

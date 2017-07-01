.class Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryAdapterRecycler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 13
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x20

    const/4 v10, 0x0

    .line 9525
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 9523
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->dialogs:Ljava/util/ArrayList;

    .line 9526
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->context:Landroid/content/Context;

    .line 9528
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "mainconfig"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 9529
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "chat_password"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9530
    .local v1, "chatPassword":Ljava/lang/String;
    const-string/jumbo v8, "chat_unlocked"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 9531
    .local v2, "chatUnlocked":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9532
    .local v0, "allDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v0, v8, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 9533
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v2, :cond_2

    .line 9534
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 9535
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 9536
    .local v3, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    shr-long/2addr v8, v12

    long-to-int v5, v8

    .line 9537
    .local v5, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    .line 9538
    .local v4, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v4, :cond_1

    .line 9539
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 9540
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9534
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9545
    .end local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v4    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v5    # "high_id":I
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 9546
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 9547
    .restart local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    shr-long/2addr v8, v12

    long-to-int v5, v8

    .line 9548
    .restart local v5    # "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    .line 9549
    .restart local v4    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v4, :cond_3

    .line 9550
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hide_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 9551
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 9552
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9545
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 9558
    .end local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v4    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v5    # "high_id":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 9566
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 9567
    :cond_0
    const/4 v0, 0x0

    .line 9569
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 9562
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 9574
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 9593
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 9586
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Apogram/SuperHintDialogCell;

    .line 9587
    .local v0, "cell":Lorg/telegram/ui/Apogram/SuperHintDialogCell;
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    .line 9588
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Apogram/SuperHintDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    .line 9589
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 9579
    new-instance v0, Lorg/telegram/ui/Apogram/SuperHintDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Apogram/SuperHintDialogCell;-><init>(Landroid/content/Context;)V

    .line 9580
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v2, 0x42920000    # 73.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9581
    new-instance v1, Lorg/telegram/ui/ChatActivity$Holder;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/ChatActivity$Holder;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    return-object v1
.end method

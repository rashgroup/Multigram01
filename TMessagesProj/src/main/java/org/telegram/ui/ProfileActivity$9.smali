.class Lorg/telegram/ui/ProfileActivity$9;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const v12, 0x7f07029d

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 721
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    if-le p2, v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersEndRow:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    if-ge p2, v7, :cond_e

    .line 722
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v9

    .line 725
    :cond_1
    const/4 v0, 0x0

    .line 726
    .local v0, "allowKick":Z
    const/4 v1, 0x0

    .line 729
    .local v1, "allowSetAdmin":Z
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 730
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v11, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    sub-int v11, p2, v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 734
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    # setter for: Lorg/telegram/ui/ProfileActivity;->selectedUser:I
    invoke-static {v7, v10}, Lorg/telegram/ui/ProfileActivity;->access$3302(Lorg/telegram/ui/ProfileActivity;I)I

    .line 736
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v6

    .line 737
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 738
    .local v3, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-eq v7, v10, :cond_2

    .line 739
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_5

    .line 740
    const/4 v0, 0x1

    .line 747
    :cond_2
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 748
    .local v5, "u":Lorg/telegram/tgnet/TLRPC$User;
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz v7, :cond_7

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_7

    move v1, v8

    .line 760
    .end local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v5    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    .line 763
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 764
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_c

    if-eqz v1, :cond_c

    .line 765
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "SetAsAdmin"

    const v10, 0x7f070469

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    const-string/jumbo v7, "KickFromGroup"

    invoke-static {v7, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    .line 766
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v7, Lorg/telegram/ui/ProfileActivity$9$1;

    invoke-direct {v7, p0, v6}, Lorg/telegram/ui/ProfileActivity$9$1;-><init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V

    invoke-virtual {v2, v4, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v9, v8

    .line 819
    goto/16 :goto_0

    .line 732
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v10

    sub-int v10, p2, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_1

    .line 741
    .restart local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_5
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz v7, :cond_2

    .line 742
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v7, :cond_6

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v7, v10, :cond_2

    .line 743
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_2

    .restart local v5    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    move v1, v9

    .line 748
    goto/16 :goto_3

    .line 750
    .end local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v5    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-eq v7, v10, :cond_3

    .line 751
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_9

    .line 752
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 753
    :cond_9
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v7, :cond_3

    .line 754
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v7, :cond_b

    :cond_a
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v7, v10, :cond_3

    .line 755
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 808
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_c
    new-array v4, v8, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    if-lez v7, :cond_d

    const-string/jumbo v7, "KickFromGroup"

    invoke-static {v7, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    aput-object v7, v4, v9

    .line 809
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v7, Lorg/telegram/ui/ProfileActivity$9$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ProfileActivity$9$2;-><init>(Lorg/telegram/ui/ProfileActivity$9;)V

    invoke-virtual {v2, v4, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    .line 808
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_d
    const-string/jumbo v7, "KickFromBroadcast"

    const v10, 0x7f07029c

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 821
    .end local v0    # "allowKick":Z
    .end local v1    # "allowSetAdmin":Z
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_e
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z
    invoke-static {v7, p2}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;I)Z

    move-result v9

    goto/16 :goto_0
.end method

.class Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "ChannelUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 492
    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 493
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 537
    :cond_1
    :goto_0
    return v1

    .line 534
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 535
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x2

    :cond_3
    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    :goto_1
    add-int v1, v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 537
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 547
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 667
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 668
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 669
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 670
    if-nez p1, :cond_1

    .line 671
    const/4 v0, 0x5

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 673
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 674
    :cond_3
    if-eq p1, v0, :cond_0

    .line 678
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_5

    .line 679
    const/4 v0, 0x4

    goto :goto_0

    .line 680
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_b

    move v0, v1

    .line 681
    goto :goto_0

    .line 684
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 687
    if-eqz p1, :cond_7

    if-ne p1, v1, :cond_8

    :cond_7
    move v0, v2

    .line 688
    goto :goto_0

    .line 689
    :cond_8
    if-ne p1, v2, :cond_b

    move v0, v1

    .line 690
    goto :goto_0

    .line 693
    :cond_9
    if-nez p1, :cond_a

    move v0, v2

    .line 694
    goto :goto_0

    .line 695
    :cond_a
    if-ne p1, v1, :cond_b

    move v0, v1

    .line 696
    goto :goto_0

    .line 701
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_c

    move v0, v1

    .line 702
    goto :goto_0

    .line 704
    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 557
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 558
    .local v8, "viewType":I
    if-nez v8, :cond_9

    .line 559
    if-nez p2, :cond_0

    .line 560
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {v0, v9, v10, v11, v12}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 561
    .restart local p2    # "view":Landroid/view/View;
    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    move-object/from16 v7, p2

    .line 563
    check-cast v7, Lorg/telegram/ui/Cells/UserCell;

    .line 564
    .local v7, "userCell":Lorg/telegram/ui/Cells/UserCell;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 565
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 566
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_1

    .line 567
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    if-nez v9, :cond_3

    .line 568
    const/4 v10, 0x0

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v10, v9, v11}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 662
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :cond_1
    :goto_1
    return-object p2

    .line 568
    .restart local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v7    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :cond_2
    const-string/jumbo v9, "NumberUnknown"

    const v11, 0x7f07039e

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 569
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 570
    const/4 v5, 0x0

    .line 571
    .local v5, "role":Ljava/lang/String;
    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v9, :cond_4

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v9, :cond_6

    .line 572
    :cond_4
    const-string/jumbo v9, "ChannelCreator"

    const v10, 0x7f070113

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 578
    :cond_5
    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v9, v5, v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 573
    :cond_6
    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;

    if-eqz v9, :cond_7

    .line 574
    const-string/jumbo v9, "ChannelModerator"

    const v10, 0x7f07013c

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 575
    :cond_7
    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    if-eqz v9, :cond_5

    .line 576
    const-string/jumbo v9, "ChannelEditor"

    const v10, 0x7f070119

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 579
    .end local v5    # "role":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 580
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v6, v9, v10, v11}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 583
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :cond_9
    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 584
    if-nez p2, :cond_a

    .line 585
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 587
    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    if-nez v9, :cond_b

    move-object/from16 v9, p2

    .line 588
    check-cast v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v10, "%1$s\n\n%2$s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "NoBlockedGroup"

    const v14, 0x7f070331

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "UnblockText"

    const v14, 0x7f0704d3

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 589
    const v9, 0x7f020127

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 590
    :cond_b
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 591
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 592
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object/from16 v9, p2

    .line 593
    check-cast v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v10, "MegaAdminsInfo"

    const v11, 0x7f0702e2

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const v9, 0x7f020127

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v9, p2

    .line 596
    check-cast v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v10, "ChannelAdminsInfo"

    const v11, 0x7f070108

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 597
    const v9, 0x7f020127

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v9, p2

    .line 600
    check-cast v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 601
    const v9, 0x7f020127

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 603
    :cond_e
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 604
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-nez v9, :cond_f

    const/4 v9, 0x2

    move/from16 v0, p1

    if-eq v0, v9, :cond_10

    :cond_f
    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_12

    :cond_10
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 605
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object/from16 v9, p2

    .line 606
    check-cast v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :goto_3
    const v9, 0x7f020126

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v9, p2

    .line 608
    check-cast v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v10, "ChannelMembersInfo"

    const v11, 0x7f070125

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_12
    move-object/from16 v9, p2

    .line 612
    check-cast v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 613
    const v9, 0x7f020127

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 616
    :cond_13
    const/4 v9, 0x2

    if-ne v8, v9, :cond_17

    .line 617
    if-nez p2, :cond_14

    .line 618
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 619
    .restart local p2    # "view":Landroid/view/View;
    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_14
    move-object/from16 v1, p2

    .line 621
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 622
    .local v1, "actionCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_16

    .line 623
    if-nez p1, :cond_15

    .line 624
    const-string/jumbo v9, "AddMember"

    const v10, 0x7f070073

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 625
    :cond_15
    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_1

    .line 626
    const-string/jumbo v9, "ChannelInviteViaLink"

    const v10, 0x7f07011b

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 628
    :cond_16
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 629
    const-string/jumbo v9, "ChannelAddAdmin"

    const v10, 0x7f070100

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0201ba

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 631
    .end local v1    # "actionCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_17
    const/4 v9, 0x3

    if-ne v8, v9, :cond_18

    .line 632
    if-nez p2, :cond_1

    .line 633
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 635
    :cond_18
    const/4 v9, 0x4

    if-ne v8, v9, :cond_1a

    .line 636
    if-nez p2, :cond_19

    .line 637
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 638
    .restart local p2    # "view":Landroid/view/View;
    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_19
    move-object/from16 v9, p2

    .line 640
    check-cast v9, Lorg/telegram/ui/Cells/TextCell;

    const-string/jumbo v10, "ChannelAddAdmin"

    const v11, 0x7f070100

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0201ba

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 641
    :cond_1a
    const/4 v9, 0x5

    if-ne v8, v9, :cond_1c

    .line 642
    if-nez p2, :cond_1b

    .line 643
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 644
    .restart local p2    # "view":Landroid/view/View;
    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1b
    move-object/from16 v9, p2

    .line 646
    check-cast v9, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v10, "WhoCanAddMembers"

    const v11, 0x7f07050b

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 647
    :cond_1c
    const/4 v9, 0x6

    if-ne v8, v9, :cond_1

    .line 648
    if-nez p2, :cond_1d

    .line 649
    new-instance p2, Lorg/telegram/ui/Cells/RadioCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 650
    .restart local p2    # "view":Landroid/view/View;
    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1d
    move-object/from16 v4, p2

    .line 652
    check-cast v4, Lorg/telegram/ui/Cells/RadioCell;

    .line 653
    .local v4, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 654
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_1f

    .line 655
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 656
    const-string/jumbo v9, "WhoCanAddMembersAllMembers"

    const v10, 0x7f07050d

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_1e

    iget-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v9, :cond_1e

    const/4 v9, 0x1

    :goto_4
    const/4 v11, 0x1

    invoke-virtual {v4, v10, v9, v11}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_1e
    const/4 v9, 0x0

    goto :goto_4

    .line 657
    :cond_1f
    const/4 v9, 0x2

    move/from16 v0, p1

    if-ne v0, v9, :cond_1

    .line 658
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 659
    const-string/jumbo v9, "WhoCanAddMembersAdmins"

    const v10, 0x7f07050c

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_20

    iget-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v9, :cond_20

    const/4 v9, 0x1

    :goto_5
    const/4 v11, 0x0

    invoke-virtual {v4, v10, v9, v11}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_20
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x7

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_2

    :cond_0
    move v1, v2

    .line 527
    :cond_1
    :goto_0
    return v1

    .line 507
    :cond_2
    if-eq p1, v4, :cond_1

    .line 527
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v3

    add-int/2addr v0, v3

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-eq v0, v3, :cond_a

    :goto_1
    move v1, v2

    goto :goto_0

    .line 511
    :cond_4
    if-nez p1, :cond_5

    move v1, v2

    .line 512
    goto :goto_0

    .line 513
    :cond_5
    if-ne p1, v2, :cond_3

    goto :goto_0

    .line 518
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_7

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v1

    goto :goto_0

    .line 521
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_1

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_3

    .line 524
    if-eq p1, v2, :cond_8

    if-ne p1, v4, :cond_9

    :cond_8
    move v0, v2

    :goto_2
    move v1, v0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    move v2, v1

    .line 527
    goto :goto_1
.end method

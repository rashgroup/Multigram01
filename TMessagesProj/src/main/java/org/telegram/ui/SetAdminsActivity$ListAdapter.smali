.class Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SetAdminsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SetAdminsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 368
    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 369
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 401
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1500(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsInfoRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 460
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 462
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f020127

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 411
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 412
    .local v2, "type":I
    if-nez v2, :cond_3

    .line 413
    if-nez p2, :cond_0

    .line 414
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 415
    .restart local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    move-object v0, p2

    .line 417
    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 418
    .local v0, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v9}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7, v8}, Lorg/telegram/ui/SetAdminsActivity;->access$1002(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 419
    const-string/jumbo v7, "SetAdminsAll"

    const v8, 0x7f070465

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v8, :cond_2

    :goto_0
    invoke-virtual {v0, v7, v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 452
    .end local v0    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_1
    :goto_1
    return-object p2

    .restart local v0    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_2
    move v5, v6

    .line 419
    goto :goto_0

    .line 420
    .end local v0    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_3
    if-ne v2, v5, :cond_8

    .line 421
    if-nez p2, :cond_4

    .line 422
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsInfoRow:I
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$1800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_7

    .line 425
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v5, :cond_5

    move-object v5, p2

    .line 426
    check-cast v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v6, "SetAdminsNotAllInfo"

    const v7, 0x7f070467

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 431
    const v5, 0x7f020126

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    move-object v5, p2

    .line 428
    check-cast v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v6, "SetAdminsAllInfo"

    const v7, 0x7f070466

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 433
    :cond_6
    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 435
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_1

    move-object v5, p2

    .line 436
    check-cast v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 439
    :cond_8
    if-ne v2, v9, :cond_1

    .line 440
    if-nez p2, :cond_9

    .line 441
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7, v5, v9, v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 442
    .restart local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    move-object v4, p2

    .line 444
    check-cast v4, Lorg/telegram/ui/Cells/UserCell;

    .line 445
    .local v4, "userCell":Lorg/telegram/ui/Cells/UserCell;
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 446
    .local v1, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 447
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v7, v8, v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 448
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v9}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7, v8}, Lorg/telegram/ui/SetAdminsActivity;->access$1002(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 449
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v7, :cond_d

    :cond_a
    move v7, v5

    :goto_3
    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 450
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v7, :cond_b

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_c

    :cond_b
    move v6, v5

    :cond_c
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/UserCell;->setCheckDisabled(Z)V

    goto/16 :goto_1

    :cond_d
    move v7, v6

    .line 449
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 378
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$1500(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v1

    .line 380
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v2

    if-lt p1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 381
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 382
    .local v0, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v2, :cond_0

    .line 386
    .end local v0    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SetAdminsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SetAdminsActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 485
    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 486
    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    .prologue
    .line 477
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 477
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    .prologue
    .line 477
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 477
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 477
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2202(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 477
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 518
    new-instance v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;-><init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 582
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;-><init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 593
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 617
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 627
    if-nez p2, :cond_0

    .line 628
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-direct {p2, v6, v8, v9, v7}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 631
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v1

    .line 632
    .local v1, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 633
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 635
    .local v2, "un":Ljava/lang/String;
    const/4 v5, 0x0

    .line 636
    .local v5, "username":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 637
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 638
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 639
    .restart local v0    # "name":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 640
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 641
    move-object v5, v0

    .line 642
    const/4 v0, 0x0

    :cond_1
    move-object v4, p2

    .line 646
    check-cast v4, Lorg/telegram/ui/Cells/UserCell;

    .line 647
    .local v4, "userCell":Lorg/telegram/ui/Cells/UserCell;
    invoke-virtual {v4, v3, v0, v5, v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 648
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v10}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6, v9}, Lorg/telegram/ui/SetAdminsActivity;->access$1002(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 649
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v6, :cond_5

    :cond_2
    move v6, v8

    :goto_0
    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 650
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_3

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v9

    if-ne v6, v9, :cond_4

    :cond_3
    move v7, v8

    :cond_4
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Cells/UserCell;->setCheckDisabled(Z)V

    .line 651
    return-object p2

    :cond_5
    move v6, v7

    .line 649
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 602
    const/4 v0, 0x1

    return v0
.end method

.method public search(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 490
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 499
    invoke-virtual {p0}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 515
    :goto_1
    return-void

    .line 493
    :catch_0
    move-exception v6

    .line 494
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 501
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;-><init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

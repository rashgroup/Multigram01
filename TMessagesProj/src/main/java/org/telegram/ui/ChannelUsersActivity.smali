.class public Lorg/telegram/ui/ChannelUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private chatId:I

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private firstLoaded:Z

.field private isAdmin:Z

.field private isMegagroup:Z

.field private isPublic:Z

.field private listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

.field private loadingUsers:Z

.field private participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private participantsStartRow:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v5, "chat_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    .line 72
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 73
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_1

    .line 74
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_0

    .line 75
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    .line 76
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z

    .line 78
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    .line 80
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v1, :cond_4

    .line 81
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 87
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 76
    goto :goto_0

    .line 82
    :cond_4
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v1, v2, :cond_6

    .line 83
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    if-eqz v1, :cond_5

    const/4 v3, 0x4

    :cond_5
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    goto :goto_1

    .line 84
    :cond_6
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v1, v4, :cond_2

    .line 85
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z

    if-eqz v1, :cond_8

    move v3, v4

    :cond_7
    :goto_2
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    goto :goto_1

    :cond_8
    const/4 v3, 0x3

    goto :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelUsersActivity;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method private getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 1
    .param p1, "participant"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 360
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_1

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    .line 362
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    if-eqz v0, :cond_2

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getChannelParticipants(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 370
    iget-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    if-eqz v2, :cond_0

    .line 478
    :goto_0
    return-void

    .line 373
    :cond_0
    iput-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    .line 374
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    if-nez v2, :cond_1

    .line 375
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 377
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    if-eqz v2, :cond_2

    .line 378
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 380
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 381
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 382
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v2, :cond_4

    .line 383
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 389
    :cond_3
    :goto_1
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 390
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 391
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$6;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 477
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 384
    .end local v1    # "reqId":I
    :cond_4
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v2, v3, :cond_5

    .line 385
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    .line 386
    :cond_5
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 387
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v9, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v3, 0x1

    .line 105
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, 0x7f020131

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 106
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 107
    iget v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v5, :cond_4

    .line 108
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "ChannelBlockedUsers"

    const v7, 0x7f07010c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/ChannelUsersActivity$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChannelUsersActivity$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 123
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 125
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    .line 126
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    const v6, -0xf0f10

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 129
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v5, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 130
    iget v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v5, :cond_1

    .line 131
    iget-boolean v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    if-eqz v5, :cond_6

    .line 132
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v6, "NoBlockedGroup"

    const v7, 0x7f070331

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 141
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 142
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 143
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 144
    new-instance v5, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 146
    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$2;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ChannelUsersActivity$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/widget/ListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v3, :cond_3

    .line 238
    :cond_2
    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$3;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 305
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    if-eqz v3, :cond_8

    .line 306
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 310
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 109
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_4
    iget v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v5, v3, :cond_5

    .line 110
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "ChannelAdministrators"

    const v7, 0x7f070107

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    :cond_5
    iget v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v5, v4, :cond_0

    .line 112
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "ChannelMembers"

    const v7, 0x7f070124

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 134
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v6, "NoBlocked"

    const v7, 0x7f070330

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_7
    move v3, v4

    .line 145
    goto :goto_2

    .line 308
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_3
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 346
    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v1, :cond_0

    .line 347
    const/4 v1, 0x0

    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 348
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    if-ne v1, v2, :cond_0

    .line 349
    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelUsersActivity$5;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 357
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 92
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 93
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 100
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 101
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 486
    :cond_0
    return-void
.end method

.method public setUserChannelRole(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;)V
    .locals 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "role"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 318
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 319
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 320
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .line 321
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelUsersActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelUsersActivity$4;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

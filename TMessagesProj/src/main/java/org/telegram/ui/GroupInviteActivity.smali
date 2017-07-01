.class public Lorg/telegram/ui/GroupInviteActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupInviteActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private chat_id:I

.field private copyLinkRow:I

.field private invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field private linkInfoRow:I

.field private linkRow:I

.field private listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

.field private loading:Z

.field private revokeLinkRow:I

.field private rowCount:I

.field private shadowRow:I

.field private shareLinkRow:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 62
    iput p1, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkInfoRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/GroupInviteActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupInviteActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupInviteActivity;->generateLink(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupInviteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/GroupInviteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shadowRow:I

    return v0
.end method

.method private generateLink(Z)V
    .locals 5
    .param p1, "newRequest"    # Z

    .prologue
    .line 200
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    .line 202
    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;-><init>()V

    .line 204
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 205
    move-object v2, v0

    .line 211
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    .local v2, "request":Lorg/telegram/tgnet/TLObject;
    :goto_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/GroupInviteActivity$3;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/GroupInviteActivity$3;-><init>(Lorg/telegram/ui/GroupInviteActivity;Z)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 236
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/GroupInviteActivity;->classGuid:I

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 237
    iget-object v3, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    .line 240
    :cond_0
    return-void

    .line 207
    .end local v1    # "reqId":I
    .end local v2    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;-><init>()V

    .line 208
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;
    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->chat_id:I

    .line 209
    move-object v2, v0

    .restart local v2    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 91
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020131

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 92
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 93
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "InviteLink"

    const v6, 0x7f070284

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/GroupInviteActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/GroupInviteActivity$1;-><init>(Lorg/telegram/ui/GroupInviteActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 103
    new-instance v4, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;-><init>(Lorg/telegram/ui/GroupInviteActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    .line 105
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->fragmentView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 107
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v4, -0xf0f10

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 109
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v3, "progressView":Landroid/widget/FrameLayout;
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 113
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    const/16 v4, 0x11

    invoke-static {v8, v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 119
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 120
    invoke-virtual {v1, v10}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 121
    const/16 v4, 0x33

    invoke-static {v7, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    new-instance v4, Lorg/telegram/ui/GroupInviteActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/GroupInviteActivity$2;-><init>(Lorg/telegram/ui/GroupInviteActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity;->fragmentView:Landroid/view/View;

    return-object v4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 174
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v2, :cond_0

    .line 175
    aget-object v1, p2, v4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 176
    .local v1, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    .local v0, "guid":I
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/ui/GroupInviteActivity;->classGuid:I

    if-ne v0, v2, :cond_0

    .line 178
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getExportedInvite(I)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 179
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-nez v2, :cond_1

    .line 180
    invoke-direct {p0, v4}, Lorg/telegram/ui/GroupInviteActivity;->generateLink(Z)V

    .line 189
    .end local v0    # "guid":I
    .end local v1    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v0    # "guid":I
    .restart local v1    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 69
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 70
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    iget v2, p0, Lorg/telegram/ui/GroupInviteActivity;->classGuid:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 71
    iput-boolean v3, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    .line 74
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkRow:I

    .line 75
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkInfoRow:I

    .line 76
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I

    .line 77
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I

    .line 78
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I

    .line 79
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shadowRow:I

    .line 81
    return v3
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    .line 197
    :cond_0
    return-void
.end method

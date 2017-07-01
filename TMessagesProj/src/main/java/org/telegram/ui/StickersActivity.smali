.class public Lorg/telegram/ui/StickersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "StickersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StickersActivity$ListAdapter;,
        Lorg/telegram/ui/StickersActivity$TouchHelperCallback;
    }
.end annotation


# instance fields
.field private listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private needReorder:Z

.field private rowCount:I

.field private stickersEndRow:I

.field private stickersInfoRow:I

.field private stickersStartRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 229
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StickersActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->sendReorder()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersInfoRow:I

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    return p1
.end method

.method private sendReorder()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 185
    iget-boolean v3, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    if-nez v3, :cond_0

    .line 202
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->calcNewHash()V

    .line 189
    iput-boolean v5, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    .line 190
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;-><init>()V

    .line 191
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets()Ljava/util/ArrayList;

    move-result-object v1

    .line 192
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 193
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/StickersActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$3;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 201
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateRows()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 205
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 206
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets()Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    .local v0, "stickerSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    .line 210
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 215
    :goto_0
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->stickersInfoRow:I

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_0
    return-void

    .line 212
    :cond_1
    iput v2, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    .line 213
    iput v2, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f020131

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 131
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 132
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "Stickers"

    const v5, 0x7f07049c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/StickersActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$1;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 142
    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    .line 144
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->fragmentView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 146
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v3, -0xf0f10

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 148
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 149
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setFocusable(Z)V

    .line 150
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 151
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 152
    .local v2, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-virtual {v2, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 154
    new-instance v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    new-instance v3, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;

    invoke-direct {v3, p0}, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-direct {v1, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;)V

    .line 155
    .local v1, "itemTouchHelper":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 157
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 159
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/StickersActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$2;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->fragmentView:Landroid/view/View;

    return-object v3
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 179
    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v0, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->updateRows()V

    .line 182
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 116
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers()V

    .line 117
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->updateRows()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 125
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->sendReorder()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 227
    :cond_0
    return-void
.end method

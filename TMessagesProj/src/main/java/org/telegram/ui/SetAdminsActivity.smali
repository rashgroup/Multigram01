.class public Lorg/telegram/ui/SetAdminsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SetAdminsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;,
        Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private allAdminsInfoRow:I

.field private allAdminsRow:I

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private chat_id:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private rowCount:I

.field private searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchWas:Z

.field private searching:Z

.field private usersEndRow:I

.field private usersStartRow:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;

    .line 69
    const-string/jumbo v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SetAdminsActivity;->chat_id:I

    .line 70
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/SetAdminsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/ui/SetAdminsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SetAdminsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SetAdminsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/ui/SetAdminsActivity;->getChatAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/SetAdminsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SetAdminsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->allAdminsInfoRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/SetAdminsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/ui/SetAdminsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SetAdminsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/SetAdminsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/SetAdminsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/SetAdminsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I

    return v0
.end method

.method private getChatAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I
    .locals 1
    .param p1, "participant"    # Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .prologue
    .line 275
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    .line 277
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateChatParticipants()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 292
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/SetAdminsActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SetAdminsActivity$4;-><init>(Lorg/telegram/ui/SetAdminsActivity;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateRowsIds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 342
    iput v3, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    .line 343
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I

    .line 344
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SetAdminsActivity;->allAdminsInfoRow:I

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_2

    .line 346
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I

    .line 347
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    .line 348
    iget v0, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SetAdminsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SetAdminsActivity;->searchWas:Z

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 359
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 362
    :cond_1
    return-void

    .line 353
    :cond_2
    iput v2, p0, Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I

    .line 354
    iput v2, p0, Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    iput-boolean v5, p0, Lorg/telegram/ui/SetAdminsActivity;->searching:Z

    .line 90
    iput-boolean v5, p0, Lorg/telegram/ui/SetAdminsActivity;->searchWas:Z

    .line 92
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 93
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "SetAdminsTitle"

    const v4, 0x7f070468

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/SetAdminsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SetAdminsActivity$1;-><init>(Lorg/telegram/ui/SetAdminsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 104
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 105
    .local v1, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v2, 0x7f020141

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/SetAdminsActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SetAdminsActivity$2;-><init>(Lorg/telegram/ui/SetAdminsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 148
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "Search"

    const v4, 0x7f070435

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v2, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;-><init>(Lorg/telegram/ui/SetAdminsActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    .line 151
    new-instance v2, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;-><init>(Lorg/telegram/ui/SetAdminsActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    .line 153
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 155
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;

    const v3, -0xf0f10

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    .line 158
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 160
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 161
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 162
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/SetAdminsActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SetAdminsActivity$3;-><init>(Lorg/telegram/ui/SetAdminsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 224
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 227
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "NoResult"

    const v4, 0x7f070344

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 231
    invoke-direct {p0}, Lorg/telegram/ui/SetAdminsActivity;->updateRowsIds()V

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 238
    sget v5, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v5, :cond_0

    .line 239
    aget-object v1, p2, v7

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 240
    .local v1, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v6, p0, Lorg/telegram/ui/SetAdminsActivity;->chat_id:I

    if-ne v5, v6, :cond_0

    .line 241
    iput-object v1, p0, Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 242
    invoke-direct {p0}, Lorg/telegram/ui/SetAdminsActivity;->updateChatParticipants()V

    .line 243
    invoke-direct {p0}, Lorg/telegram/ui/SetAdminsActivity;->updateRowsIds()V

    .line 245
    .end local v1    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_0
    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v5, :cond_3

    .line 246
    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 247
    .local v4, "mask":I
    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_1

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3

    .line 248
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    if-eqz v5, :cond_3

    .line 249
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 250
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 251
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "child":Landroid/view/View;
    instance-of v5, v2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v5, :cond_2

    .line 253
    check-cast v2, Lorg/telegram/ui/Cells/UserCell;

    .end local v2    # "child":Landroid/view/View;
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 250
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "mask":I
    :cond_3
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 75
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 76
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 83
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 84
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 267
    :cond_0
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "chatParticipants"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 271
    invoke-direct {p0}, Lorg/telegram/ui/SetAdminsActivity;->updateChatParticipants()V

    .line 272
    return-void
.end method

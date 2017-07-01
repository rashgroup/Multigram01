.class public Lorg/telegram/ui/MediaActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedMediaData;
    }
.end annotation


# static fields
.field private static final delete:I = 0x4

.field private static final files_item:I = 0x2

.field private static final forward:I = 0x3

.field private static final links_item:I = 0x5

.field private static final music_item:I = 0x6

.field private static final quoteforward:I = 0x64

.field private static final shared_media_item:I = 0x1


# instance fields
.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private cantDeleteMessagesCount:I

.field private cellCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell;",
            ">;"
        }
    .end annotation
.end field

.field private columnsCount:I

.field private dialog_id:J

.field private documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptyTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field protected info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

.field private linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private listView:Lorg/telegram/ui/Components/SectionsListView;

.field private mergeDialogId:J

.field private photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private progressView:Landroid/widget/LinearLayout;

.field private scrolling:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchWas:Z

.field private searching:Z

.field private selectedFiles:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedMode:I

.field private sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 127
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 202
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .line 214
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/MediaActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/MediaActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "x4"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/MediaActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/MediaActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/MediaActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/SectionsListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    return-object v0
.end method

.method private fixLayoutInternal()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/high16 v7, 0x43000000    # 128.0f

    const/4 v3, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    .line 1270
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    if-nez v4, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1274
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1276
    .local v2, "rotation":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_4

    .line 1277
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 1282
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1283
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1284
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1294
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 1296
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 1297
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1298
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1299
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1300
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_8

    .line 1304
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 1279
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_1

    .line 1286
    :cond_5
    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 1287
    :cond_6
    const/4 v4, 0x6

    iput v4, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1288
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 1290
    :cond_7
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1291
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 1306
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0
.end method

.method private onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 23
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "a"    # I

    .prologue
    .line 1134
    if-nez p3, :cond_1

    .line 1260
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1137
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1138
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    const/16 v19, 0x0

    .line 1139
    .local v19, "loadIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1142
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 1150
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1155
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1156
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 1157
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_7

    .line 1158
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 1138
    .end local v19    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 1145
    .restart local v19    # "loadIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1147
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    goto/16 :goto_2

    .line 1153
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto/16 :goto_3

    .line 1155
    :cond_6
    const/16 v3, 0x8

    goto :goto_4

    .line 1159
    :cond_7
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v3, :cond_8

    .line 1160
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto/16 :goto_0

    .line 1161
    .restart local p2    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v3, :cond_0

    .line 1162
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 1165
    .end local v19    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v3, :cond_a

    .line 1166
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1167
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    move/from16 v5, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V

    goto/16 :goto_0

    .line 1168
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_18

    .line 1169
    :cond_b
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_0

    move-object/from16 v11, p2

    .line 1170
    check-cast v11, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1171
    .local v11, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1172
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1173
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1177
    :cond_c
    const/4 v14, 0x0

    .line 1178
    .local v14, "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v15

    .line 1179
    .local v15, "fileName":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    .line 1180
    new-instance v14, Ljava/io/File;

    .end local v14    # "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1182
    .restart local v14    # "f":Ljava/io/File;
    :cond_d
    if-eqz v14, :cond_e

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1183
    :cond_e
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v14

    .line 1185
    :cond_f
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1186
    const/16 v21, 0x0

    .line 1188
    .local v21, "realMimeType":Ljava/lang/String;
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v17, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v20

    .line 1190
    .local v20, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v3, 0x2e

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1191
    .local v16, "idx":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_14

    .line 1192
    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1193
    .local v13, "ext":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1194
    if-nez v21, :cond_11

    .line 1195
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1196
    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    .line 1197
    :cond_10
    const/16 v21, 0x0

    .line 1200
    :cond_11
    if-eqz v21, :cond_13

    .line 1201
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1208
    .end local v13    # "ext":Ljava/lang/String;
    :goto_6
    if-eqz v21, :cond_15

    .line 1210
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1211
    :catch_0
    move-exception v12

    .line 1212
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1218
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "myMime":Landroid/webkit/MimeTypeMap;
    :catch_1
    move-exception v12

    .line 1219
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1222
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07009a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1224
    const-string/jumbo v3, "OK"

    const v4, 0x7f07039f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1225
    const-string/jumbo v3, "NoHandleAppInstalled"

    const v4, 0x7f070336

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1226
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1178
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v21    # "realMimeType":Ljava/lang/String;
    :cond_12
    const-string/jumbo v15, ""

    goto/16 :goto_5

    .line 1203
    .restart local v13    # "ext":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "idx":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "myMime":Landroid/webkit/MimeTypeMap;
    .restart local v21    # "realMimeType":Ljava/lang/String;
    :cond_13
    :try_start_3
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1206
    .end local v13    # "ext":Ljava/lang/String;
    :cond_14
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1216
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1229
    .end local v14    # "f":Ljava/io/File;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v21    # "realMimeType":Ljava/lang/String;
    :cond_16
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1230
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 1231
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1233
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1234
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1237
    .end local v11    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1239
    :try_start_4
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v22, v0

    .line 1240
    .local v22, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    const/16 v18, 0x0

    .line 1241
    .local v18, "link":Ljava/lang/String;
    if-eqz v22, :cond_1a

    move-object/from16 v0, v22

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v3, :cond_1a

    .line 1242
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_19

    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v3, :cond_19

    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    .line 1243
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1255
    .end local v18    # "link":Ljava/lang/String;
    .end local v22    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local p2    # "view":Landroid/view/View;
    :catch_2
    move-exception v12

    .line 1256
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1246
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v18    # "link":Ljava/lang/String;
    .restart local v22    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local p2    # "view":Landroid/view/View;
    :cond_19
    :try_start_5
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1249
    :cond_1a
    if-nez v18, :cond_1b

    .line 1250
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v18

    .line 1252
    :cond_1b
    if-eqz v18, :cond_0

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 12
    .param p1, "item"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "a"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1101
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1130
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return v5

    .line 1104
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1105
    iget-object v7, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    aget-object v4, v7, v4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1107
    iget v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 1109
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    iget v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1110
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v4, v6, v5}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 1111
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1112
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1114
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1115
    .local v3, "view2":Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1116
    const-string/jumbo v4, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "i":I
    .end local v3    # "view2":Landroid/view/View;
    :cond_2
    move v4, v6

    .line 1105
    goto :goto_1

    .line 1109
    :cond_3
    const/16 v4, 0x8

    goto :goto_2

    .line 1118
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1119
    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1120
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1121
    iput-boolean v5, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 1122
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_6

    .line 1123
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 1129
    :cond_5
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    move v5, v6

    .line 1130
    goto/16 :goto_0

    .line 1124
    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v4, :cond_7

    .line 1125
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, p3, v6, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_4

    .line 1126
    .restart local p2    # "view":Landroid/view/View;
    :cond_7
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v4, :cond_5

    .line 1127
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_4

    .line 1116
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 10
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 1263
    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 1264
    .local v9, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    new-instance v0, Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/WebFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1265
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setUseFullWidth(Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1266
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1267
    return-void
.end method

.method private switchToCurrentSelectedMode()V
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 996
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    if-eqz v0, :cond_4

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    if-eqz v0, :cond_0

    .line 998
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_2

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1009
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoResult"

    const v2, 0x7f070344

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    :cond_1
    :goto_1
    return-void

    .line 1001
    :cond_2
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_3

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1004
    :cond_3
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_0

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1015
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v0, :cond_7

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "SharedMediaTitle"

    const v3, 0x7f07047e

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1021
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_5

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoMediaSecret"

    const v3, 0x7f07033a

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 1030
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1035
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SectionsListView;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/SectionsListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1024
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoMedia"

    const v3, 0x7f070338

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1032
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_3

    .line 1037
    :cond_7
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eq v0, v6, :cond_8

    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_11

    .line 1038
    :cond_8
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_c

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "DocumentsTitle"

    const v3, 0x7f0701c1

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f02029e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_b

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedFilesSecret"

    const v3, 0x7f070348

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v3, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1060
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v5, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v5, v6, :cond_f

    move v5, v6

    :goto_6
    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1062
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SectionsListView;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1071
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/SectionsListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1045
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedFiles"

    const v3, 0x7f070347

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1047
    :cond_c
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_9

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "AudioTitle"

    const v3, 0x7f0700c2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f0202a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1051
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_d

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedAudioSecret"

    const v3, 0x7f070346

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1054
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedAudio"

    const v3, 0x7f070345

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    move v0, v8

    .line 1057
    goto/16 :goto_5

    :cond_f
    move v5, v4

    .line 1060
    goto/16 :goto_6

    .line 1068
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_7

    .line 1072
    :cond_11
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_1

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "LinksTitle"

    const v3, 0x7f0702d0

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f02029f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_13

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedLinksSecret"

    const v3, 0x7f07034a

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1084
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1086
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SectionsListView;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1095
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/SectionsListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1079
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedLinks"

    const v3, 0x7f070349

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_14
    move v0, v8

    .line 1081
    goto/16 :goto_9

    .line 1092
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_a
.end method


# virtual methods
.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/MediaActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$1;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 500
    const/4 v9, 0x1

    .local v9, "a":I
    :goto_0
    if-ltz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 500
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 503
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v13

    .line 507
    .local v13, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x0

    const v3, 0x7f020141

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MediaActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$2;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "Search"

    const v4, 0x7f070435

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 557
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v13, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    const-string/jumbo v4, "SharedMediaTitle"

    const v5, 0x7f07047e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    const-string/jumbo v4, "DocumentsTitle"

    const v5, 0x7f0701c1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 561
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-eqz v2, :cond_3

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x5

    const-string/jumbo v4, "LinksTitle"

    const v5, 0x7f0702d0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "AudioTitle"

    const v5, 0x7f0700c2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 570
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x42800000    # 64.0f

    :goto_2
    const/4 v6, 0x0

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/MediaActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$3;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02014b

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x10

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 593
    .local v10, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const v3, -0x8c8c8d

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$4;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x41

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-eqz v2, :cond_2

    .line 606
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v3, 0x64

    const v4, 0x7f02013b

    const v5, -0xf0f10

    const/4 v6, 0x0

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const v4, 0x7f02013a

    const v5, -0xf0f10

    const/4 v6, 0x0

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x4

    const v4, 0x7f020139

    const v5, -0xf0f10

    const/4 v6, 0x0

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    .line 612
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 613
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 614
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 615
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 616
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 617
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    .line 620
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v12, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    .line 622
    new-instance v2, Lorg/telegram/ui/Components/SectionsListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SectionsListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setDividerHeight(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setDrawSelectorOnTop(Z)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setClipToPadding(Z)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$5;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$6;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$7;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 691
    const/4 v9, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v9, v2, :cond_5

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 565
    .end local v10    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v12    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v11

    .line 566
    .local v11, "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v11, :cond_1

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "AudioTitle"

    const v5, 0x7f0700c2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto/16 :goto_1

    .line 570
    .end local v11    # "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_4
    const/high16 v5, 0x42600000    # 56.0f

    goto/16 :goto_2

    .line 695
    .restart local v10    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v12    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_5
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const v3, -0xf0f10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/MediaActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$8;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const v3, -0x757576

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 716
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const v3, -0xf0f10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    new-instance v14, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 726
    .local v14, "progressBar":Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    .line 730
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_6

    .line 731
    new-instance v15, Lorg/telegram/ui/Components/PlayerView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lorg/telegram/ui/Components/PlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v2, -0x1

    const/high16 v3, 0x421c0000    # 39.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, -0x3df00000    # -36.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 31
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 739
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    .line 740
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 741
    .local v28, "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 742
    .local v17, "guid":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    .line 743
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 744
    .local v7, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v3, v2, v7

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I
    invoke-static {v3, v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3102(Lorg/telegram/ui/MediaActivity$SharedMediaData;I)I

    .line 746
    const/4 v2, 0x2

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 747
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_0

    const/16 v16, 0x1

    .line 748
    .local v16, "enc":Z
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v28, v2

    if-nez v2, :cond_1

    const/16 v22, 0x0

    .line 749
    .local v22, "loadIndex":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 750
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/MessageObject;

    .line 751
    .local v24, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    .line 749
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 747
    .end local v10    # "a":I
    .end local v16    # "enc":Z
    .end local v22    # "loadIndex":I
    .end local v24    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 748
    .restart local v16    # "enc":Z
    :cond_1
    const/16 v22, 0x1

    goto :goto_1

    .line 753
    .restart local v10    # "a":I
    .restart local v22    # "loadIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v22

    .line 754
    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 756
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x32

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v6, v6, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v6

    const/4 v8, 0x1

    aget v6, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 758
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 762
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    if-eqz v2, :cond_5

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SectionsListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 768
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 769
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_9

    if-nez v7, :cond_9

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_6

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 786
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 787
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 879
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v16    # "enc":Z
    .end local v17    # "guid":I
    .end local v22    # "loadIndex":I
    .end local v28    # "uid":J
    :cond_8
    :goto_5
    return-void

    .line 773
    .restart local v7    # "type":I
    .restart local v10    # "a":I
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v16    # "enc":Z
    .restart local v17    # "guid":I
    .restart local v22    # "loadIndex":I
    .restart local v28    # "uid":J
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    if-ne v7, v2, :cond_a

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_6

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 777
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    const/4 v2, 0x3

    if-ne v7, v2, :cond_b

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_6

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 781
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    const/4 v2, 0x4

    if-ne v7, v2, :cond_6

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_6

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 787
    :cond_c
    const/16 v2, 0x8

    goto :goto_4

    .line 790
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v16    # "enc":Z
    .end local v17    # "guid":I
    .end local v22    # "loadIndex":I
    .end local v28    # "uid":J
    :cond_d
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1b

    .line 791
    const/4 v14, 0x0

    .line 792
    .local v14, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_e

    .line 793
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    .line 795
    :cond_e
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 796
    .local v13, "channelId":I
    const/16 v22, 0x0

    .line 797
    .restart local v22    # "loadIndex":I
    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 798
    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    .line 799
    const/16 v22, 0x1

    .line 808
    :cond_f
    :goto_6
    const/4 v2, 0x0

    aget-object v23, p2, v2

    check-cast v23, Ljava/util/ArrayList;

    .line 809
    .local v23, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v30, 0x0

    .line 810
    .local v30, "updated":Z
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 811
    .local v20, "ids":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .local v12, "arr$":[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    array-length v0, v12

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    aget-object v15, v12, v19

    .line 812
    .local v15, "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v22

    invoke-virtual {v15, v2, v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->deleteMessage(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 813
    const/16 v30, 0x1

    .line 811
    :cond_11
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 800
    .end local v12    # "arr$":[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .end local v15    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .end local v19    # "i$":I
    .end local v20    # "ids":Ljava/lang/Integer;
    .end local v21    # "len$":I
    .end local v23    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "updated":Z
    :cond_12
    iget v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v13, v2, :cond_8

    .line 801
    const/16 v22, 0x0

    goto :goto_6

    .line 805
    :cond_13
    if-eqz v13, :cond_f

    goto/16 :goto_5

    .line 817
    .restart local v23    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "updated":Z
    :cond_14
    if-eqz v30, :cond_8

    .line 818
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_15

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 822
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_16

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 825
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_17

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 828
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_18

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 831
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 832
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1a
    const/16 v2, 0x8

    goto :goto_8

    .line 835
    .end local v13    # "channelId":I
    .end local v14    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v22    # "loadIndex":I
    .end local v23    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "updated":Z
    :cond_1b
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_25

    .line 836
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 837
    .restart local v28    # "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v28, v2

    if-nez v2, :cond_8

    .line 838
    const/4 v2, 0x1

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 839
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_1d

    const/16 v16, 0x1

    .line 840
    .restart local v16    # "enc":Z
    :goto_9
    const/16 v30, 0x0

    .line 841
    .restart local v30    # "updated":Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/MessageObject;

    .line 842
    .local v27, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_1c

    .line 845
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v7

    .line 846
    .restart local v7    # "type":I
    const/4 v2, -0x1

    if-eq v7, v2, :cond_8

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 850
    const/16 v30, 0x1

    goto :goto_a

    .line 839
    .end local v7    # "type":I
    .end local v16    # "enc":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v27    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v30    # "updated":Z
    :cond_1d
    const/16 v16, 0x0

    goto :goto_9

    .line 853
    .restart local v16    # "enc":Z
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v30    # "updated":Z
    :cond_1e
    if-eqz v30, :cond_8

    .line 854
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_1f

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 858
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_20

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 861
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_21

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 864
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_22

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 867
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 868
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_5

    :cond_24
    const/16 v2, 0x8

    goto :goto_b

    .line 872
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v16    # "enc":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v28    # "uid":J
    .end local v30    # "updated":Z
    :cond_25
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 873
    const/4 v2, 0x0

    aget-object v25, p2, v2

    check-cast v25, Ljava/lang/Integer;

    .line 874
    .local v25, "msgId":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v26, p2, v2

    check-cast v26, Ljava/lang/Integer;

    .line 875
    .local v26, "newMsgId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .restart local v12    # "arr$":[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    array-length v0, v12

    move/from16 v21, v0

    .restart local v21    # "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_c
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    aget-object v15, v12, v18

    .line 876
    .restart local v15    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->replaceMid(II)V

    .line 875
    add-int/lit8 v18, v18, 0x1

    goto :goto_c
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 11
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 928
    if-eqz p1, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    if-eqz v9, :cond_0

    iget v9, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eqz v9, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-object v7

    .line 931
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/SectionsListView;->getChildCount()I

    move-result v3

    .line 933
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 934
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/SectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 935
    .local v8, "view":Landroid/view/View;
    instance-of v9, v8, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v9, :cond_2

    move-object v1, v8

    .line 936
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 937
    .local v1, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v9, 0x6

    if-ge v4, v9, :cond_2

    .line 938
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 939
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-nez v6, :cond_3

    .line 933
    .end local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v4    # "i":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 942
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .restart local v4    # "i":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_3
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getImageView(I)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    .line 943
    .local v5, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 944
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 945
    .local v2, "coords":[I
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 946
    new-instance v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v7}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 947
    .local v7, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v9, 0x0

    aget v9, v2, v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 948
    const/4 v9, 0x1

    aget v9, v2, v9

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v9, v10

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 949
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 950
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 951
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 952
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 953
    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    goto :goto_0

    .line 937
    .end local v2    # "coords":[I
    .end local v7    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 964
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 974
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 907
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 908
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SectionsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 910
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/MediaActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MediaActivity$9;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 919
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 218
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 219
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 220
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 221
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 222
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 223
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "dialog_id"

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    .line 224
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    new-instance v1, Lorg/telegram/ui/MediaActivity$SharedMediaData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;-><init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/ui/MediaActivity$1;)V

    aput-object v1, v0, v8

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v4

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    :goto_1
    aput v0, v1, v2

    .line 227
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v1, v0, v6

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aput-boolean v2, v0, v6

    .line 224
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const v0, 0x7fffffff

    goto :goto_1

    .line 232
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v2

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 233
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 234
    return v6
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 241
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 242
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 243
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 244
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 883
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 887
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 891
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 896
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 899
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v0, :cond_2

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 902
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    .line 903
    return-void
.end method

.method public sendButtonPressed(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 983
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 989
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    .line 993
    :cond_0
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 977
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 924
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 968
    return-void
.end method

.class public Lorg/telegram/ui/PhotoPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    }
.end annotation


# instance fields
.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

.field private emptyView:Landroid/widget/TextView;

.field private giphyReqId:I

.field private giphySearchEndReached:Z

.field private itemWidth:I

.field private lastSearchString:Ljava/lang/String;

.field private lastSearchToken:I

.field private listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

.field private listView:Landroid/widget/GridView;

.field private loadingRecent:Z

.field private nextGiphySearchOffset:I

.field private nextSearchBingString:Ljava/lang/String;

.field private pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private progressView:Landroid/widget/FrameLayout;

.field private recentImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z

.field private selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private selectedWebPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private sendPressed:Z

.field private singlePhoto:Z

.field private type:I


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;ZLorg/telegram/ui/ChatActivity;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "selectedAlbum"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "onlyOnePhoto"    # Z
    .param p7, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;Z",
            "Lorg/telegram/ui/ChatActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "selectedPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .local p4, "selectedWebPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .local p5, "recentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultUrls:Ljava/util/HashMap;

    .line 99
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z

    .line 114
    const/16 v0, 0x64

    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    .line 123
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 124
    iput-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 125
    iput-object p4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    .line 126
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    .line 127
    iput-object p5, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 128
    iput-boolean p6, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    .line 129
    iput-object p7, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 130
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->isVideo:Z

    if-eqz v0, :cond_0

    .line 131
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    .line 133
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/PhotoPickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->searchGiphyImages(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$384(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/volley/RequestQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 974
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 976
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoPickerActivity$13;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 987
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private fixLayoutInternal()V
    .locals 8

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x0

    .line 990
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    .line 994
    .local v2, "position":I
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 995
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 998
    .local v3, "rotation":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 999
    const/4 v0, 0x3

    .line 1007
    .local v0, "columnsCount":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1008
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1009
    const/high16 v4, 0x43f50000    # 490.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    .line 1013
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    iget v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 1015
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1016
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setSelection(I)V

    .line 1018
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v4, :cond_0

    .line 1019
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1001
    .end local v0    # "columnsCount":I
    :cond_2
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1002
    :cond_3
    const/4 v0, 0x5

    .restart local v0    # "columnsCount":I
    goto :goto_1

    .line 1004
    .end local v0    # "columnsCount":I
    :cond_4
    const/4 v0, 0x3

    .restart local v0    # "columnsCount":I
    goto :goto_1

    .line 1011
    :cond_5
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v0, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    goto :goto_2
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 470
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 472
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 473
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 474
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 475
    check-cast v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .line 476
    .local v2, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    iget-object v6, v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 477
    .local v4, "num":I
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v6, :cond_1

    .line 478
    if-ltz v4, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 472
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .restart local v4    # "num":I
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 484
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 488
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 492
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :cond_2
    if-ne v4, p1, :cond_0

    .line 497
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    .end local v5    # "view":Landroid/view/View;
    :goto_2
    return-object v2

    .line 486
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .restart local v4    # "num":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_1

    .line 497
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private searchBingImages(Ljava/lang/String;II)V
    .locals 12
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 867
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v1, :cond_1

    .line 868
    iput-boolean v10, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 869
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    if-eqz v1, :cond_0

    .line 870
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    invoke-virtual {v1, v2, v7}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 871
    iput v10, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    .line 873
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 876
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 878
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 879
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;

    .line 886
    .local v3, "url":Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$12;

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/PhotoPickerActivity$10;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoPickerActivity$10;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$11;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoPickerActivity$11;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PhotoPickerActivity$12;-><init>(Lorg/telegram/ui/PhotoPickerActivity;ILjava/lang/String;Lorg/json/JSONObject;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    .line 949
    .local v0, "jsonObjReq":Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;->setShouldCache(Z)Lorg/telegram/messenger/volley/Request;

    .line 950
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lorg/telegram/messenger/volley/Request;

    .line 951
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/volley/RequestQueue;->add(Lorg/telegram/messenger/volley/Request;)Lorg/telegram/messenger/volley/Request;

    .line 958
    .end local v0    # "jsonObjReq":Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;
    .end local v3    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 882
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 883
    .local v9, "phone":Ljava/lang/String;
    const-string/jumbo v1, "44"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "49"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "43"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "31"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 884
    .local v7, "adult":Z
    :cond_3
    :goto_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "https://api.datamarket.azure.com/Bing/Search/v1/Image?Query=\'%s\'&$skip=%d&$top=%d&$format=json%s"

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x3

    if-eqz v7, :cond_5

    const-string/jumbo v1, ""

    :goto_3
    aput-object v1, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "url":Ljava/lang/String;
    goto/16 :goto_0

    .end local v3    # "url":Ljava/lang/String;
    .end local v7    # "adult":Z
    :cond_4
    move v7, v10

    .line 883
    goto :goto_2

    .line 884
    .restart local v7    # "adult":Z
    :cond_5
    const-string/jumbo v1, "&Adult=\'Off\'"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 952
    .end local v7    # "adult":Z
    .end local v9    # "phone":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 953
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    iput-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;

    .line 955
    iput-boolean v10, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 956
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    goto :goto_1
.end method

.method private searchGiphyImages(Ljava/lang/String;I)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 729
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v2, :cond_1

    .line 730
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 731
    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    if-eqz v2, :cond_0

    .line 732
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    invoke-virtual {v2, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 733
    iput v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    .line 735
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 737
    :cond_1
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 738
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;-><init>()V

    .line 739
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;->q:Ljava/lang/String;

    .line 740
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;->offset:I

    .line 741
    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    .line 742
    .local v1, "token":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$9;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/PhotoPickerActivity$9;-><init>(Lorg/telegram/ui/PhotoPickerActivity;ILjava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    .line 799
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->classGuid:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 864
    return-void
.end method

.method private sendSelectedPhotos()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    if-eqz v0, :cond_2

    .line 971
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->actionButtonPressed(Z)V

    .line 970
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    goto :goto_0
.end method

.method private updateSearchInterface()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 717
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 718
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    :goto_0
    return-void

    .line 722
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelButtonPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->actionButtonPressed(Z)V

    .line 671
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    .line 672
    return v1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v13, 0x42400000    # 48.0f

    const/4 v12, 0x1

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 163
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, -0xcccccd

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 164
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, -0xc2c2c3

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(I)V

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, 0x7f020131

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 166
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v4, :cond_7

    .line 167
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 182
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v4, :cond_1

    .line 183
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 184
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f020141

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 246
    .end local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v4, :cond_2

    .line 247
    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v4, :cond_9

    .line 248
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v6, "SearchImagesTitle"

    const v7, 0x7f07043a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 254
    :cond_2
    :goto_1
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->fragmentView:Landroid/view/View;

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 257
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 259
    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    .line 260
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 261
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 262
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v12}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 263
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 264
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalScrollBarEnabled(Z)V

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 266
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 267
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 268
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 269
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    const v6, 0x7f0201ab

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setSelector(I)V

    .line 270
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 273
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 274
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    if-eqz v4, :cond_a

    move v4, v5

    :goto_2
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 275
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    const v6, -0xcccccd

    invoke-static {v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 278
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v4, :cond_3

    .line 312
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 338
    :cond_3
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    .line 339
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    const v6, -0x7f7f80

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 341
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 342
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v4, :cond_b

    .line 344
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v6, "NoPhotos"

    const v7, 0x7f07033e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_4
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 355
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 356
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    if-eqz v4, :cond_d

    move v4, v5

    :goto_4
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 357
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v4, :cond_5

    .line 366
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$6;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 386
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    .line 387
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 388
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 389
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 390
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 391
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 392
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    if-eqz v4, :cond_e

    :goto_5
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 393
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 396
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 398
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 399
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 400
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    .line 406
    .end local v3    # "progressBar":Landroid/widget/ProgressBar;
    :cond_5
    new-instance v4, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 407
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 408
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PickerBottomLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 409
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 410
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 411
    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoPickerActivity$7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoPickerActivity$7;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/PhotoPickerActivity$8;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoPickerActivity$8;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    if-eqz v4, :cond_6

    .line 427
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 430
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 431
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5, v12}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 433
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 168
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v4, :cond_8

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "SearchImagesTitle"

    const v7, 0x7f07043a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 170
    :cond_8
    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-ne v4, v12, :cond_0

    .line 171
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "SearchGifsTitle"

    const v7, 0x7f070437

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 249
    :cond_9
    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-ne v4, v12, :cond_2

    .line 250
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v6, "SearchGifsTitle"

    const v7, 0x7f070437

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 274
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto/16 :goto_2

    .line 346
    :cond_b
    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v4, :cond_c

    .line 347
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v6, "NoRecentPhotos"

    const v7, 0x7f070343

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 348
    :cond_c
    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-ne v4, v12, :cond_4

    .line 349
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v6, "NoRecentGIFs"

    const v7, 0x7f070342

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 356
    :cond_d
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto/16 :goto_4

    .line 392
    :cond_e
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto/16 :goto_5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 458
    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v0, :cond_1

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->removeSelfFromStack()V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    if-ne p1, v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 462
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 463
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    .line 464
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    goto :goto_0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 502
    invoke-direct {p0, p3}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    move-result-object v0

    .line 503
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    if-eqz v0, :cond_0

    .line 504
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 505
    .local v1, "coords":[I
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 506
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 507
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 508
    const/4 v3, 0x1

    aget v3, v1, v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 509
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 510
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 511
    iget-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 512
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 513
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 516
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 561
    invoke-direct {p0, p3}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    move-result-object v0

    .line 562
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    if-eqz v0, :cond_0

    .line 563
    iget-object v1, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 565
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPhotoChecked(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_1

    .line 610
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 618
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 610
    goto :goto_0

    .line 613
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 618
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_0

    .line 616
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_1

    :cond_3
    move v2, v3

    .line 618
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 451
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 452
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->fixLayout()V

    .line 453
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 138
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lorg/telegram/messenger/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->loadWebRecent(I)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    .line 146
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 152
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/volley/RequestQueue;->stop()V

    .line 157
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 444
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 446
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->fixLayout()V

    .line 447
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 708
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 711
    :cond_0
    return-void
.end method

.method public sendButtonPressed(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 677
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v2, :cond_3

    .line 678
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 679
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 683
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos()V

    goto :goto_0

    .line 685
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 692
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_2
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 695
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 696
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 690
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_2
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    .prologue
    .line 961
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    .line 962
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 624
    const/4 v1, 0x1

    .line 625
    .local v1, "add":Z
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v7, :cond_4

    .line 626
    if-ltz p1, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 630
    .local v5, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 631
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const/4 v1, 0x0

    .line 655
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 656
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 657
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 658
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 659
    .local v4, "num":I
    if-ne v4, p1, :cond_7

    .line 660
    check-cast v6, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .end local v6    # "view":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    .line 664
    .end local v4    # "num":I
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 665
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    invoke-interface {v7}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->selectedPhotosChanged()V

    goto :goto_0

    .line 634
    .end local v0    # "a":I
    .end local v3    # "count":I
    .restart local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 639
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 640
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 644
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_3
    if-ltz p1, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 647
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 648
    .local v5, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 649
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const/4 v1, 0x0

    goto :goto_1

    .line 642
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_3

    .line 652
    .restart local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 656
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "num":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public updatePhotoAtIndex(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0201fc

    .line 521
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    move-result-object v1

    .line 522
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    if-eqz v1, :cond_0

    .line 523
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v3, :cond_4

    .line 524
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 525
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 526
    .local v2, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 557
    .end local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_0
    :goto_0
    return-void

    .line 528
    .restart local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 529
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 530
    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_2

    .line 531
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vthumb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thumb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_0

    .line 540
    .end local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 545
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 546
    .local v2, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_6

    .line 547
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 543
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_1

    .line 548
    .restart local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_6
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 549
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 550
    :cond_7
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 551
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 553
    :cond_8
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public willHidePhotoViewer()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 605
    :cond_0
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 570
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 571
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 572
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 573
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 571
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 576
    check-cast v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .line 577
    .local v2, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 578
    .local v4, "num":I
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v6, :cond_4

    .line 579
    if-ltz v4, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 593
    :cond_2
    if-ne v4, p3, :cond_0

    .line 594
    iget-object v6, v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 598
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void

    .line 584
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .restart local v4    # "num":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 585
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 589
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_2
    if-ltz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    goto :goto_1

    .line 587
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_2
.end method

.class public Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSearchAdapter"
.end annotation


# instance fields
.field private currentType:I

.field protected globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private lastReqId:I

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 1647
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 1640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    .line 1643
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1648
    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    .line 1649
    iput p3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    .line 1650
    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1638
    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 1638
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1638
    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5002(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 1638
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1742
    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1823
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1833
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1837
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1847
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1848
    .local v0, "count":I
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1849
    .local v1, "globalCount":I
    if-eqz v1, :cond_0

    .line 1850
    add-int/2addr v0, v1

    .line 1852
    :cond_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1638
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/telegram/messenger/MessageObject;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1868
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1871
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1877
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1928
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1887
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_8

    .line 1888
    :cond_0
    if-nez p2, :cond_1

    .line 1889
    new-instance p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object v1, p2

    .line 1891
    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1892
    .local v1, "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1893
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1894
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1895
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    move v3, v5

    :goto_1
    aget-object v3, v6, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 1923
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_2
    :goto_3
    return-object p2

    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_3
    move v3, v5

    .line 1893
    goto :goto_0

    :cond_4
    move v3, v4

    .line 1895
    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    .line 1897
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_7
    move v4, v5

    goto :goto_4

    .line 1899
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_8
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 1900
    if-nez p2, :cond_9

    .line 1901
    new-instance p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    move-object v3, p2

    .line 1902
    check-cast v3, Lorg/telegram/ui/Cells/SharedLinkCell;

    new-instance v6, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    :cond_9
    move-object v2, p2

    .line 1914
    check-cast v2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 1915
    .local v2, "sharedLinkCell":Lorg/telegram/ui/Cells/SharedLinkCell;
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1916
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_a

    move v3, v4

    :goto_5
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1917
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$5300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1918
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_b

    move v3, v5

    :goto_6
    aget-object v3, v6, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_c

    :goto_7
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_a
    move v3, v5

    .line 1916
    goto :goto_5

    :cond_b
    move v3, v4

    .line 1918
    goto :goto_6

    :cond_c
    move v4, v5

    goto :goto_7

    .line 1920
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Z

    move-result v3

    if-nez v3, :cond_e

    :goto_8
    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_3

    :cond_e
    move v4, v5

    goto :goto_8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1933
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1882
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1842
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSearch(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 1856
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1857
    .local v1, "localCount":I
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1858
    .local v0, "globalCount":I
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 1863
    :cond_0
    :goto_0
    return v2

    .line 1860
    :cond_1
    if-le p1, v1, :cond_0

    add-int v3, v0, v1

    if-gt p1, v3, :cond_0

    .line 1861
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryServerSearch(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "max_id"    # I
    .param p3, "did"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1653
    long-to-int v2, p3

    .line 1654
    .local v2, "uid":I
    if-nez v2, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    if-eqz v3, :cond_2

    .line 1658
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    invoke-virtual {v3, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1659
    iput v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1661
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1662
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1663
    iput v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    .line 1664
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1667
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1668
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    .line 1669
    const/16 v3, 0x32

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1670
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 1671
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-ne v3, v6, :cond_6

    .line 1672
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1678
    :cond_5
    :goto_1
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1679
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1680
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v3, :cond_0

    .line 1683
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    .line 1684
    .local v0, "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;

    invoke-direct {v4, p0, p2, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;II)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1710
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->classGuid:I
    invoke-static {v5}, Lorg/telegram/ui/MediaActivity;->access$4500(Lorg/telegram/ui/MediaActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1673
    .end local v0    # "currentReqId":I
    :cond_6
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 1674
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 1675
    :cond_7
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1676
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1
.end method

.method public search(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1715
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 1722
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1723
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1739
    :goto_1
    return-void

    .line 1718
    :catch_0
    move-exception v6

    .line 1719
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1725
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

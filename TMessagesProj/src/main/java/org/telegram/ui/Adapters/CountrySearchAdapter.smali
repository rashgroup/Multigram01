.class public Lorg/telegram/ui/Adapters/CountrySearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "CountrySearchAdapter.java"


# instance fields
.field private countries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/CountryAdapter$Country;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/CountryAdapter$Country;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/CountryAdapter$Country;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;>;"
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->countries:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/CountrySearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 26
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/CountrySearchAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->countries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/CountryAdapter$Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "arrCounties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    new-instance v0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->getItem(I)Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 122
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    if-nez p2, :cond_0

    .line 141
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 144
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    .local v0, "c":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    move-object v1, p2

    .line 145
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v3, v0, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->code:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    return-object p2

    .line 145
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public search(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 63
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 46
    :catch_0
    move-exception v6

    .line 47
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

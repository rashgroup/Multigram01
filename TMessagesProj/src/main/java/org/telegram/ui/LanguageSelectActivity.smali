.class public Lorg/telegram/ui/LanguageSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;,
        Lorg/telegram/ui/LanguageSelectActivity$SearchAdapter;
    }
.end annotation


# instance fields
.field private emptyTextView:Landroid/widget/TextView;

.field private listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

.field private listView:Landroid/widget/ListView;

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

.field public searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field private searchWas:Z

.field private searching:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 373
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/LanguageSelectActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LanguageSelectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LanguageSelectActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$8;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "arrCounties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/LocaleController$LocaleInfo;>;"
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$9;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 56
    iput-boolean v10, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    .line 57
    iput-boolean v10, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    .line 59
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v7, 0x7f020131

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 60
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 61
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v7, "Language"

    const v8, 0x7f07029e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v7, Lorg/telegram/ui/LanguageSelectActivity$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/LanguageSelectActivity$1;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 72
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v5

    .line 73
    .local v5, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v6, 0x7f020141

    invoke-virtual {v5, v10, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/LanguageSelectActivity$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/LanguageSelectActivity$2;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 102
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v6

    const-string/jumbo v7, "Search"

    const v8, 0x7f070435

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v6, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    .line 105
    new-instance v6, Lorg/telegram/ui/LanguageSelectActivity$SearchAdapter;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$SearchAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    .line 107
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    .line 109
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "emptyTextLayout":Landroid/widget/LinearLayout;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 115
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 116
    const/16 v6, 0x30

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v6, Lorg/telegram/ui/LanguageSelectActivity$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LanguageSelectActivity$3;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    .line 126
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    const v7, -0x7f7f80

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "NoResult"

    const v8, 0x7f070344

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .local v4, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 133
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 134
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 135
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    .restart local v4    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 141
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 142
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 143
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    .line 146
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 147
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 148
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 150
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 153
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 154
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 155
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v7, Lorg/telegram/ui/LanguageSelectActivity$4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/LanguageSelectActivity$4;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v7, Lorg/telegram/ui/LanguageSelectActivity$5;

    invoke-direct {v7, p0}, Lorg/telegram/ui/LanguageSelectActivity$5;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 220
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v7, Lorg/telegram/ui/LanguageSelectActivity$6;

    invoke-direct {v7, p0}, Lorg/telegram/ui/LanguageSelectActivity$6;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 233
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    return-object v6
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetChanged()V

    .line 242
    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    .line 269
    :goto_0
    return-void

    .line 249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$7;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 252
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

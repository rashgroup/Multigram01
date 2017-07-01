.class public Lorg/telegram/ui/CountrySelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CountrySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

.field private emptyTextView:Landroid/widget/TextView;

.field private listView:Lorg/telegram/ui/Components/LetterSectionsListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

.field private searchWas:Z

.field private searching:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CountrySelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/telegram/ui/CountrySelectActivity;->searching:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/CountrySelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/CountrySelectActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CountrySelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/telegram/ui/CountrySelectActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/CountrySelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/CountrySelectActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountryAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CountrySelectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity;->delegate:Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v10, -0x1

    .line 64
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v8, 0x7f020131

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 65
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 66
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v8, "ChooseCountry"

    const v9, 0x7f070165

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v8, Lorg/telegram/ui/CountrySelectActivity$1;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CountrySelectActivity$1;-><init>(Lorg/telegram/ui/CountrySelectActivity;)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 77
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v5

    .line 78
    .local v5, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v6, 0x7f020141

    invoke-virtual {v5, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/CountrySelectActivity$2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CountrySelectActivity$2;-><init>(Lorg/telegram/ui/CountrySelectActivity;)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 115
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v6

    const-string/jumbo v8, "Search"

    const v9, 0x7f070435

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    iput-boolean v11, p0, Lorg/telegram/ui/CountrySelectActivity;->searching:Z

    .line 118
    iput-boolean v11, p0, Lorg/telegram/ui/CountrySelectActivity;->searchWas:Z

    .line 120
    new-instance v6, Lorg/telegram/ui/Adapters/CountryAdapter;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Adapters/CountryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;

    .line 121
    new-instance v6, Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    iget-object v8, p0, Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/CountryAdapter;->getCountries()Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {v6, p1, v8}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    .line 123
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->fragmentView:Landroid/view/View;

    .line 125
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "emptyTextLayout":Landroid/widget/LinearLayout;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->fragmentView:Landroid/view/View;

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 131
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 132
    const/16 v6, 0x30

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v6, Lorg/telegram/ui/CountrySelectActivity$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/CountrySelectActivity$3;-><init>(Lorg/telegram/ui/CountrySelectActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    .line 142
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    const v8, -0x7f7f80

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 144
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v8, "NoResult"

    const v9, 0x7f070344

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    .local v4, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 149
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 150
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 151
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .restart local v4    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 157
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 158
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 159
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v6, Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Components/LetterSectionsListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    .line 162
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 163
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 164
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDividerHeight(I)V

    .line 166
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 167
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/high16 v8, 0x2000000

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/LetterSectionsListView;->setScrollBarStyle(I)V

    .line 168
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    iget-object v8, p0, Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 170
    iget-object v8, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollbarPosition(I)V

    .line 171
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->fragmentView:Landroid/view/View;

    check-cast v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/LetterSectionsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 174
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 175
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v7, Lorg/telegram/ui/CountrySelectActivity$4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/CountrySelectActivity$4;-><init>(Lorg/telegram/ui/CountrySelectActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v7, Lorg/telegram/ui/CountrySelectActivity$5;

    invoke-direct {v7, p0}, Lorg/telegram/ui/CountrySelectActivity$5;-><init>(Lorg/telegram/ui/CountrySelectActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 217
    iget-object v6, p0, Lorg/telegram/ui/CountrySelectActivity;->fragmentView:Landroid/view/View;

    return-object v6

    .line 170
    :cond_0
    const/4 v6, 0x2

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/CountryAdapter;->notifyDataSetChanged()V

    .line 226
    :cond_0
    return-void
.end method

.method public setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity;->delegate:Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    .line 230
    return-void
.end method

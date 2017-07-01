.class public Lorg/telegram/ui/ActionBar/ActionBarMenu;
.super Landroid/widget/LinearLayout;
.source "ActionBarMenu.java"


# instance fields
.field protected parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layer"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setOrientation(I)V

    .line 27
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 28
    return-void
.end method


# virtual methods
.method public addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p1, "id"    # I
    .param p2, "icon"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 6
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "backgroundColor"    # I

    .prologue
    .line 61
    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 3
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "width"    # I

    .prologue
    .line 69
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;I)V

    .line 70
    .local v1, "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTag(Ljava/lang/Object;)V

    .line 71
    if-eqz p4, :cond_0

    .line 72
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    iput p5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 80
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenu$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v1

    .line 74
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 6
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 53
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addItemResource(II)Landroid/view/View;
    .locals 5
    .param p1, "id"    # I
    .param p2, "resourceId"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 36
    .local v1, "li":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, "view":Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 41
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object v2
.end method

.method public addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 6
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "width"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public clearItems()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->removeAllViews()V

    .line 117
    return-void
.end method

.method public closeSearchField()V
    .locals 6

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 141
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 143
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 144
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 145
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 151
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 141
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 176
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideAllPopupMenus()V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 101
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 102
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 104
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method

.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public onMenuButtonPressed()V
    .locals 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 121
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 122
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 124
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 125
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    .line 137
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 131
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    iget-boolean v4, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->overrideMenuClick:Z

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_1
.end method

.method public openSearchField(ZLjava/lang/String;)V
    .locals 6
    .param p1, "toggle"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 155
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 158
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 159
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 163
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 169
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 155
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

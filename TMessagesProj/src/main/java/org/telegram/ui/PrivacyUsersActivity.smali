.class public Lorg/telegram/ui/PrivacyUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PrivacyUsersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;,
        Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;
    }
.end annotation


# static fields
.field private static final block_user:I = 0x1


# instance fields
.field private delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

.field private isAlwaysShare:Z

.field private isGroup:Z

.field private listView:Landroid/widget/ListView;

.field private listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

.field private selectedUserId:I

.field private uidArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ZZ)V
    .locals 0
    .param p2, "group"    # Z
    .param p3, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    .line 62
    iput-boolean p3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    .line 63
    iput-boolean p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isGroup:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacyUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacyUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isGroup:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->selectedUserId:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PrivacyUsersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyUsersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->selectedUserId:I

    return p1
.end method

.method private updateVisibleRows(I)V
    .locals 4
    .param p1, "mask"    # I

    .prologue
    .line 216
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    if-nez v3, :cond_1

    .line 226
    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 220
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 221
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_2

    .line 223
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 220
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, -0x1

    .line 81
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, 0x7f020131

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 82
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 83
    iget-boolean v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isGroup:Z

    if-eqz v5, :cond_1

    .line 84
    iget-boolean v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    if-eqz v5, :cond_0

    .line 85
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "AlwaysAllow"

    const v7, 0x7f070088

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/PrivacyUsersActivity$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PrivacyUsersActivity$1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 126
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 127
    .local v3, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v5, 0x7f020247

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 129
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->fragmentView:Landroid/view/View;

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 132
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, "emptyTextView":Landroid/widget/TextView;
    const v5, -0x7f7f80

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    const-string/jumbo v5, "NoContacts"

    const v6, 0x7f070334

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 141
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 142
    const/16 v5, 0x30

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v5, Lorg/telegram/ui/PrivacyUsersActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PrivacyUsersActivity$2;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    .line 152
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 153
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 154
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 156
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    new-instance v6, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 158
    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 161
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 162
    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lorg/telegram/ui/PrivacyUsersActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PrivacyUsersActivity$3;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lorg/telegram/ui/PrivacyUsersActivity$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PrivacyUsersActivity$4;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 202
    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 87
    .end local v0    # "emptyTextView":Landroid/widget/TextView;
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "NeverAllow"

    const v7, 0x7f07031e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 90
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "AlwaysShareWithTitle"

    const v7, 0x7f07008c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 93
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "NeverShareWithTitle"

    const v7, 0x7f070322

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 157
    .restart local v0    # "emptyTextView":Landroid/widget/TextView;
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_3
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 207
    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v1, :cond_1

    .line 208
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PrivacyUsersActivity;->updateVisibleRows(I)V

    .line 213
    .end local v0    # "mask":I
    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 69
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 76
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 238
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;)V
    .locals 0
    .param p1, "privacyActivityDelegate"    # Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    .line 230
    return-void
.end method

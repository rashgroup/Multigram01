.class public Lorg/telegram/ui/BlockedUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "BlockedUsersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final block_user:I = 0x1


# instance fields
.field private emptyTextView:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private listViewAdapter:Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;

.field private progressView:Landroid/widget/FrameLayout;

.field private selectedUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/BlockedUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/BlockedUsersActivity;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/ui/BlockedUsersActivity;->selectedUserId:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/BlockedUsersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/BlockedUsersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/ui/BlockedUsersActivity;->selectedUserId:I

    return p1
.end method

.method private updateVisibleRows(I)V
    .locals 4
    .param p1, "mask"    # I

    .prologue
    .line 191
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    if-nez v3, :cond_1

    .line 201
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 195
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 196
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_2

    .line 198
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 195
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x2

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 69
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020131

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 70
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 71
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "BlockedUsers"

    const v6, 0x7f0700d8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/BlockedUsersActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/BlockedUsersActivity$1;-><init>(Lorg/telegram/ui/BlockedUsersActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 89
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 90
    .local v1, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f020247

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 92
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->fragmentView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/BlockedUsersActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 95
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    .line 96
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    const v5, -0x7f7f80

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "NoBlocked"

    const v6, 0x7f070330

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v5, 0x33

    invoke-static {v7, v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/BlockedUsersActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/BlockedUsersActivity$2;-><init>(Lorg/telegram/ui/BlockedUsersActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->progressView:Landroid/widget/FrameLayout;

    .line 110
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-static {v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 113
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x11

    invoke-static {v10, v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    .line 116
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 117
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 118
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 120
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/BlockedUsersActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/BlockedUsersActivity;->listViewAdapter:Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 122
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    invoke-static {v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/BlockedUsersActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/BlockedUsersActivity$3;-><init>(Lorg/telegram/ui/BlockedUsersActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/BlockedUsersActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/BlockedUsersActivity$4;-><init>(Lorg/telegram/ui/BlockedUsersActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 159
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 167
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 121
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 164
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 172
    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v1, :cond_2

    .line 173
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/BlockedUsersActivity;->updateVisibleRows(I)V

    .line 188
    .end local v0    # "mask":I
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    if-ne p1, v1, :cond_1

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity;->progressView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 181
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/telegram/ui/BlockedUsersActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 184
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity;->listViewAdapter:Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity;->listViewAdapter:Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->blockUser(I)V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 54
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 55
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 56
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 63
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 64
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/BlockedUsersActivity;->listViewAdapter:Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/BlockedUsersActivity;->listViewAdapter:Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/BlockedUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 209
    :cond_0
    return-void
.end method

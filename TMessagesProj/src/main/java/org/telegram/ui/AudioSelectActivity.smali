.class public Lorg/telegram/ui/AudioSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AudioSelectActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/AudioSelectActivity$ListAdapter;,
        Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;
    }
.end annotation


# instance fields
.field private audioEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioEntry;",
            ">;"
        }
    .end annotation
.end field

.field private bottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private delegate:Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

.field private listViewAdapter:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

.field private loadingAudio:Z

.field private playingAudio:Lorg/telegram/messenger/MessageObject;

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private selectedAudios:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MediaController$AudioEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;

    .line 274
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/AudioSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/AudioSelectActivity;->updateBottomLayoutCount()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->delegate:Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/AudioSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->listViewAdapter:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/AudioSelectActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioSelectActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity;->playingAudio:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method private loadAudio()V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/AudioSelectActivity;->loadingAudio:Z

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 188
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/AudioSelectActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioSelectActivity$5;-><init>(Lorg/telegram/ui/AudioSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method private updateBottomLayoutCount()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->bottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 177
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 85
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f020131

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 86
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 87
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "AttachMusic"

    const v5, 0x7f0700be

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/AudioSelectActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/AudioSelectActivity$1;-><init>(Lorg/telegram/ui/AudioSelectActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 97
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->fragmentView:Landroid/view/View;

    .line 98
    iget-object v7, p0, Lorg/telegram/ui/AudioSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    .line 100
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v4, "NoAudio"

    const v5, 0x7f07032f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v8, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 109
    new-instance v2, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/AudioSelectActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioSelectActivity;->listViewAdapter:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 111
    const/16 v2, 0x33

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v1, Lorg/telegram/ui/AudioSelectActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioSelectActivity$2;-><init>(Lorg/telegram/ui/AudioSelectActivity;)V

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    new-instance v1, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v1, p1, v10}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/AudioSelectActivity;->bottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity;->bottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v2, 0x30

    const/16 v4, 0x50

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity;->bottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/AudioSelectActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/AudioSelectActivity$3;-><init>(Lorg/telegram/ui/AudioSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity;->bottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/AudioSelectActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/AudioSelectActivity$4;-><init>(Lorg/telegram/ui/AudioSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    .local v9, "shadow":Landroid/view/View;
    const v1, 0x7f02012a

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x53

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-boolean v0, p0, Lorg/telegram/ui/AudioSelectActivity;->loadingAudio:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 160
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/AudioSelectActivity;->updateBottomLayoutCount()V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 110
    .end local v9    # "shadow":Landroid/view/View;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 158
    .restart local v9    # "shadow":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 166
    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/AudioSelectActivity;->removeSelfFromStack()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->listViewAdapter:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->listViewAdapter:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 67
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 68
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/AudioSelectActivity;->loadAudio()V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 76
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 77
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity;->playingAudio:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity;->playingAudio:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 81
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;)V
    .locals 0
    .param p1, "audioSelectActivityDelegate"    # Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity;->delegate:Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    .line 181
    return-void
.end method

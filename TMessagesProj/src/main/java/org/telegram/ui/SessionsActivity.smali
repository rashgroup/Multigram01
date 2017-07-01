.class public Lorg/telegram/ui/SessionsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SessionsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

.field private currentSessionRow:I

.field private currentSessionSectionRow:I

.field private emptyLayout:Landroid/widget/LinearLayout;

.field private listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

.field private loading:Z

.field private noOtherSessionsRow:I

.field private otherSessionsEndRow:I

.field private otherSessionsSectionRow:I

.field private otherSessionsStartRow:I

.field private otherSessionsTerminateDetail:I

.field private rowCount:I

.field private sessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_authorization;",
            ">;"
        }
    .end annotation
.end field

.field private terminateAllSessionsDetailRow:I

.field private terminateAllSessionsRow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SessionsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SessionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/SessionsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_authorization;)Lorg/telegram/tgnet/TLRPC$TL_authorization;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/SessionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    return v0
.end method

.method private loadSessions(Z)V
    .locals 4
    .param p1, "silent"    # Z

    .prologue
    .line 291
    iget-boolean v2, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v2, :cond_0

    .line 325
    :goto_0
    return-void

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    .line 297
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;-><init>()V

    .line 298
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/SessionsActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SessionsActivity$4;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 324
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/SessionsActivity;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0
.end method

.method private updateRows()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v0, :cond_0

    .line 330
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    .line 331
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 336
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v0, :cond_1

    .line 338
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 342
    :goto_1
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 343
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 344
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 345
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 346
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 347
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    .line 358
    :goto_2
    return-void

    .line 333
    :cond_0
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 334
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    goto :goto_0

    .line 340
    :cond_1
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    goto :goto_1

    .line 349
    :cond_2
    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 350
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 351
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 352
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 353
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 354
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 355
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    .line 356
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v9, 0x7f020131

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 90
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 91
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v9, "SessionsTitle"

    const v10, 0x7f070460

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v9, Lorg/telegram/ui/SessionsActivity$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/SessionsActivity$1;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 101
    new-instance v8, Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/SessionsActivity$ListAdapter;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    .line 103
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/SessionsActivity;->fragmentView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 105
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v8, -0xf0f10

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 107
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    .line 108
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f020127

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 111
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/AbsListView$LayoutParams;

    const/4 v10, -0x1

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-direct {v9, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "imageView":Landroid/widget/ImageView;
    const v8, 0x7f0200e8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .local v3, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 118
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v7, "textView":Landroid/widget/TextView;
    const v8, -0x757576

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    const/4 v8, 0x1

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    const-string/jumbo v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    const-string/jumbo v8, "NoOtherSessions"

    const v9, 0x7f07033c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    .restart local v3    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 130
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 131
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 132
    const/16 v8, 0x11

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v7, Landroid/widget/TextView;

    .end local v7    # "textView":Landroid/widget/TextView;
    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 136
    .restart local v7    # "textView":Landroid/widget/TextView;
    const v8, -0x757576

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    const/4 v8, 0x1

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 139
    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    const-string/jumbo v8, "NoOtherSessionsInfo"

    const v9, 0x7f07033d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .restart local v3    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 144
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 145
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 146
    const/16 v8, 0x11

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 147
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v6, "progressView":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 153
    const/4 v8, -0x1

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 154
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v8, Lorg/telegram/ui/SessionsActivity$2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/SessionsActivity$2;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 163
    .local v5, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 165
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 166
    const/4 v8, -0x2

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 167
    const/16 v8, 0x11

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 171
    .local v4, "listView":Landroid/widget/ListView;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 173
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 174
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 175
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 179
    const/4 v8, -0x1

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 180
    const/16 v8, 0x30

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    new-instance v8, Lorg/telegram/ui/SessionsActivity$3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/SessionsActivity$3;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity;->fragmentView:Landroid/view/View;

    return-object v8
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 285
    sget v0, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    if-ne p1, v0, :cond_0

    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    .line 77
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 84
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 281
    :cond_0
    return-void
.end method

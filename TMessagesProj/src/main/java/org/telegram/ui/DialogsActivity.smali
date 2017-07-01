.class public Lorg/telegram/ui/DialogsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DialogsActivity$SlidingTabView;,
        Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
    }
.end annotation


# static fields
.field private static dialogsLoaded:Z


# instance fields
.field private addToGroupAlertString:Ljava/lang/String;

.field private button1:Landroid/widget/ImageView;

.field private button2:Landroid/widget/ImageView;

.field private button3:Landroid/widget/ImageView;

.field private button4:Landroid/widget/ImageView;

.field private button5:Landroid/widget/ImageView;

.field private button6:Landroid/widget/ImageView;

.field private button7:Landroid/widget/ImageView;

.field private checkPermission:Z

.field private countAll:Landroid/widget/TextView;

.field private countBar:Landroid/widget/LinearLayout;

.field private countCh:Landroid/widget/TextView;

.field private countCon:Landroid/widget/TextView;

.field private countG:Landroid/widget/TextView;

.field private countSG:Landroid/widget/TextView;

.field private countUnread:Landroid/widget/TextView;

.field private countfav:Landroid/widget/TextView;

.field private delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

.field private dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

.field private dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field private dialogsType:I

.field private downX:F

.field private downY:F

.field private emptyView:Landroid/widget/LinearLayout;

.field private floatingButton:Landroid/widget/ImageView;

.field private floatingButton1:Landroid/widget/ImageView;

.field private floatingHidden:Z

.field private final floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private iconColor:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private onlySelect:Z

.field private openedDialogId:J

.field private passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private permissionDialog:Landroid/app/AlertDialog;

.field private prevPosition:I

.field private prevTop:I

.field private progressView:Landroid/widget/ProgressBar;

.field private sIconColor:I

.field private scrollUpdated:Z

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private searchString:Ljava/lang/String;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;

.field private selectAlertStringGroup:Ljava/lang/String;

.field private selectedDialog:J

.field private slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

.field private swipe:Z

.field private tabsHeight:I

.field private tabsHidden:Z

.field private toolBar:Landroid/widget/LinearLayout;

.field private upX:F

.field private upY:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 128
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 130
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    .line 152
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity;->swipe:Z

    .line 183
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DialogsActivity;JZZ)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DialogsActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    return-wide v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/DialogsActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    return-wide p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DialogsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DialogsActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/DialogsActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DialogsActivity;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->onSwipe(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->prevPosition:I

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->prevPosition:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->prevTop:I

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->prevTop:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->sIconColor:I

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->sIconColor:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->iconColor:I

    return v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->iconColor:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private askForPermissons()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1225
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1226
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1229
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v2, "permissons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1231
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    const-string/jumbo v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    const-string/jumbo v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_1
    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1236
    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1240
    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createTabs(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x8

    const/4 v8, 0x6

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1725
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "mainconfig"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1726
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "default_tab"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1727
    .local v1, "defaulTab":I
    move v5, v1

    .line 1729
    .local v5, "selectedTab":I
    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v6, :cond_10

    .line 1730
    const-string/jumbo v6, "selected_tab"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1731
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1732
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "last_tab"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1733
    const/4 v5, 0x6

    .line 1734
    const-string/jumbo v6, "selected_tab"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1735
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1745
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    new-instance v6, Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-direct {v6, p0, p1, v5}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;I)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    .line 1746
    const-string/jumbo v6, "tab_bot"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1747
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v6, v10}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1748
    :cond_1
    const-string/jumbo v6, "tab_channel"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1749
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1750
    :cond_2
    const-string/jumbo v6, "tab_supergroup"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1751
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1752
    :cond_3
    const-string/jumbo v6, "tab_group"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1753
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1754
    :cond_4
    const-string/jumbo v6, "tab_contact"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1755
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1756
    :cond_5
    const-string/jumbo v6, "tab_favorite"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1757
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1758
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1759
    const-string/jumbo v6, "tab_unread"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1760
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V

    .line 1762
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    int-to-float v7, v7

    invoke-static {v12, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1764
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    .line 1765
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1766
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    const-string/jumbo v7, "tab_count"

    invoke-interface {v4, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1767
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    const/16 v7, 0xa

    invoke-virtual {v6, v10, v10, v10, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1768
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    const/16 v8, 0x30

    invoke-static {v12, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1770
    const-string/jumbo v6, "tabs_counter"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1771
    const-string/jumbo v6, "tab_bot"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1772
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1773
    .local v0, "count1":Landroid/widget/TextView;
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v10, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1775
    .end local v0    # "count1":Landroid/widget/TextView;
    :cond_8
    const-string/jumbo v6, "tab_channel"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1776
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    .line 1777
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogsActivity;->newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1779
    :cond_9
    const-string/jumbo v6, "tab_supergroup"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1780
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    .line 1781
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogsActivity;->newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1783
    :cond_a
    const-string/jumbo v6, "tab_group"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1784
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    .line 1785
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogsActivity;->newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1787
    :cond_b
    const-string/jumbo v6, "tab_contact"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1788
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    .line 1789
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogsActivity;->newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1791
    :cond_c
    const-string/jumbo v6, "tab_favorite"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1792
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    .line 1793
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogsActivity;->newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1795
    :cond_d
    const-string/jumbo v6, "tab_all"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1796
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    .line 1797
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogsActivity;->newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1799
    :cond_e
    const-string/jumbo v6, "tab_unread"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1800
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    .line 1801
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogsActivity;->newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1804
    :cond_f
    return-void

    .line 1737
    :cond_10
    const-string/jumbo v6, "last_tab"

    invoke-interface {v4, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1738
    .local v3, "lastTab":I
    if-ne v3, v11, :cond_0

    .line 1739
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1740
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "selected_tab"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1741
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private createToolBar(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1807
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    .line 1808
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1809
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1810
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1811
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    const/16 v3, 0x38

    const/16 v4, 0x50

    invoke-static {v7, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1813
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button1:Landroid/widget/ImageView;

    .line 1814
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button1:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1815
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button1:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1816
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button1:Landroid/widget/ImageView;

    const v3, 0x7f02029a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1817
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->button1:Landroid/widget/ImageView;

    const/16 v4, 0x23

    invoke-static {v5, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1818
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button1:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$25;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$25;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1827
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button2:Landroid/widget/ImageView;

    .line 1828
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button2:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1829
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button2:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1830
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button2:Landroid/widget/ImageView;

    const v3, 0x7f02029b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1831
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->button2:Landroid/widget/ImageView;

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1832
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button2:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$26;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$26;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1839
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button3:Landroid/widget/ImageView;

    .line 1840
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button3:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1841
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button3:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1842
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button3:Landroid/widget/ImageView;

    const v3, 0x7f020296

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1843
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->button3:Landroid/widget/ImageView;

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1844
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button3:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$27;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$27;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1851
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button4:Landroid/widget/ImageView;

    .line 1852
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button4:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1853
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button4:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1854
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button4:Landroid/widget/ImageView;

    const v3, 0x7f02029c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1855
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->button4:Landroid/widget/ImageView;

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1856
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button4:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$28;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$28;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1863
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button5:Landroid/widget/ImageView;

    .line 1864
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button5:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1865
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button5:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1866
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button5:Landroid/widget/ImageView;

    const v3, 0x7f020299

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1867
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->button5:Landroid/widget/ImageView;

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1868
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button5:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$29;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$29;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    .line 1876
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1877
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1878
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1879
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "chat_unlocked"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1880
    .local v0, "chatUnlocked":Z
    if-eqz v0, :cond_0

    .line 1881
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    const v3, 0x7f020298

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1885
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1886
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$30;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$30;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1899
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button7:Landroid/widget/ImageView;

    .line 1900
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button7:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1901
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button7:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1902
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button7:Landroid/widget/ImageView;

    const v3, 0x7f020295

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1903
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->button7:Landroid/widget/ImageView;

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1904
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button7:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$31;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$31;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1941
    return-void

    .line 1883
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    const v3, 0x7f020297

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private didSelectResult(JZZ)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "useAlert"    # Z
    .param p4, "param"    # Z

    .prologue
    .line 1546
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1547
    long-to-int v5, p1

    if-gez v5, :cond_1

    long-to-int v5, p1

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v5

    if-eqz v5, :cond_1

    long-to-int v5, p1

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isCanWriteToChannel(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1549
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, "AppName"

    const v6, 0x7f07009a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1550
    const-string/jumbo v5, "ChannelCantSendMessage"

    const v6, 0x7f070111

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1551
    const-string/jumbo v5, "OK"

    const v6, 0x7f07039f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1552
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1615
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 1556
    :cond_1
    if-eqz p3, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 1557
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1560
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1561
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, "AppName"

    const v6, 0x7f07009a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1562
    long-to-int v3, p1

    .line 1563
    .local v3, "lower_part":I
    const/16 v5, 0x20

    shr-long v6, p1, v5

    long-to-int v2, v6

    .line 1564
    .local v2, "high_id":I
    if-eqz v3, :cond_8

    .line 1565
    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 1566
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1567
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_0

    .line 1570
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1599
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    :goto_1
    const-string/jumbo v5, "OK"

    const v6, 0x7f07039f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/DialogsActivity$23;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$23;-><init>(Lorg/telegram/ui/DialogsActivity;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1605
    const-string/jumbo v5, "Cancel"

    const v6, 0x7f0700f2

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1606
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1572
    :cond_5
    if-lez v3, :cond_6

    .line 1573
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1574
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_0

    .line 1577
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1578
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    if-gez v3, :cond_4

    .line 1579
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1580
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_0

    .line 1583
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1584
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1586
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1591
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 1592
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1593
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_0

    .line 1596
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1608
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v2    # "high_id":I
    .end local v3    # "lower_part":I
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    if-eqz v5, :cond_a

    .line 1609
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    invoke-interface {v5, p0, p1, p2, p4}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;->didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V

    .line 1610
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    goto/16 :goto_0

    .line 1612
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_0
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1431
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v0, :cond_0

    .line 1432
    new-instance v0, Lorg/telegram/ui/Apogram/DialogsLoader;

    invoke-direct {v0}, Lorg/telegram/ui/Apogram/DialogsLoader;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/Apogram/DialogsLoader;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 1438
    :goto_0
    return-object v0

    .line 1433
    :cond_0
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 1435
    :cond_1
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1436
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 1438
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideFloatingButton(Z)V
    .locals 13
    .param p1, "hide"    # Z

    .prologue
    .line 1458
    iget-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-ne v8, p1, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1461
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    .line 1464
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "ApoTheme"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1465
    .local v6, "themePreferences":Landroid/content/SharedPreferences;
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1466
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "tool_bar"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1467
    .local v7, "toolBarEnabled":Z
    const-string/jumbo v8, "move_tabs"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1468
    .local v4, "moveTabs":Z
    const/16 v3, 0x64

    .line 1469
    .local v3, "des":I
    if-eqz v4, :cond_1

    .line 1470
    const/16 v3, 0x7d

    .line 1473
    :cond_1
    if-nez v7, :cond_6

    .line 1474
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v10, "translationY"

    const/4 v8, 0x1

    new-array v11, v8, [F

    const/4 v12, 0x0

    iget-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-eqz v8, :cond_2

    int-to-float v8, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    :goto_1
    aput v8, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1475
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    const-string/jumbo v10, "translationY"

    const/4 v8, 0x1

    new-array v11, v8, [F

    const/4 v12, 0x0

    iget-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-eqz v8, :cond_3

    int-to-float v8, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    :goto_2
    aput v8, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1476
    .local v1, "animator1":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1477
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1478
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1479
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1480
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1481
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 1474
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "animator1":Landroid/animation/ObjectAnimator;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1475
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 1478
    .restart local v1    # "animator1":Landroid/animation/ObjectAnimator;
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 1479
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 1483
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "animator1":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    const-string/jumbo v10, "translationY"

    const/4 v8, 0x1

    new-array v11, v8, [F

    const/4 v12, 0x0

    iget-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-eqz v8, :cond_7

    int-to-float v8, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    :goto_5
    aput v8, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1484
    .local v2, "animator2":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1485
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    if-nez p1, :cond_8

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1486
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 1483
    .end local v2    # "animator2":Landroid/animation/ObjectAnimator;
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 1485
    .restart local v2    # "animator2":Landroid/animation/ObjectAnimator;
    :cond_8
    const/4 v8, 0x0

    goto :goto_6
.end method

.method private init()V
    .locals 4

    .prologue
    .line 1636
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1637
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    const-string/jumbo v2, "Apogram"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1638
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DialogsActivity$24;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$24;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 1661
    .local v1, "reqId":I
    return-void
.end method

.method private newCounterItem(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v0, -0x2

    const/4 v4, 0x0

    .line 1710
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1711
    .local v7, "container":Landroid/widget/LinearLayout;
    const/16 v1, 0x51

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1712
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    const/16 v3, 0xe

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
    move-object v8, p2

    .line 1715
    .local v8, "countTxt":Landroid/widget/TextView;
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1716
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1717
    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1718
    const v1, 0x7f0200e6

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1719
    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1720
    const/4 v1, -0x3

    invoke-virtual {v8, v6, v1, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1721
    const/16 v3, 0xa

    move v1, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    return-void
.end method

.method private onSwipe(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1666
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/DialogsActivity;->downX:F

    .line 1667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/DialogsActivity;->downY:F

    goto :goto_0

    .line 1671
    :pswitch_1
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1672
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "tabs"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1673
    .local v4, "tabs":Z
    if-eqz v4, :cond_0

    .line 1674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/DialogsActivity;->upX:F

    .line 1675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/DialogsActivity;->upY:F

    .line 1677
    iget v5, p0, Lorg/telegram/ui/DialogsActivity;->downX:F

    iget v6, p0, Lorg/telegram/ui/DialogsActivity;->upX:F

    sub-float v0, v5, v6

    .line 1678
    .local v0, "deltaX":F
    iget v5, p0, Lorg/telegram/ui/DialogsActivity;->downY:F

    iget v6, p0, Lorg/telegram/ui/DialogsActivity;->upY:F

    sub-float v1, v5, v6

    .line 1679
    .local v1, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 1680
    cmpg-float v5, v0, v7

    if-gez v5, :cond_1

    .line 1681
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getSeletedTab()I

    move-result v2

    .line 1682
    .local v2, "position":I
    add-int/lit8 v2, v2, -0x1

    .line 1683
    if-ltz v2, :cond_3

    .line 1684
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    # invokes: Lorg/telegram/ui/DialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v2}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->access$3400(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V

    .line 1689
    .end local v2    # "position":I
    :cond_1
    :goto_1
    cmpl-float v5, v0, v7

    if-lez v5, :cond_2

    .line 1690
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getSeletedTab()I

    move-result v2

    .line 1691
    .restart local v2    # "position":I
    add-int/lit8 v2, v2, 0x1

    .line 1692
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getTabCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1693
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    # invokes: Lorg/telegram/ui/DialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v2}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->access$3400(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V

    .line 1699
    .end local v2    # "position":I
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v5, :cond_0

    .line 1700
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1686
    .restart local v2    # "position":I
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v6}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getTabCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    # invokes: Lorg/telegram/ui/DialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v6}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->access$3400(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V

    goto :goto_1

    .line 1695
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    # invokes: Lorg/telegram/ui/DialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v8}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->access$3400(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V

    goto :goto_2

    .line 1664
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateColors()V
    .locals 33

    .prologue
    .line 2337
    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v31, "mainconfig"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 2338
    .local v20, "preferences":Landroid/content/SharedPreferences;
    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v31, "ApoTheme"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 2339
    .local v28, "themePreferences":Landroid/content/SharedPreferences;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarColor(Landroid/content/SharedPreferences;)I

    move-result v4

    .line 2340
    .local v4, "aColor":I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarGradientFlag(Landroid/content/SharedPreferences;)I

    move-result v5

    .line 2341
    .local v5, "aFlag":I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarGradientColor(Landroid/content/SharedPreferences;)I

    move-result v6

    .line 2342
    .local v6, "aGColor":I
    if-eqz v5, :cond_1

    .line 2343
    invoke-static {v5}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v6, v0}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v17

    .line 2344
    .local v17, "gradient":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2350
    .end local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f020143

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2351
    .local v7, "backDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarIconColor(Landroid/content/SharedPreferences;)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v7, v0}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarTitleColor(Landroid/content/SharedPreferences;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 2353
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    const/16 v30, 0x5

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 2354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 2355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarIconColor(Landroid/content/SharedPreferences;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2353
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 2346
    .end local v7    # "backDrawable":Landroid/graphics/drawable/Drawable;
    .end local v18    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    goto :goto_0

    .line 2360
    .restart local v7    # "backDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "i":I
    :cond_2
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsBackgroundColor(Landroid/content/SharedPreferences;)I

    move-result v25

    .line 2361
    .local v25, "tabColor":I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsGradientFlag(Landroid/content/SharedPreferences;)I

    move-result v26

    .line 2362
    .local v26, "tabFlag":I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsGradientColor(Landroid/content/SharedPreferences;)I

    move-result v27

    .line 2363
    .local v27, "tabGColor":I
    if-eqz v26, :cond_a

    .line 2364
    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v30

    move/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v17

    .line 2365
    .restart local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2369
    .end local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :goto_2
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSelectedTabIconColor(Landroid/content/SharedPreferences;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/DialogsActivity;->sIconColor:I

    .line 2370
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsIconColor(Landroid/content/SharedPreferences;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/DialogsActivity;->iconColor:I

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getSeletedTab()I

    move-result v19

    .line 2373
    .local v19, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    # invokes: Lorg/telegram/ui/DialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->access$3400(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V

    .line 2376
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsCounterBGColor(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 2377
    .local v8, "cBGColor":I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsCounterTextColor(Landroid/content/SharedPreferences;)I

    move-result v9

    .line 2378
    .local v9, "cTextColor":I
    const/4 v11, 0x0

    .line 2380
    .local v11, "drawable":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 2383
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2385
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 2388
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2390
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 2393
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2395
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 2398
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2400
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 2403
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2405
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 2408
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2410
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 2413
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2417
    :cond_9
    const-string/jumbo v30, "theme_list_color"

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2418
    .local v10, "color":I
    const-string/jumbo v30, "theme_list_gradient"

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 2419
    .local v12, "flag":I
    const-string/jumbo v30, "theme_list_gradient_color"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 2420
    .local v16, "gcolor":I
    if-eqz v12, :cond_b

    .line 2421
    invoke-static {v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v30

    move/from16 v0, v16

    move-object/from16 v1, v30

    invoke-static {v10, v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v17

    .line 2422
    .restart local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2430
    .end local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :goto_3
    const-string/jumbo v30, "tool_bar"

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 2431
    .local v29, "toolBarEnabled":Z
    if-eqz v29, :cond_d

    .line 2433
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getToolBarBGColor(Landroid/content/SharedPreferences;)I

    move-result v21

    .line 2434
    .local v21, "tBGColor":I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getToolBarGradientFlag(Landroid/content/SharedPreferences;)I

    move-result v22

    .line 2435
    .local v22, "tFlagColor":I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getToolBarGradientColor(Landroid/content/SharedPreferences;)I

    move-result v23

    .line 2436
    .local v23, "tGColor":I
    if-eqz v22, :cond_c

    .line 2437
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v30

    const/high16 v31, 0x41700000    # 15.0f

    move/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v17

    .line 2438
    .restart local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    const/16 v30, 0x2

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogDividerColor(Landroid/content/SharedPreferences;)I

    move-result v31

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2445
    :goto_4
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getToolBarIconColor(Landroid/content/SharedPreferences;)I

    move-result v24

    .line 2446
    .local v24, "tIColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->button1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->button2:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->button3:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->button4:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->button5:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->button6:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->button7:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2466
    .end local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    .end local v21    # "tBGColor":I
    .end local v22    # "tFlagColor":I
    .end local v23    # "tGColor":I
    .end local v24    # "tIColor":I
    :goto_5
    return-void

    .line 2367
    .end local v8    # "cBGColor":I
    .end local v9    # "cTextColor":I
    .end local v10    # "color":I
    .end local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v12    # "flag":I
    .end local v16    # "gcolor":I
    .end local v19    # "position":I
    .end local v29    # "toolBarEnabled":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 2425
    .restart local v8    # "cBGColor":I
    .restart local v9    # "cTextColor":I
    .restart local v10    # "color":I
    .restart local v11    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    .restart local v12    # "flag":I
    .restart local v16    # "gcolor":I
    .restart local v19    # "position":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 2441
    .restart local v21    # "tBGColor":I
    .restart local v22    # "tFlagColor":I
    .restart local v23    # "tGColor":I
    .restart local v29    # "toolBarEnabled":Z
    :cond_c
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v30

    const/high16 v31, 0x41700000    # 15.0f

    move/from16 v0, v21

    move/from16 v1, v21

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v17

    .line 2442
    .restart local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    const/16 v30, 0x2

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogDividerColor(Landroid/content/SharedPreferences;)I

    move-result v31

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 2455
    .end local v17    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    .end local v21    # "tBGColor":I
    .end local v22    # "tFlagColor":I
    .end local v23    # "tGColor":I
    :cond_d
    const-string/jumbo v30, "theme_float_color"

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getThemeColor()I

    move-result v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2456
    .local v13, "floatColor":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f020123

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 2457
    .local v15, "floatingW":Landroid/graphics/drawable/Drawable;
    sget-object v30, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v30

    invoke-virtual {v15, v13, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2458
    if-eqz v15, :cond_e

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2462
    :cond_e
    const-string/jumbo v30, "theme_float_icon_color"

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 2463
    .local v14, "floatIconColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_5
.end method

.method private updateLayout()V
    .locals 17

    .prologue
    .line 2232
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v14, "mainconfig"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2233
    .local v7, "preferences":Landroid/content/SharedPreferences;
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v14, "ApoTheme"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2234
    .local v10, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v13, "tabs"

    const/4 v14, 0x1

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2235
    .local v8, "tabsEnabled":Z
    const-string/jumbo v13, "move_tabs"

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2236
    .local v6, "moveTabs":Z
    const-string/jumbo v13, "tool_bar"

    const/4 v14, 0x1

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 2238
    .local v11, "toolBarEnabled":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2239
    .local v5, "listViewParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v13}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 2240
    .local v9, "tabsParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2241
    .local v1, "countBarParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2243
    .local v2, "emptyViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    .line 2244
    .local v3, "fButtonsParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x0

    .line 2245
    .local v4, "fButtonsParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v12, 0x0

    .line 2246
    .local v12, "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v11, :cond_1

    .line 2247
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "fButtonsParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2248
    .restart local v3    # "fButtonsParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "fButtonsParams1":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2252
    .restart local v4    # "fButtonsParams1":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    if-nez v8, :cond_7

    .line 2254
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v13}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_0

    .line 2255
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setVisibility(I)V

    .line 2257
    :cond_0
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2260
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2262
    if-nez v11, :cond_6

    .line 2264
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_2

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    :goto_1
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_2
    const/high16 v16, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v15, v14, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2265
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2266
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_4

    const/high16 v13, 0x42a40000    # 82.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    :goto_3
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_4
    const/high16 v16, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v13, v15, v14, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2267
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2333
    :goto_5
    return-void

    .line 2250
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v12    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 2264
    :cond_2
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_1

    :cond_3
    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_2

    .line 2266
    :cond_4
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_3

    :cond_5
    const/high16 v14, 0x42a40000    # 82.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_4

    .line 2270
    :cond_6
    const/high16 v13, 0x41100000    # 9.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/high16 v15, 0x41100000    # 9.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v16, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 2276
    :cond_7
    if-eqz v6, :cond_e

    .line 2278
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v13}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_8

    .line 2279
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setVisibility(I)V

    .line 2280
    :cond_8
    const/16 v13, 0x50

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2281
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v13, v9}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2282
    const/16 v13, 0x50

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2283
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v13, v9}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2287
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2290
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2293
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2295
    if-nez v11, :cond_d

    .line 2297
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_9

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    :goto_6
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0xe

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v15, v14, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2298
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2299
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_b

    const/high16 v13, 0x42a40000    # 82.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    :goto_8
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0xe

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v13, v15, v14, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2300
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 2297
    :cond_9
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_6

    :cond_a
    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_7

    .line 2299
    :cond_b
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_8

    :cond_c
    const/high16 v14, 0x42a40000    # 82.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_9

    .line 2303
    :cond_d
    const/high16 v13, 0x41100000    # 9.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/high16 v15, 0x41100000    # 9.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0xe

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 2308
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v13}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_f

    .line 2309
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setVisibility(I)V

    .line 2310
    :cond_f
    const/16 v13, 0x30

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2311
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->slidingTabView:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    invoke-virtual {v13, v9}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2312
    const/16 v13, 0x30

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2313
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->countBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2315
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    int-to-float v14, v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2318
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    int-to-float v14, v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2320
    if-nez v11, :cond_14

    .line 2322
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_10

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    :goto_a
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_11

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_b
    const/high16 v16, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v15, v14, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2323
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2324
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_12

    const/high16 v13, 0x42a40000    # 82.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    :goto_c
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_d
    const/high16 v16, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v13, v15, v14, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2325
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 2322
    :cond_10
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_a

    :cond_11
    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_b

    .line 2324
    :cond_12
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_c

    :cond_13
    const/high16 v14, 0x42a40000    # 82.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_d

    .line 2328
    :cond_14
    const/high16 v13, 0x41100000    # 9.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/high16 v15, 0x41100000    # 9.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v16, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2329
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5
.end method

.method private updatePasscodeButton()V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1445
    :cond_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    if-nez v0, :cond_2

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1447
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f0201b7

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_0

    .line 1450
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_0

    .line 1453
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUnreadCount(Ljava/util/ArrayList;)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1944
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    sget-object v34, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v35, "mainconfig"

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 1945
    .local v29, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v34, "chat_unlocked"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1946
    .local v14, "chatUnlocked":Z
    const-string/jumbo v34, "tabs"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1947
    .local v26, "isTabsEnabled":Z
    const-string/jumbo v34, "tabs_only_not_muted"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 1948
    .local v28, "onlyNotMuted":Z
    const/4 v11, 0x0

    .line 1949
    .local v11, "chDCount":I
    const/16 v31, 0x0

    .line 1950
    .local v31, "sgDCount":I
    const/16 v20, 0x0

    .line 1951
    .local v20, "gDCount":I
    const/4 v8, 0x0

    .line 1952
    .local v8, "cDCount":I
    const/16 v17, 0x0

    .line 1953
    .local v17, "favDCount":I
    const/4 v5, 0x0

    .line 1955
    .local v5, "allDCount":I
    const/4 v10, 0x0

    .line 1956
    .local v10, "chCount":I
    const/16 v30, 0x0

    .line 1957
    .local v30, "sgCount":I
    const/16 v19, 0x0

    .line 1958
    .local v19, "gCount":I
    const/4 v7, 0x0

    .line 1959
    .local v7, "cCount":I
    const/16 v16, 0x0

    .line 1960
    .local v16, "favCount":I
    const/4 v4, 0x0

    .line 1961
    .local v4, "allCount":I
    if-eqz v26, :cond_1f

    .line 1962
    if-eqz v14, :cond_f

    .line 1963
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_1f

    .line 1964
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1965
    .local v15, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "hide_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_4

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    if-lez v34, :cond_4

    .line 1966
    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v27, v0

    .line 1967
    .local v27, "lower_id":I
    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    const/16 v36, 0x20

    shr-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v22, v0

    .line 1968
    .local v22, "high_id":I
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    if-lez v34, :cond_4

    .line 1970
    if-eqz v28, :cond_5

    .line 1971
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_0

    .line 1972
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    .line 1973
    add-int/lit8 v5, v5, 0x1

    .line 1980
    :cond_0
    :goto_1
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "fav_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 1981
    if-eqz v28, :cond_6

    .line 1982
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_1

    .line 1983
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    .line 1984
    add-int/lit8 v17, v17, 0x1

    .line 1992
    :cond_1
    :goto_2
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_2

    .line 1993
    if-gez v27, :cond_7

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    const/16 v25, 0x1

    .line 1994
    .local v25, "isChat":Z
    :goto_3
    const/16 v33, 0x0

    .line 1995
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v25, :cond_2

    if-lez v27, :cond_2

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_2

    .line 1996
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 1997
    if-eqz v33, :cond_8

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    const/16 v24, 0x1

    .line 1998
    .local v24, "isBot":Z
    :goto_4
    if-nez v24, :cond_2

    .line 1999
    if-eqz v28, :cond_9

    .line 2000
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_2

    .line 2001
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    .line 2002
    add-int/lit8 v8, v8, 0x1

    .line 2012
    .end local v24    # "isBot":Z
    .end local v25    # "isChat":Z
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_5
    if-gez v27, :cond_a

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_a

    const/16 v25, 0x1

    .line 2013
    .restart local v25    # "isChat":Z
    :goto_6
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_3

    if-eqz v25, :cond_3

    .line 2014
    if-eqz v28, :cond_b

    .line 2015
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_3

    .line 2016
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    .line 2017
    add-int/lit8 v20, v20, 0x1

    .line 2025
    :cond_3
    :goto_7
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 2026
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 2027
    .local v13, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v28, :cond_d

    .line 2028
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_4

    .line 2029
    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_c

    .line 2030
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    .line 2031
    add-int/lit8 v31, v31, 0x1

    .line 1963
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v22    # "high_id":I
    .end local v25    # "isChat":Z
    .end local v27    # "lower_id":I
    :cond_4
    :goto_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 1976
    .restart local v22    # "high_id":I
    .restart local v27    # "lower_id":I
    :cond_5
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    .line 1977
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1987
    :cond_6
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    .line 1988
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1993
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 1997
    .restart local v25    # "isChat":Z
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 2005
    .restart local v24    # "isBot":Z
    :cond_9
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    .line 2006
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 2012
    .end local v24    # "isBot":Z
    .end local v25    # "isChat":Z
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 2020
    .restart local v25    # "isChat":Z
    :cond_b
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    .line 2021
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 2033
    .restart local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    .line 2034
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 2038
    :cond_d
    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_e

    .line 2039
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    .line 2040
    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 2042
    :cond_e
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    .line 2043
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 2051
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v22    # "high_id":I
    .end local v23    # "i":I
    .end local v25    # "isChat":Z
    .end local v27    # "lower_id":I
    :cond_f
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_1f

    .line 2052
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2053
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "hide_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_14

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    if-lez v34, :cond_14

    .line 2054
    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v27, v0

    .line 2055
    .restart local v27    # "lower_id":I
    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    const/16 v36, 0x20

    shr-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v22, v0

    .line 2057
    .restart local v22    # "high_id":I
    if-eqz v28, :cond_15

    .line 2058
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_10

    .line 2059
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    .line 2060
    add-int/lit8 v5, v5, 0x1

    .line 2067
    :cond_10
    :goto_a
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "fav_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 2068
    if-eqz v28, :cond_16

    .line 2069
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_11

    .line 2070
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    .line 2071
    add-int/lit8 v17, v17, 0x1

    .line 2079
    :cond_11
    :goto_b
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_12

    .line 2080
    if-gez v27, :cond_17

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_17

    const/16 v25, 0x1

    .line 2081
    .restart local v25    # "isChat":Z
    :goto_c
    const/16 v33, 0x0

    .line 2082
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v25, :cond_12

    if-lez v27, :cond_12

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_12

    .line 2083
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 2084
    if-eqz v33, :cond_18

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v34, v0

    if-eqz v34, :cond_18

    const/16 v24, 0x1

    .line 2085
    .restart local v24    # "isBot":Z
    :goto_d
    if-nez v24, :cond_12

    .line 2086
    if-eqz v28, :cond_19

    .line 2087
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_12

    .line 2088
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    .line 2089
    add-int/lit8 v8, v8, 0x1

    .line 2099
    .end local v24    # "isBot":Z
    .end local v25    # "isChat":Z
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    :goto_e
    if-gez v27, :cond_1a

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_1a

    const/16 v25, 0x1

    .line 2100
    .restart local v25    # "isChat":Z
    :goto_f
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_13

    if-eqz v25, :cond_13

    .line 2101
    if-eqz v28, :cond_1b

    .line 2102
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_13

    .line 2103
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    .line 2104
    add-int/lit8 v20, v20, 0x1

    .line 2112
    :cond_13
    :goto_10
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 2113
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 2114
    .restart local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v28, :cond_1d

    .line 2115
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_14

    .line 2116
    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1c

    .line 2117
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    .line 2118
    add-int/lit8 v31, v31, 0x1

    .line 2051
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v22    # "high_id":I
    .end local v25    # "isChat":Z
    .end local v27    # "lower_id":I
    :cond_14
    :goto_11
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 2063
    .restart local v22    # "high_id":I
    .restart local v27    # "lower_id":I
    :cond_15
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    .line 2064
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 2074
    :cond_16
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    .line 2075
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b

    .line 2080
    :cond_17
    const/16 v25, 0x0

    goto/16 :goto_c

    .line 2084
    .restart local v25    # "isChat":Z
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_d

    .line 2092
    .restart local v24    # "isBot":Z
    :cond_19
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    .line 2093
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    .line 2099
    .end local v24    # "isBot":Z
    .end local v25    # "isChat":Z
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_f

    .line 2107
    .restart local v25    # "isChat":Z
    :cond_1b
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    .line 2108
    add-int/lit8 v20, v20, 0x1

    goto :goto_10

    .line 2120
    .restart local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1c
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    .line 2121
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 2125
    :cond_1d
    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1e

    .line 2126
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    .line 2127
    add-int/lit8 v31, v31, 0x1

    goto :goto_11

    .line 2129
    :cond_1e
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    .line 2130
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 2138
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v22    # "high_id":I
    .end local v23    # "i":I
    .end local v25    # "isChat":Z
    .end local v27    # "lower_id":I
    :cond_1f
    const/4 v12, 0x0

    .line 2139
    .local v12, "chTDCount":I
    const/16 v32, 0x0

    .line 2140
    .local v32, "sgTDCount":I
    const/16 v21, 0x0

    .line 2141
    .local v21, "gTDCount":I
    const/4 v9, 0x0

    .line 2142
    .local v9, "cTDCount":I
    const/16 v18, 0x0

    .line 2143
    .local v18, "favTDCount":I
    const/4 v6, 0x0

    .line 2144
    .local v6, "allTDCount":I
    const-string/jumbo v34, "tabs_count_chats"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    if-eqz v34, :cond_2e

    .line 2145
    move v12, v11

    .line 2146
    move/from16 v32, v31

    .line 2147
    move/from16 v21, v20

    .line 2148
    move v9, v8

    .line 2149
    move/from16 v18, v17

    .line 2150
    move v6, v5

    .line 2160
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_21

    .line 2161
    if-eqz v12, :cond_2f

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_20

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2164
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2170
    :cond_21
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_23

    .line 2171
    if-eqz v32, :cond_30

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_22

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2174
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2180
    :cond_23
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_25

    .line 2181
    if-eqz v21, :cond_31

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_24

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2184
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2190
    :cond_25
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_27

    .line 2191
    if-eqz v9, :cond_32

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_26

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2194
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2200
    :cond_27
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_29

    .line 2201
    if-eqz v18, :cond_33

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_28

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2204
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2210
    :cond_29
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2b

    .line 2211
    if-eqz v6, :cond_34

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2a

    .line 2213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2214
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2220
    :cond_2b
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2d

    .line 2221
    if-eqz v6, :cond_35

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2c

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2224
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2229
    :cond_2d
    :goto_19
    return-void

    .line 2152
    :cond_2e
    move v12, v10

    .line 2153
    move/from16 v32, v30

    .line 2154
    move/from16 v21, v19

    .line 2155
    move v9, v7

    .line 2156
    move/from16 v18, v16

    .line 2157
    move v6, v4

    goto/16 :goto_12

    .line 2166
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_13

    .line 2176
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    .line 2186
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 2196
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16

    .line 2206
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 2216
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_18

    .line 2226
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method private updateVisibleRows(I)V
    .locals 12
    .param p1, "mask"    # I

    .prologue
    .line 1491
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v8, :cond_0

    .line 1531
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 1495
    .local v5, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v5, :cond_a

    .line 1496
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1497
    .local v3, "child":Landroid/view/View;
    instance-of v8, v3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v8, :cond_6

    .line 1498
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eq v8, v9, :cond_1

    move-object v2, v3

    .line 1499
    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    .line 1500
    .local v2, "cell":Lorg/telegram/ui/Cells/DialogCell;
    and-int/lit16 v8, p1, 0x800

    if-eqz v8, :cond_3

    .line 1501
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex()V

    .line 1502
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v8, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1503
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 1495
    .end local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1503
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 1505
    :cond_3
    and-int/lit16 v8, p1, 0x200

    if-eqz v8, :cond_5

    .line 1506
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v8, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1507
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 1510
    :cond_5
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    goto :goto_3

    .line 1513
    .end local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_6
    instance-of v8, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v8, :cond_7

    .line 1514
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_3

    .line 1515
    .restart local v3    # "child":Landroid/view/View;
    :cond_7
    instance-of v8, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v8, :cond_8

    .line 1516
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_3

    .line 1517
    .restart local v3    # "child":Landroid/view/View;
    :cond_8
    instance-of v8, v3, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_1

    move-object v7, v3

    .line 1518
    check-cast v7, Lorg/telegram/ui/Components/RecyclerListView;

    .line 1519
    .local v7, "innerListView":Lorg/telegram/ui/Components/RecyclerListView;
    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    .line 1520
    .local v6, "count2":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_5
    if-ge v1, v6, :cond_1

    .line 1521
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1522
    .local v4, "child2":Landroid/view/View;
    instance-of v8, v4, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz v8, :cond_9

    .line 1523
    check-cast v4, Lorg/telegram/ui/Cells/HintDialogCell;

    .end local v4    # "child2":Landroid/view/View;
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/HintDialogCell;->checkUnreadCounter(I)V

    .line 1520
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1530
    .end local v1    # "b":I
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "count2":I
    .end local v7    # "innerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lorg/telegram/ui/DialogsActivity;->updateUnreadCount(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "actionBar":Lorg/telegram/ui/ActionBar/ActionBar;
    const v1, -0xbf926c

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(I)V

    .line 256
    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    .line 262
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    .line 264
    new-instance v4, Lorg/telegram/ui/DialogsActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/DialogsActivity$1;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 272
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v5, 0x1

    const v6, 0x7f0201b7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 274
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    .line 278
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v5, 0x4

    const v6, 0x7f020166

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v5, 0x3

    const v6, 0x7f02013c

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 280
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "ApoTheme"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 281
    .local v20, "themePreferences":Landroid/content/SharedPreferences;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 282
    .local v18, "preferences":Landroid/content/SharedPreferences;
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->init()V

    .line 283
    const-string/jumbo v4, "chat_password"

    const-string/jumbo v5, ""

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 284
    .local v13, "chatPassword":Ljava/lang/String;
    const-string/jumbo v4, "chat_unlocked"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 285
    .local v14, "chatUnlocked":Z
    const-string/jumbo v4, "swipe_tabs"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->swipe:Z

    .line 286
    const-string/jumbo v4, "theme_tabs_height"

    const/16 v5, 0x2a

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    .line 287
    const-string/jumbo v4, "tool_bar"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 291
    .local v21, "toolBarEnabled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v5, 0x0

    const v6, 0x7f020145

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$2;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/DialogsActivity$2;-><init>(Lorg/telegram/ui/DialogsActivity;Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v17

    .line 382
    .local v17, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v5, "Search"

    const v6, 0x7f070435

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 383
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v4, :cond_8

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020143

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "SelectChat"

    const v6, 0x7f070447

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$3;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 445
    new-instance v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 446
    .local v15, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/DialogsActivity;->createTabs(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 452
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 458
    new-instance v4, Lorg/telegram/ui/DialogsActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/DialogsActivity$4;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$5;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1, v14, v13}, Lorg/telegram/ui/DialogsActivity$6;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/SharedPreferences;ZLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 817
    new-instance v4, Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 818
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v5, "NoResult"

    const v6, 0x7f070344

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->swipe:Z

    if-eqz v4, :cond_c

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$7;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 846
    :goto_2
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 847
    .local v19, "textView":Landroid/widget/TextView;
    const-string/jumbo v4, "NoChats"

    const v5, 0x7f070332

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 849
    const/16 v4, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 850
    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 854
    new-instance v19, Landroid/widget/TextView;

    .end local v19    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 855
    .restart local v19    # "textView":Landroid/widget/TextView;
    const-string/jumbo v4, "NoChatsHelp"

    const v5, 0x7f070333

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 856
    .local v16, "help":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 857
    const/16 v4, 0xa

    const/16 v5, 0x20

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 859
    :cond_1
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 861
    const/4 v4, 0x1

    const/high16 v5, 0x41700000    # 15.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 862
    const/16 v4, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 863
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 864
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 865
    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    new-instance v4, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    if-eqz v21, :cond_d

    .line 874
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/DialogsActivity;->createToolBar(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 982
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$14;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/DialogsActivity$14;-><init>(Lorg/telegram/ui/DialogsActivity;Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1059
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->updateLayout()V

    .line 1061
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->swipe:Z

    if-eqz v4, :cond_2

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$15;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1072
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 1073
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 1074
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 1077
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1079
    :cond_4
    const/16 v22, 0x0

    .line 1080
    .local v22, "type":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 1081
    const/16 v22, 0x2

    .line 1085
    :cond_5
    :goto_4
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$16;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setDelegate(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;)V

    .line 1154
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v4, :cond_19

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1163
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;)V

    .line 1167
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v4, :cond_7

    .line 1168
    new-instance v23, Lorg/telegram/ui/Components/PlayerView;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/PlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v4, -0x1

    const/high16 v5, 0x421c0000    # 39.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/high16 v8, -0x3df00000    # -36.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 388
    .end local v15    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v16    # "help":Ljava/lang/String;
    .end local v19    # "textView":Landroid/widget/TextView;
    .end local v22    # "type":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020143

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 394
    :goto_6
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_a

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "AppNameBeta"

    const v6, 0x7f07009b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 392
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 397
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "AppName"

    const v6, 0x7f07009a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 466
    .restart local v15    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_b
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 838
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$8;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2

    .line 876
    .restart local v16    # "help":Ljava/lang/String;
    .restart local v19    # "textView":Landroid/widget/TextView;
    :cond_d
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    .line 877
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v4, :cond_10

    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const v5, 0x7f020121

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const v5, 0x7f02011f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 882
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_e

    .line 883
    new-instance v11, Landroid/animation/StateListAnimator;

    invoke-direct {v11}, Landroid/animation/StateListAnimator;-><init>()V

    .line 884
    .local v11, "animator":Landroid/animation/StateListAnimator;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 885
    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$9;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 895
    .end local v11    # "animator":Landroid/animation/StateListAnimator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x3

    :goto_8
    or-int/lit8 v6, v6, 0x50

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_12

    const/high16 v7, 0x41600000    # 14.0f

    :goto_9
    const/4 v8, 0x0

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_13

    const/4 v9, 0x0

    :goto_a
    const/high16 v10, 0x41600000    # 14.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    .line 899
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v4, :cond_14

    const/16 v4, 0x8

    :goto_b
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    const v5, 0x7f020121

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    const v5, 0x7f02014c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 904
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_f

    .line 905
    new-instance v12, Landroid/animation/StateListAnimator;

    invoke-direct {v12}, Landroid/animation/StateListAnimator;-><init>()V

    .line 906
    .local v12, "animator1":Landroid/animation/StateListAnimator;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 907
    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$10;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 917
    .end local v12    # "animator1":Landroid/animation/StateListAnimator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_15

    const/4 v6, 0x3

    :goto_c
    or-int/lit8 v6, v6, 0x50

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_16

    const/high16 v7, 0x42a40000    # 82.0f

    :goto_d
    const/4 v8, 0x0

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_17

    const/4 v9, 0x0

    :goto_e
    const/high16 v10, 0x41600000    # 14.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$11;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$12;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$13;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 877
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 895
    :cond_11
    const/4 v6, 0x5

    goto/16 :goto_8

    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_13
    const/high16 v9, 0x41600000    # 14.0f

    goto/16 :goto_a

    .line 899
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 917
    :cond_15
    const/4 v6, 0x5

    goto :goto_c

    :cond_16
    const/4 v7, 0x0

    goto :goto_d

    :cond_17
    const/high16 v9, 0x42a40000    # 82.0f

    goto :goto_e

    .line 1082
    .restart local v22    # "type":I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_5

    .line 1083
    const/16 v22, 0x1

    goto/16 :goto_4

    .line 1159
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1322
    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, v6, :cond_7

    .line 1323
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v6, :cond_0

    .line 1324
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isDataSetChanged()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1325
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 1330
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v6, :cond_1

    .line 1331
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 1333
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v6, :cond_2

    .line 1335
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v6, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1336
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1337
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1338
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    :cond_2
    :goto_1
    sget v6, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    if-ne p1, v6, :cond_14

    .line 1386
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v6, :cond_3

    .line 1387
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    .line 1428
    :cond_3
    :goto_2
    return-void

    .line 1327
    :cond_4
    const/16 v6, 0x800

    invoke-direct {p0, v6}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_0

    .line 1340
    :cond_5
    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1341
    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    if-eqz v6, :cond_6

    .line 1342
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1343
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1349
    :catch_0
    move-exception v1

    .line 1350
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1345
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1346
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1353
    :cond_7
    sget v6, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v6, :cond_8

    .line 1354
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_1

    .line 1355
    :cond_8
    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v6, :cond_9

    .line 1356
    aget-object v6, p2, v10

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_1

    .line 1357
    :cond_9
    sget v6, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v6, :cond_a

    .line 1358
    sput-boolean v10, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    goto :goto_1

    .line 1359
    :cond_a
    sget v6, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    if-ne p1, v6, :cond_b

    .line 1360
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_1

    .line 1361
    :cond_b
    sget v6, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v6, :cond_c

    .line 1362
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_1

    .line 1363
    :cond_c
    sget v6, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    if-ne p1, v6, :cond_10

    .line 1364
    iget v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v6, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1365
    aget-object v6, p2, v11

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1366
    .local v0, "close":Z
    aget-object v6, p2, v10

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1367
    .local v2, "dialog_id":J
    if-eqz v0, :cond_f

    .line 1368
    iget-wide v6, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v6, v2, v6

    if-nez v6, :cond_d

    .line 1369
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    .line 1374
    :cond_d
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v6, :cond_e

    .line 1375
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-wide v8, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 1377
    :cond_e
    const/16 v6, 0x200

    invoke-direct {p0, v6}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1372
    :cond_f
    iput-wide v2, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    goto :goto_3

    .line 1379
    .end local v0    # "close":Z
    .end local v2    # "dialog_id":J
    :cond_10
    sget v6, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v6, :cond_11

    .line 1380
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1381
    :cond_11
    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    if-eq p1, v6, :cond_12

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-eq p1, v6, :cond_12

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    if-ne p1, v6, :cond_13

    .line 1382
    :cond_12
    const/16 v6, 0x1000

    invoke-direct {p0, v6}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1383
    :cond_13
    sget v6, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v6, :cond_2

    .line 1384
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    goto/16 :goto_1

    .line 1389
    :cond_14
    sget v6, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    if-ne p1, v6, :cond_15

    .line 1390
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_2

    .line 1391
    :cond_15
    sget v6, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    if-ne p1, v6, :cond_16

    .line 1392
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v6, :cond_3

    .line 1393
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 1397
    :cond_16
    sget v6, Lorg/telegram/messenger/NotificationCenter;->SuperUpdateInterface:I

    if-ne p1, v6, :cond_3

    .line 1398
    aget-object v6, p2, v10

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1399
    .local v5, "type":I
    if-ne v5, v11, :cond_17

    .line 1400
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updateLayout()V

    goto/16 :goto_2

    .line 1401
    :cond_17
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1402
    aget-object v6, p2, v11

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1403
    .local v4, "s":Z
    if-eqz v4, :cond_18

    .line 1404
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v7, Lorg/telegram/ui/DialogsActivity$20;

    invoke-direct {v7, p0}, Lorg/telegram/ui/DialogsActivity$20;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1411
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/DialogsActivity$21;

    invoke-direct {v7, p0}, Lorg/telegram/ui/DialogsActivity$21;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2

    .line 1419
    :cond_18
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v7, Lorg/telegram/ui/DialogsActivity$22;

    invoke-direct {v7, p0}, Lorg/telegram/ui/DialogsActivity$22;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2
.end method

.method public isMainDialogList()Z
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1253
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1254
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$17;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$18;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$19;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1298
    :cond_0
    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1245
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->askForPermissons()V

    .line 1249
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 189
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "onlySelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "dialogsType"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "selectAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "selectAlertStringGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "addToGroupAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 199
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 200
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 201
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 202
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 203
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 204
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 205
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 206
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 207
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 208
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 209
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 210
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 211
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 212
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 214
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->SuperUpdateInterface:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 218
    :cond_1
    sget-boolean v0, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    if-nez v0, :cond_2

    .line 219
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 220
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 221
    sput-boolean v3, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    .line 223
    :cond_2
    return v3
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 231
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 232
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 234
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 235
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 237
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 238
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 239
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 241
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 242
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 243
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 244
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 246
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->SuperUpdateInterface:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .line 249
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    .line 1302
    if-ne p1, v2, :cond_3

    .line 1303
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 1304
    array-length v1, p3

    if-le v1, v0, :cond_0

    aget v1, p3, v0

    if-eqz v1, :cond_1

    .line 1303
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    :cond_1
    aget-object v3, p2, v0

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1309
    :pswitch_0
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_1

    .line 1307
    :sswitch_0
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_2

    .line 1312
    :pswitch_1
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    goto :goto_1

    .line 1317
    .end local v0    # "a":I
    :cond_3
    return-void

    .line 1307
    :sswitch_data_0
    .sparse-switch
        0x516a29a7 -> :sswitch_1
        0x75dd2d9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f07039f

    const v9, 0x7f07009a

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1176
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1178
    iget-boolean v5, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v5, :cond_0

    .line 1179
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1180
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "last_tab"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1181
    .local v3, "lastTab":I
    if-eq v3, v7, :cond_0

    .line 1182
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1183
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "selected_tab"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1184
    const-string/jumbo v5, "last_tab"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1185
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1189
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "lastTab":I
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v5, :cond_1

    .line 1190
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 1192
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v5, :cond_2

    .line 1193
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 1195
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v5, :cond_4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4

    .line 1196
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1197
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_4

    .line 1198
    iput-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    .line 1199
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 1200
    :cond_3
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1201
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1202
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, "AppName"

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1203
    const-string/jumbo v5, "PermissionContacts"

    const v6, 0x7f0703cf

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1204
    const-string/jumbo v5, "OK"

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1205
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1219
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lorg/telegram/ui/DialogsActivity;->updateUnreadCount(Ljava/util/ArrayList;)V

    .line 1220
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updateColors()V

    .line 1221
    return-void

    .line 1206
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_5
    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1207
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1208
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, "AppName"

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1209
    const-string/jumbo v5, "PermissionStorage"

    const v6, 0x7f0703d4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1210
    const-string/jumbo v5, "OK"

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1211
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1213
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->askForPermissons()V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V
    .locals 0
    .param p1, "dialogsActivityDelegate"    # Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .prologue
    .line 1534
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .line 1535
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1538
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    .line 1539
    return-void
.end method

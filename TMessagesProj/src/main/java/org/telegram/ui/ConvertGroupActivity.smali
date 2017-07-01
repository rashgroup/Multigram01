.class public Lorg/telegram/ui/ConvertGroupActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ConvertGroupActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private chat_id:I

.field private convertDetailRow:I

.field private convertInfoRow:I

.field private convertRow:I

.field private listAdapter:Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;

.field private rowCount:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 46
    const-string/jumbo v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->chat_id:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ConvertGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ConvertGroupActivity;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ConvertGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ConvertGroupActivity;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ConvertGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ConvertGroupActivity;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ConvertGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ConvertGroupActivity;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ConvertGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ConvertGroupActivity;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 71
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 72
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ConvertGroup"

    const v4, 0x7f07017d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ConvertGroupActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ConvertGroupActivity$1;-><init>(Lorg/telegram/ui/ConvertGroupActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 82
    new-instance v2, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;-><init>(Lorg/telegram/ui/ConvertGroupActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->listAdapter:Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;

    .line 84
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->fragmentView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 86
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v2, -0xf0f10

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 88
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 91
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 92
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 93
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->listAdapter:Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    new-instance v2, Lorg/telegram/ui/ConvertGroupActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ConvertGroupActivity$2;-><init>(Lorg/telegram/ui/ConvertGroupActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 127
    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/ConvertGroupActivity;->removeSelfFromStack()V

    .line 130
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 53
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I

    .line 54
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I

    .line 55
    iget v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I

    .line 57
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 65
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->listAdapter:Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity;->listAdapter:Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->notifyDataSetChanged()V

    .line 123
    :cond_0
    return-void
.end method

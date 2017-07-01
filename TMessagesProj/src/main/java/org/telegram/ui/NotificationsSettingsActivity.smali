.class public Lorg/telegram/ui/NotificationsSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private androidAutoAlertRow:I

.field private badgeNumberRow:I

.field private contactJoinedRow:I

.field private eventsSectionRow:I

.field private eventsSectionRow2:I

.field private groupAlertRow:I

.field private groupLedRow:I

.field private groupPopupNotificationRow:I

.field private groupPreviewRow:I

.field private groupPriorityRow:I

.field private groupSectionRow:I

.field private groupSectionRow2:I

.field private groupSoundRow:I

.field private groupVibrateRow:I

.field private inappPreviewRow:I

.field private inappPriorityRow:I

.field private inappSectionRow:I

.field private inappSectionRow2:I

.field private inappSoundRow:I

.field private inappVibrateRow:I

.field private inchatSoundRow:I

.field private listView:Landroid/widget/ListView;

.field private messageAlertRow:I

.field private messageLedRow:I

.field private messagePopupNotificationRow:I

.field private messagePreviewRow:I

.field private messagePriorityRow:I

.field private messageSectionRow:I

.field private messageSoundRow:I

.field private messageVibrateRow:I

.field private notificationsServiceConnectionRow:I

.field private notificationsServiceRow:I

.field private otherSectionRow:I

.field private otherSectionRow2:I

.field private pinnedMessageRow:I

.field private repeatRow:I

.field private resetNotificationsRow:I

.field private resetSectionRow:I

.field private resetSectionRow2:I

.field private reseting:Z

.field private rowCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 57
    iput-boolean v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z

    .line 97
    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    .line 652
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->repeatRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSectionRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow2:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow2:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow2:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow2:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow2:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetNotificationsRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 165
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 166
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 167
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "NotificationsAndSounds"

    const v4, 0x7f070392

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/NotificationsSettingsActivity$1;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 177
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->fragmentView:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 180
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    .line 181
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 187
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 188
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/NotificationsSettingsActivity$2;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 576
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 647
    sget v0, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v0, :cond_0

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 650
    :cond_0
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 605
    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 606
    const-string/jumbo v5, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 607
    .local v3, "ringtone":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 608
    .local v1, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {p0}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 610
    .local v4, "rng":Landroid/media/Ringtone;
    if-eqz v4, :cond_0

    .line 611
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 612
    const-string/jumbo v5, "SoundDefault"

    const v6, 0x7f070498

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 616
    :goto_0
    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 620
    .end local v4    # "rng":Landroid/media/Ringtone;
    :cond_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 621
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 623
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I

    if-ne p1, v5, :cond_5

    .line 624
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 625
    const-string/jumbo v5, "GlobalSound"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 626
    const-string/jumbo v5, "GlobalSoundPath"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 640
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 641
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 643
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "ringtone":Landroid/net/Uri;
    :cond_2
    return-void

    .line 614
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "ringtone":Landroid/net/Uri;
    .restart local v4    # "rng":Landroid/media/Ringtone;
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 628
    .end local v4    # "rng":Landroid/media/Ringtone;
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    const-string/jumbo v5, "GlobalSound"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 629
    const-string/jumbo v5, "GlobalSoundPath"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 631
    :cond_5
    iget v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I

    if-ne p1, v5, :cond_1

    .line 632
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 633
    const-string/jumbo v5, "GroupSound"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    const-string/jumbo v5, "GroupSoundPath"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 636
    :cond_6
    const-string/jumbo v5, "GroupSound"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 637
    const-string/jumbo v5, "GroupSoundPath"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v2, -0x1

    .line 101
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSectionRow:I

    .line 102
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I

    .line 103
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I

    .line 104
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I

    .line 105
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I

    .line 106
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I

    .line 107
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 109
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I

    .line 113
    :goto_0
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow2:I

    .line 114
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow:I

    .line 115
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I

    .line 116
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I

    .line 117
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I

    .line 118
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I

    .line 119
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I

    .line 120
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 122
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I

    .line 126
    :goto_1
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow2:I

    .line 127
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow:I

    .line 128
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I

    .line 129
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I

    .line 130
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I

    .line 131
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 133
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I

    .line 137
    :goto_2
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow2:I

    .line 138
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow:I

    .line 139
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I

    .line 140
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I

    .line 141
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow2:I

    .line 142
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow:I

    .line 143
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I

    .line 144
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I

    .line 145
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I

    .line 146
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I

    .line 147
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->repeatRow:I

    .line 148
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow2:I

    .line 149
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow:I

    .line 150
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetNotificationsRow:I

    .line 152
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 154
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0

    .line 111
    :cond_0
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I

    goto/16 :goto_0

    .line 124
    :cond_1
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I

    goto/16 :goto_1

    .line 135
    :cond_2
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I

    goto/16 :goto_2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 160
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 161
    return-void
.end method

.method public updateServerNotificationsSettings(Z)V
    .locals 0
    .param p1, "group"    # Z

    .prologue
    .line 601
    return-void
.end method

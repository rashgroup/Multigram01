.class public Lorg/telegram/ui/ProfileNotificationsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private dialog_id:J

.field private listView:Landroid/widget/ListView;

.field private rowCount:I

.field private settingsLedRow:I

.field private settingsNotificationsRow:I

.field private settingsPriorityRow:I

.field private settingsSoundRow:I

.field private settingsVibrateRow:I

.field private smartRow:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    .line 69
    const-string/jumbo v0, "dialog_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsVibrateRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsNotificationsRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsSoundRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsLedRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsPriorityRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 102
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 103
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "NotificationsAndSounds"

    const v4, 0x7f070392

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ProfileNotificationsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 113
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->fragmentView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 116
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    .line 117
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 119
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 120
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    const/4 v3, 0x5

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 121
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 124
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 125
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/ProfileNotificationsActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$2;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 427
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 469
    sget v0, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 472
    :cond_0
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 432
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 433
    if-nez p3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string/jumbo v5, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 437
    .local v3, "ringtone":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 438
    .local v1, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 439
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 440
    .local v4, "rng":Landroid/media/Ringtone;
    if-eqz v4, :cond_2

    .line 441
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 442
    const-string/jumbo v5, "SoundDefault"

    const v6, 0x7f070498

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 446
    :goto_1
    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 450
    .end local v4    # "rng":Landroid/media/Ringtone;
    :cond_2
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 451
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 453
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v5, 0xc

    if-ne p1, v5, :cond_3

    .line 454
    if-eqz v1, :cond_5

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sound_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sound_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 444
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "rng":Landroid/media/Ringtone;
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 458
    .end local v4    # "rng":Landroid/media/Ringtone;
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sound_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sound_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    .line 74
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsNotificationsRow:I

    .line 75
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsVibrateRow:I

    .line 76
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsSoundRow:I

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 78
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsPriorityRow:I

    .line 82
    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    long-to-int v0, v2

    .line 83
    .local v0, "lower_id":I
    if-gez v0, :cond_1

    .line 84
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    .line 88
    :goto_1
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsLedRow:I

    .line 89
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 90
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v1

    return v1

    .line 80
    .end local v0    # "lower_id":I
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->settingsPriorityRow:I

    goto :goto_0

    .line 86
    .restart local v0    # "lower_id":I
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    goto :goto_1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 96
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 97
    return-void
.end method

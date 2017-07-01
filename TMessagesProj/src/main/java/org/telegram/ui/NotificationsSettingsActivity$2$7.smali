.class Lorg/telegram/ui/NotificationsSettingsActivity$2$7;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$7;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "minutes":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 548
    const/4 v0, 0x5

    .line 560
    :cond_0
    :goto_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 561
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "repeat_messages"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 562
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$7;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$7;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 565
    :cond_1
    return-void

    .line 549
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 550
    const/16 v0, 0xa

    goto :goto_0

    .line 551
    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 552
    const/16 v0, 0x1e

    goto :goto_0

    .line 553
    :cond_4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_5

    .line 554
    const/16 v0, 0x3c

    goto :goto_0

    .line 555
    :cond_5
    const/4 v2, 0x5

    if-ne p2, v2, :cond_6

    .line 556
    const/16 v0, 0x78

    goto :goto_0

    .line 557
    :cond_6
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 558
    const/16 v0, 0xf0

    goto :goto_0
.end method

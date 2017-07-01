.class Lorg/telegram/ui/NotificationsSettingsActivity$2$5;
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

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;I)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iput p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 484
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 485
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 486
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "vibrate_messages"

    .line 487
    .local v1, "param":Ljava/lang/String;
    iget v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;->val$i:I

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I
    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 488
    const-string/jumbo v1, "vibrate_group"

    .line 490
    :cond_0
    if-nez p2, :cond_3

    .line 491
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 501
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 503
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 505
    :cond_2
    return-void

    .line 492
    :cond_3
    if-ne p2, v6, :cond_4

    .line 493
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 494
    :cond_4
    if-ne p2, v7, :cond_5

    .line 495
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 496
    :cond_5
    if-ne p2, v8, :cond_6

    .line 497
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 498
    :cond_6
    if-ne p2, v9, :cond_1

    .line 499
    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

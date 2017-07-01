.class Lorg/telegram/ui/NotificationsSettingsActivity$2$4;
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
    .line 454
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iput p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 457
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 458
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->val$i:I

    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 460
    const-string/jumbo v2, "popupAll"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 464
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 468
    :cond_1
    return-void

    .line 461
    :cond_2
    iget v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->val$i:I

    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 462
    const-string/jumbo v2, "popupGroup"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

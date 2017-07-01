.class Lorg/telegram/ui/NotificationsSettingsActivity$2$6;
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
    .line 516
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iput p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 519
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 520
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->val$i:I

    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 521
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "priority_messages"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 528
    :cond_1
    return-void

    .line 522
    :cond_2
    iget v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->val$i:I

    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 523
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "priority_group"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

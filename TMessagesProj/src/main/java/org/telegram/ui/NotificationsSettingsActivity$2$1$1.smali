.class Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/NotificationsSettingsActivity$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$2$1;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 269
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 270
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$2$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # setter for: Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z
    invoke-static {v3, v6}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$702(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    .line 271
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$2$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$2$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 278
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$2$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$2$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "ResetNotificationsText"

    const v5, 0x7f07041b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 280
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 282
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void
.end method

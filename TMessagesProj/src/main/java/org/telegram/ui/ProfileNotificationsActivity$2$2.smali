.class Lorg/telegram/ui/ProfileNotificationsActivity$2$2;
.super Ljava/lang/Object;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x2

    .line 176
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 177
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 179
    if-ne p2, v8, :cond_0

    .line 180
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 182
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    if-ne p2, v8, :cond_3

    const-wide/16 v4, 0x1

    :goto_0
    invoke-virtual {v3, v6, v7, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 183
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 185
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v0, :cond_1

    .line 186
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 187
    if-ne p2, v8, :cond_1

    .line 188
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v4, 0x7fffffff

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 191
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 192
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 194
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    .line 195
    return-void

    .line 182
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.class Lorg/telegram/messenger/NotificationsController$7$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/NotificationsController$7;

.field final synthetic val$popupFinal:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController$7;I)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$7$1;->this$1:Lorg/telegram/messenger/NotificationsController$7;

    iput p2, p0, Lorg/telegram/messenger/NotificationsController$7$1;->val$popupFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 447
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$7$1;->this$1:Lorg/telegram/messenger/NotificationsController$7;

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$7$1;->this$1:Lorg/telegram/messenger/NotificationsController$7;

    iget-object v3, v3, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 448
    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v2, :cond_3

    .line 449
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$7$1;->this$1:Lorg/telegram/messenger/NotificationsController$7;

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController$7;->val$messageObjects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 450
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget v2, p0, Lorg/telegram/messenger/NotificationsController$7$1;->val$popupFinal:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget v2, p0, Lorg/telegram/messenger/NotificationsController$7$1;->val$popupFinal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v2, :cond_2

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/NotificationsController$7$1;->val$popupFinal:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v2, :cond_3

    .line 451
    :cond_2
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v1, "popupIntent":Landroid/content/Intent;
    const v2, 0x10050004

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 453
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 456
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "popupIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

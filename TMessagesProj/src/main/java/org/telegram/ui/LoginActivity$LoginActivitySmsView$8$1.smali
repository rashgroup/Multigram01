.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 1550
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x0

    const v8, 0x7f07009a

    const/4 v7, 0x1

    .line 1553
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z
    invoke-static {v4, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2402(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z

    .line 1554
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_1

    .line 1555
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1556
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    .line 1557
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(I)V

    .line 1558
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1559
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1560
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 1561
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1562
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1563
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1564
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 1565
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1568
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5, v9}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1569
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 1570
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 1571
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needFinishActivity()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$4500(Lorg/telegram/ui/LoginActivity;)V

    .line 1643
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;
    invoke-static {v4, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2902(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;

    .line 1575
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "PHONE_NUMBER_UNOCCUPIED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1576
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1577
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1578
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v4, "phoneFormated"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string/jumbo v4, "phoneHash"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string/jumbo v4, "code"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v7, v0, v9}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1582
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1583
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    goto :goto_0

    .line 1584
    .end local v0    # "params":Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1585
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 1586
    .local v1, "req2":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;)V

    const/16 v6, 0xa

    invoke-virtual {v4, v1, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1611
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1612
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    goto/16 :goto_0

    .line 1614
    .end local v1    # "req2":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1615
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-ne v4, v10, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-eq v4, v6, :cond_5

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 1616
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1618
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 1619
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1620
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1625
    :cond_7
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v4, v7}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4302(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z

    .line 1626
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-eq v4, v10, :cond_0

    .line 1627
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "PHONE_NUMBER_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1628
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "InvalidPhoneNumber"

    const v7, 0x7f070281

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1621
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-ne v4, v10, :cond_7

    .line 1622
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1623
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1629
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "PHONE_CODE_EMPTY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "PHONE_CODE_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1630
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "InvalidCode"

    const v7, 0x7f07027d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1631
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "PHONE_CODE_EXPIRED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1632
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed()V

    .line 1633
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v7, v5, v7}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1634
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "CodeExpired"

    const v7, 0x7f070171

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1635
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1636
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FloodWait"

    const v7, 0x7f0701fb

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1638
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ErrorOccurred"

    const v8, 0x7f0701e8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

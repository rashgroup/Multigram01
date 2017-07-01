.class Lorg/telegram/ui/DialogsActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 405
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 406
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 409
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_0

    .line 411
    :cond_2
    if-ne p1, v4, :cond_4

    .line 412
    sget-boolean v6, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v6, :cond_3

    :goto_1
    sput-boolean v4, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 413
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 414
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 412
    goto :goto_1

    .line 416
    :cond_4
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 417
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v6, Lorg/telegram/ui/Apogram/SetPasswordActivity;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Apogram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 418
    :cond_5
    const/4 v6, 0x3

    if-ne p1, v6, :cond_6

    .line 419
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 420
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v5, v6, v4}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_0

    .line 421
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    if-ne p1, v7, :cond_0

    .line 422
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "mainconfig"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 423
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "ghost_mode"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 424
    .local v1, "ghostMode":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "ghost_mode"

    if-nez v1, :cond_7

    move v6, v4

    :goto_2
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$3;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    if-nez v1, :cond_8

    :goto_3
    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setGhostImage(Z)V

    .line 428
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->reRunUpdateTimerProc()V

    goto/16 :goto_0

    :cond_7
    move v6, v5

    .line 425
    goto :goto_2

    :cond_8
    move v4, v5

    .line 427
    goto :goto_3
.end method

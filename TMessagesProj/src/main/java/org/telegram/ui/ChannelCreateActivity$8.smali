.class Lorg/telegram/ui/ChannelCreateActivity$8;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 489
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$000(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 491
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 492
    const-string/jumbo v1, "ChannelPublicLimitReached"

    const v2, 0x7f070147

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 493
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 494
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 502
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$800(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$802(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 501
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # invokes: Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$1900(Lorg/telegram/ui/ChannelCreateActivity;)V

    goto :goto_0
.end method

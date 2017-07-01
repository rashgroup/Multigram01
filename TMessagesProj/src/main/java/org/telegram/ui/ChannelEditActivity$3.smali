.class Lorg/telegram/ui/ChannelEditActivity$3;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f07024a

    const v6, 0x7f070243

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 255
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "FromCamera"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "FromGalley"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "DeletePhoto"

    const v3, 0x7f0701b1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 260
    .local v1, "items":[Ljava/lang/CharSequence;
    :goto_1
    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditActivity$3$1;-><init>(Lorg/telegram/ui/ChannelEditActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChannelEditActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 257
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_1
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "FromCamera"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "FromGalley"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .restart local v1    # "items":[Ljava/lang/CharSequence;
    goto :goto_1
.end method

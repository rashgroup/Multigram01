.class Lorg/telegram/ui/ChangePhoneHelpActivity$3;
.super Ljava/lang/Object;
.source "ChangePhoneHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneHelpActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneHelpActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$3;->this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$3;->this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangePhoneHelpActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$3;->this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangePhoneHelpActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    const-string/jumbo v1, "PhoneNumberAlert"

    const v2, 0x7f0703d9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 143
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChangePhoneHelpActivity$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChangePhoneHelpActivity$3$1;-><init>(Lorg/telegram/ui/ChangePhoneHelpActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$3;->this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChangePhoneHelpActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

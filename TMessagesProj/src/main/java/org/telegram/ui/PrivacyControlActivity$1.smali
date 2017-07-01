.class Lorg/telegram/ui/PrivacyControlActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PrivacyControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 124
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 125
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->finishFragment()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 127
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 133
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "privacyAlertShowed"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 134
    .local v2, "showed":Z
    if-nez v2, :cond_3

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    const-string/jumbo v3, "WhoCanAddMeInfo"

    const v4, 0x7f07050a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 141
    :goto_1
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07009a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    const-string/jumbo v3, "OK"

    const v4, 0x7f07039f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$1$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/PrivacyControlActivity$1$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$1;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PrivacyControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 139
    :cond_2
    const-string/jumbo v3, "CustomHelp"

    const v4, 0x7f070192

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 154
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "showed":Z
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # invokes: Lorg/telegram/ui/PrivacyControlActivity;->applyCurrentPrivacySettings()V
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$200(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto/16 :goto_0
.end method

.class Lorg/telegram/ui/PrivacySettingsActivity$2$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "value":I
    if-nez p2, :cond_1

    .line 159
    const/16 v2, 0x1e

    .line 167
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0702d1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 171
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 173
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;-><init>()V

    .line 174
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 175
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    .line 176
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1;Landroid/app/ProgressDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 195
    return-void

    .line 160
    .end local v0    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 161
    const/16 v2, 0x5a

    goto :goto_0

    .line 162
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 163
    const/16 v2, 0xb6

    goto :goto_0

    .line 164
    :cond_3
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 165
    const/16 v2, 0x16d

    goto :goto_0
.end method

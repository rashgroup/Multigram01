.class Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ContactsController;->setDeleteAccountTTL(I)V

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 191
    :cond_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

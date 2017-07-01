.class Lorg/telegram/ui/SessionsActivity$3$2;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SessionsActivity$3;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$3;I)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$3$2;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iput p2, p0, Lorg/telegram/ui/SessionsActivity$3$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "option"    # I

    .prologue
    const/4 v5, 0x0

    .line 233
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$3$2;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 234
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0702d1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 236
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 237
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 239
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$3$2;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/SessionsActivity$3$2;->val$i:I

    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$3$2;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 240
    .local v0, "authorization":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;-><init>()V

    .line 241
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;->hash:J

    .line 242
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/SessionsActivity$3$2$1;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/SessionsActivity$3$2$1;-><init>(Lorg/telegram/ui/SessionsActivity$3$2;Landroid/app/ProgressDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 264
    return-void
.end method

.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->nextPressed:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1502(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v1, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->val$params:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ChangePhoneActivity;->access$1600(Lorg/telegram/ui/ChangePhoneActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V

    .line 775
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangePhoneActivity;->needHideProgress()V

    .line 776
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v1, "InvalidPhoneNumber"

    const v2, 0x7f070281

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 763
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v1, "InvalidCode"

    const v2, 0x7f07027d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v1, "CodeExpired"

    const v2, 0x7f070171

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v1, "FloodWait"

    const v2, 0x7f0701fb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_OCCUPIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v1, "ChangePhoneNumberOccupied"

    const v2, 0x7f0700fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v4, v4, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->val$params:Landroid/os/Bundle;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 771
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v1, "ErrorOccurred"

    const v2, 0x7f0701e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

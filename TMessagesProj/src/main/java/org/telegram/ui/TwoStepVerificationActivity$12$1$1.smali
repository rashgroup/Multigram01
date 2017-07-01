.class Lorg/telegram/ui/TwoStepVerificationActivity$12$1$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/TwoStepVerificationActivity$12$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$12$1;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 920
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$12$1;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$12;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    .line 922
    return-void
.end method

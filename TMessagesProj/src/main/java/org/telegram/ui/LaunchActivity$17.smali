.class Lorg/telegram/ui/LaunchActivity$17;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .prologue
    .line 1891
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$17;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$17;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1100(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1895
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1896
    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "lock app"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$17;->this$0:Lorg/telegram/ui/LaunchActivity;

    # invokes: Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1200(Lorg/telegram/ui/LaunchActivity;)V

    .line 1901
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$17;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$1102(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1903
    :cond_0
    return-void

    .line 1899
    :cond_1
    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "didn\'t pass lock check"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lorg/telegram/ui/ActionBar/BottomSheet$7$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/BottomSheet$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet$7;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 757
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$7;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1401(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

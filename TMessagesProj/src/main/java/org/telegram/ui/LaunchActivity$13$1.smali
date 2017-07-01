.class Lorg/telegram/ui/LaunchActivity$13$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$13;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$13;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$13;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$13$1;->this$1:Lorg/telegram/ui/LaunchActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$13$1;->this$1:Lorg/telegram/ui/LaunchActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$13;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->needLayout()V

    .line 1597
    return-void
.end method

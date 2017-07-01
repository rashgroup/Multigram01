.class Lorg/telegram/ui/Components/PlayerView$3;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlayerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PlayerView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/Components/PlayerView$3;->this$0:Lorg/telegram/ui/Components/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 106
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PlayerView$3;->this$0:Lorg/telegram/ui/Components/PlayerView;

    # getter for: Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v1}, Lorg/telegram/ui/Components/PlayerView;->access$000(Lorg/telegram/ui/Components/PlayerView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/Components/PlayerView$3;->this$0:Lorg/telegram/ui/Components/PlayerView;

    # getter for: Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v1}, Lorg/telegram/ui/Components/PlayerView;->access$000(Lorg/telegram/ui/Components/PlayerView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {v2}, Lorg/telegram/ui/AudioPlayerActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 109
    :cond_0
    return-void
.end method

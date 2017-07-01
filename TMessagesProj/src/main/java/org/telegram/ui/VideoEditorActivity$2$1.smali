.class Lorg/telegram/ui/VideoEditorActivity$2$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$2;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$2;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$2$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)V

    .line 194
    return-void
.end method

.class Lorg/telegram/ui/Components/PhotoCropView$1;
.super Ljava/lang/Object;
.source "PhotoCropView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoCropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoCropView;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView$1;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$1;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    # getter for: Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$000(Lorg/telegram/ui/Components/PhotoCropView;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$1;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->access$002(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$1;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->moveToFill(Z)V

    .line 609
    :cond_0
    return-void
.end method

.class Lorg/telegram/ui/Components/PhotoFilterView$1$1;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$1;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$1;)V
    .locals 0

    .prologue
    .line 2007
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 2013
    :cond_0
    return-void
.end method

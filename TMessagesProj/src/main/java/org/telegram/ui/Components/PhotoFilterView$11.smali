.class Lorg/telegram/ui/Components/PhotoFilterView$11;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    .prologue
    .line 2362
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2365
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    .line 2366
    .local v0, "radioButton":Lorg/telegram/ui/Components/RadioButton;
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2367
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8900(Lorg/telegram/ui/Components/PhotoFilterView;)[I

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v3, v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1402(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 2371
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v2, 0x1

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedTintButton(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8800(Lorg/telegram/ui/Components/PhotoFilterView;Z)V

    .line 2372
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2373
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 2375
    :cond_0
    return-void

    .line 2369
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$11;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$9000(Lorg/telegram/ui/Components/PhotoFilterView;)[I

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v3, v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1202(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto :goto_0
.end method

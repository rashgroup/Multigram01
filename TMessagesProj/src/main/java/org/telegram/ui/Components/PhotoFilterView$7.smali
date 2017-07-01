.class Lorg/telegram/ui/Components/PhotoFilterView$7;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;


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
    .line 2247
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged()V
    .locals 3

    .prologue
    .line 2250
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v0

    .line 2251
    .local v0, "progress":I
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2252
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 2274
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 2275
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2276
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 2278
    :cond_1
    return-void

    .line 2253
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 2254
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2255
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2256
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2257
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 2258
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2259
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 2260
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2261
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 2262
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2263
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 2264
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2265
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 2266
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2267
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 2268
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2269
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 2270
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2271
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2272
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0
.end method

.class Lorg/telegram/ui/PhotoViewer$22$1;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$22;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$22;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$22;)V
    .locals 0

    .prologue
    .line 2103
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 2106
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 2107
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 2108
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2111
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2114
    :cond_1
    return-void

    .line 2109
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

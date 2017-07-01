.class Lorg/telegram/ui/Components/WebFrameLayout$1;
.super Landroid/webkit/WebChromeClient;
.source "WebFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebFrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebFrameLayout;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->customView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$000(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$200(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$200(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->customView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebFrameLayout;->access$000(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$300(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$300(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$300(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/WebFrameLayout;->customView:Landroid/view/View;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->access$002(Lorg/telegram/ui/Components/WebFrameLayout;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 158
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/Components/WebFrameLayout$1;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 159
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->customView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$000(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # setter for: Lorg/telegram/ui/Components/WebFrameLayout;->customView:Landroid/view/View;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebFrameLayout;->access$002(Lorg/telegram/ui/Components/WebFrameLayout;Landroid/view/View;)Landroid/view/View;

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$200(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$200(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$1;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # setter for: Lorg/telegram/ui/Components/WebFrameLayout;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/WebFrameLayout;->access$302(Lorg/telegram/ui/Components/WebFrameLayout;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method

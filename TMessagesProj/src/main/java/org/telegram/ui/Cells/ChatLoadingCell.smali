.class public Lorg/telegram/ui/Cells/ChatLoadingCell;
.super Landroid/widget/FrameLayout;
.source "ChatLoadingCell.java"


# instance fields
.field private frameLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x24

    const/16 v4, 0x20

    const/16 v3, 0x11

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatLoadingCell;->frameLayout:Landroid/widget/FrameLayout;

    .line 29
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatLoadingCell;->frameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f020280

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 30
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatLoadingCell;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 31
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatLoadingCell;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v5, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/ChatLoadingCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatLoadingCell;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 40
    const/16 v1, 0x5dc

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setProgressBarAnimationDuration(Landroid/widget/ProgressBar;I)V

    .line 41
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatLoadingCell;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 47
    return-void
.end method

.method public setProgressVisible(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 50
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatLoadingCell;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

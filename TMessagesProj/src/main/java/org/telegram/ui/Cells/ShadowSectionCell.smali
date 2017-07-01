.class public Lorg/telegram/ui/Cells/ShadowSectionCell;
.super Landroid/view/View;
.source "ShadowSectionCell.java"


# instance fields
.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/16 v0, 0xc

    iput v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    .line 29
    const v0, 0x7f020126

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundResource(I)V

    .line 30
    return-void
.end method

.method private updateColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "theme_setting_shadow_color"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "sColor":I
    if-nez v0, :cond_0

    .line 55
    const v2, 0x7f020126

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundResource(I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->updateColors()V

    .line 48
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 42
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setWillNotDraw(Z)V

    .line 37
    return-void
.end method

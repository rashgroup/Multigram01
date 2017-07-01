.class public Lorg/telegram/ui/Components/LinkPath;
.super Landroid/graphics/Path;
.source "LinkPath.java"


# instance fields
.field private currentLayout:Landroid/text/StaticLayout;

.field private currentLine:I

.field private heightOffset:F

.field private lastTop:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 18
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    return-void
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 30
    iget v2, p0, Lorg/telegram/ui/Components/LinkPath;->heightOffset:F

    add-float/2addr p2, v2

    .line 31
    iget v2, p0, Lorg/telegram/ui/Components/LinkPath;->heightOffset:F

    add-float/2addr p4, v2

    .line 32
    iget v2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 33
    iput p2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    .line 38
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    iget v3, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v1

    .line 39
    .local v1, "lineRight":F
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    iget v3, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 40
    .local v0, "lineLeft":F
    cmpl-float v2, p1, v1

    if-ltz v2, :cond_2

    .line 50
    :goto_1
    return-void

    .line 34
    .end local v0    # "lineLeft":F
    .end local v1    # "lineRight":F
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_0

    .line 35
    iput p2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    .line 36
    iget v2, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    goto :goto_0

    .line 43
    .restart local v0    # "lineLeft":F
    .restart local v1    # "lineRight":F
    :cond_2
    cmpl-float v2, p3, v1

    if-lez v2, :cond_3

    .line 44
    move p3, v1

    .line 46
    :cond_3
    cmpg-float v2, p1, v0

    if-gez v2, :cond_4

    .line 47
    move p1, v0

    .line 49
    :cond_4
    invoke-super/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1
.end method

.method public setCurrentLayout(Landroid/text/StaticLayout;IF)V
    .locals 1
    .param p1, "layout"    # Landroid/text/StaticLayout;
    .param p2, "start"    # I
    .param p3, "yOffset"    # F

    .prologue
    .line 22
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    .line 23
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    .line 25
    iput p3, p0, Lorg/telegram/ui/Components/LinkPath;->heightOffset:F

    .line 26
    return-void
.end method

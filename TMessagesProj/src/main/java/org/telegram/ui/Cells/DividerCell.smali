.class public Lorg/telegram/ui/Cells/DividerCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "DividerCell.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object v0, Lorg/telegram/ui/Cells/DividerCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/DividerCell;->paint:Landroid/graphics/Paint;

    .line 31
    sget-object v0, Lorg/telegram/ui/Cells/DividerCell;->paint:Landroid/graphics/Paint;

    const v1, -0x262627

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    sget-object v0, Lorg/telegram/ui/Cells/DividerCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    :cond_0
    return-void
.end method

.method private setPaintColor()V
    .locals 5

    .prologue
    .line 50
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DividerCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DividerCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "key":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 53
    sget-object v2, Lorg/telegram/ui/Cells/DividerCell;->paint:Landroid/graphics/Paint;

    const v3, -0x262627

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    :cond_0
    return-void

    .line 51
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    .line 43
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DividerCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DividerCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DividerCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/DividerCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DividerCell;->setPaintColor()V

    .line 46
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/DividerCell;->setMeasuredDimension(II)V

    .line 39
    return-void
.end method

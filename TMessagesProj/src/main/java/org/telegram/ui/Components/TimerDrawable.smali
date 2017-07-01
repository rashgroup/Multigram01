.class public Lorg/telegram/ui/Components/TimerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TimerDrawable.java"


# static fields
.field private static emptyTimerDrawable:Landroid/graphics/drawable/Drawable;

.field private static timePaint:Landroid/text/TextPaint;

.field private static timerDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private time:I

.field private timeHeight:I

.field private timeLayout:Landroid/text/StaticLayout;

.field private timeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeWidth:F

    .line 31
    iput v1, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeHeight:I

    .line 32
    iput v1, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    .line 35
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->emptyTimerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/TimerDrawable;->emptyTimerDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timerDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timePaint:Landroid/text/TextPaint;

    .line 39
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 40
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timePaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 41
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timePaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    sget-object v6, Lorg/telegram/ui/Components/TimerDrawable;->timerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 93
    .local v2, "width":I
    sget-object v6, Lorg/telegram/ui/Components/TimerDrawable;->timerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 95
    .local v1, "height":I
    iget v6, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-nez v6, :cond_2

    .line 96
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timerDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v3, v6, 0x2

    .line 102
    .local v3, "x":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v1, v6

    div-int/lit8 v5, v6, 0x2

    .line 103
    .local v5, "y":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    iget v6, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_1

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, "xOffxet":I
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 109
    const/4 v4, -0x1

    .line 111
    :cond_0
    div-int/lit8 v6, v2, 0x2

    int-to-double v6, v6

    iget v8, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-int v6, v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    iget-object v6, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 114
    .end local v4    # "xOffxet":I
    :cond_1
    return-void

    .line 98
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "x":I
    .end local v5    # "y":I
    :cond_2
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->emptyTimerDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 119
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 124
    return-void
.end method

.method public setTime(I)V
    .locals 9
    .param p1, "value"    # I

    .prologue
    const v6, 0x15180

    const/16 v5, 0xe10

    const/16 v4, 0x3c

    const/4 v3, 0x2

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    .line 49
    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-ge v0, v4, :cond_1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "timeString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_0
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/TimerDrawable;->timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeWidth:F

    .line 80
    :try_start_0
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/Components/TimerDrawable;->timePaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeWidth:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeLayout:Landroid/text/StaticLayout;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TimerDrawable;->invalidateSelf()V

    .line 88
    return-void

    .line 54
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-ge v0, v5, :cond_2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v2, p1, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .restart local v1    # "timeString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 59
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-lt v0, v5, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-ge v0, v6, :cond_3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v2, p1, 0x3c

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .restart local v1    # "timeString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "h"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 64
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    if-lt v0, v6, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->time:I

    const v2, 0x93a80

    if-ge v0, v2, :cond_4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v2, p1, 0x3c

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1    # "timeString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 70
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v2, p1, 0x3c

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x18

    div-int/lit8 v2, v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "timeString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "w"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 73
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 74
    const-string/jumbo v1, "c"

    goto/16 :goto_0

    .line 82
    :catch_0
    move-exception v8

    .line 83
    .local v8, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/TimerDrawable;->timeLayout:Landroid/text/StaticLayout;

    .line 84
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

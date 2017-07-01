.class public Lorg/telegram/ui/Cells/ChatActionCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ChatActionCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    }
.end annotation


# static fields
.field private static backPaint:Landroid/graphics/Paint;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

.field private hasReplyMessage:Z

.field private imagePressed:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private pressedLink:Landroid/text/style/URLSpan;

.field private previousWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textWidth:I

.field private textX:I

.field private textXLeft:I

.field private textY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 52
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 53
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 54
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 55
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 56
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    .line 57
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 58
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 68
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    .line 70
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 71
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    .line 72
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    .line 76
    :cond_0
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getServiceMessageColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 80
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 81
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->fontSize:I

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 83
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    return-void
.end method

.method private findMaxWidthAroundLine(I)I
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    .line 269
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 270
    .local v3, "width":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 271
    .local v1, "count":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 273
    .local v2, "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "w":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 280
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 281
    .restart local v2    # "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 282
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 279
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 287
    .end local v2    # "w":I
    :cond_1
    return v3
.end method


# virtual methods
.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 300
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    .line 302
    .local v10, "count":I
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 303
    .local v9, "corner":I
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    .line 304
    .local v24, "y":I
    const/16 v21, 0x0

    .line 307
    .local v21, "previousLineBottom":I
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_1
    if-ge v7, v10, :cond_f

    .line 308
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v22

    .line 309
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v22

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v23, v1, v2

    .line 310
    .local v23, "x":I
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v22, v22, v1

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v16

    .line 312
    .local v16, "lineBottom":I
    sub-int v15, v16, v21

    .line 313
    .local v15, "height":I
    const/4 v8, 0x0

    .line 314
    .local v8, "additionalHeight":I
    move/from16 v21, v16

    .line 316
    add-int/lit8 v1, v10, -0x1

    if-ne v7, v1, :cond_9

    const/4 v11, 0x1

    .line 317
    .local v11, "drawBottomCorners":Z
    :goto_2
    if-nez v7, :cond_a

    const/4 v12, 0x1

    .line 319
    .local v12, "drawTopCorners":Z
    :goto_3
    if-eqz v12, :cond_3

    .line 320
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 321
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 323
    :cond_3
    if-eqz v11, :cond_4

    .line 324
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 326
    :cond_4
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    add-int v1, v23, v22

    int-to-float v4, v1

    add-int v1, v24, v15

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 328
    if-nez v11, :cond_5

    add-int/lit8 v1, v7, 0x1

    if-ge v1, v10, :cond_5

    .line 329
    add-int/lit8 v1, v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v17, v1, v2

    .line 330
    .local v17, "nextLineWidth":I
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v17

    move/from16 v0, v22

    if-ge v1, v0, :cond_b

    .line 331
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v17

    div-int/lit8 v18, v1, 0x2

    .line 332
    .local v18, "nextX":I
    const/4 v11, 0x1

    .line 333
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 335
    move/from16 v0, v23

    int-to-float v2, v0

    add-int v1, v24, v15

    int-to-float v3, v1

    move/from16 v0, v18

    int-to-float v4, v0

    add-int v1, v24, v15

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 336
    add-int v1, v18, v17

    int-to-float v2, v1

    add-int v1, v24, v15

    int-to-float v3, v1

    add-int v1, v23, v22

    int-to-float v4, v1

    add-int v1, v24, v15

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    .end local v17    # "nextLineWidth":I
    .end local v18    # "nextX":I
    :cond_5
    :goto_4
    if-nez v12, :cond_6

    if-lez v7, :cond_6

    .line 354
    add-int/lit8 v1, v7, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v19, v1, v2

    .line 355
    .local v19, "prevLineWidth":I
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v19

    move/from16 v0, v22

    if-ge v1, v0, :cond_d

    .line 356
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v19

    div-int/lit8 v20, v1, 0x2

    .line 357
    .local v20, "prevX":I
    const/4 v12, 0x1

    .line 358
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 359
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 361
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v24

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 362
    add-int v1, v20, v19

    int-to-float v2, v1

    move/from16 v0, v24

    int-to-float v3, v0

    add-int v1, v23, v22

    int-to-float v4, v1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v24

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 382
    .end local v19    # "prevLineWidth":I
    .end local v20    # "prevX":I
    :cond_6
    :goto_5
    sub-int v1, v23, v9

    int-to-float v2, v1

    add-int v1, v24, v9

    int-to-float v3, v1

    move/from16 v0, v23

    int-to-float v4, v0

    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int/2addr v1, v9

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 383
    add-int v1, v23, v22

    int-to-float v2, v1

    add-int v1, v24, v9

    int-to-float v3, v1

    add-int v1, v23, v22

    add-int/2addr v1, v9

    int-to-float v4, v1

    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int/2addr v1, v9

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Cells/ChatActionCell;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 385
    if-eqz v12, :cond_7

    .line 386
    sub-int v13, v23, v9

    .line 387
    .local v13, "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v24, v9

    move/from16 v0, v24

    invoke-virtual {v1, v13, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    add-int v13, v23, v22

    .line 391
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v24, v9

    move/from16 v0, v24

    invoke-virtual {v1, v13, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 395
    .end local v13    # "dx":I
    :cond_7
    if-eqz v11, :cond_8

    .line 396
    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int v14, v1, v9

    .line 398
    .local v14, "dy":I
    add-int v13, v23, v22

    .line 399
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    sub-int v13, v23, v9

    .line 403
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 404
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_8
    add-int v24, v24, v15

    .line 307
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 316
    .end local v11    # "drawBottomCorners":Z
    .end local v12    # "drawTopCorners":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 317
    .restart local v11    # "drawBottomCorners":Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 337
    .restart local v12    # "drawTopCorners":Z
    .restart local v17    # "nextLineWidth":I
    :cond_b
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v22

    move/from16 v0, v17

    if-ge v1, v0, :cond_c

    .line 338
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 340
    add-int v1, v24, v15

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v14, v1, v2

    .line 342
    .restart local v14    # "dy":I
    mul-int/lit8 v1, v9, 0x2

    sub-int v13, v23, v1

    .line 343
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    add-int v1, v23, v22

    add-int v13, v1, v9

    .line 347
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 350
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_c
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto/16 :goto_4

    .line 363
    .end local v17    # "nextLineWidth":I
    .restart local v19    # "prevLineWidth":I
    :cond_d
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v22

    move/from16 v0, v19

    if-ge v1, v0, :cond_e

    .line 364
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 365
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 367
    add-int v14, v24, v9

    .line 369
    .restart local v14    # "dy":I
    mul-int/lit8 v1, v9, 0x2

    sub-int v13, v23, v1

    .line 370
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 373
    add-int v1, v23, v22

    add-int v13, v1, v9

    .line 374
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 377
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_e
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 378
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    goto/16 :goto_5

    .line 410
    .end local v8    # "additionalHeight":I
    .end local v11    # "drawBottomCorners":Z
    .end local v12    # "drawTopCorners":Z
    .end local v15    # "height":I
    .end local v16    # "lineBottom":I
    .end local v19    # "prevLineWidth":I
    .end local v22    # "width":I
    .end local v23    # "x":I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 411
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onLongPress()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    .line 227
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    .line 266
    :goto_0
    return-void

    .line 230
    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 231
    .local v12, "width":I
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    if-eq v12, v0, :cond_3

    .line 232
    iput v12, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 233
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v3, v12, v0

    .line 234
    .local v3, "maxWidth":I
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v2, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 238
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 239
    .local v11, "linesCount":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    if-ge v8, v11, :cond_2

    .line 242
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v10

    .line 243
    .local v10, "lineWidth":F
    int-to-float v0, v3

    cmpl-float v0, v10, v0

    if-lez v0, :cond_1

    .line 244
    int-to-float v10, v3

    .line 246
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    int-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :try_start_2
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-double v0, v0

    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 239
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 247
    .end local v10    # "lineWidth":F
    :catch_0
    move-exception v9

    .line 248
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 253
    .end local v8    # "a":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "linesCount":I
    :catch_1
    move-exception v9

    .line 254
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    sub-int v0, v12, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 258
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int v0, v12, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 265
    .end local v3    # "maxWidth":I
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    const/16 v0, 0x46

    :goto_2
    add-int/lit8 v0, v0, 0xe

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v12, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 147
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 149
    .local v7, "y":F
    const/4 v5, 0x0

    .line 150
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 151
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v8, :cond_1

    .line 152
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v8, v8, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 153
    iput-boolean v11, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 154
    const/4 v5, 0x1

    .line 156
    :cond_0
    if-eqz v5, :cond_1

    .line 157
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->startCheckLongPress()V

    .line 180
    :cond_1
    :goto_0
    if-nez v5, :cond_3

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 182
    :cond_2
    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_d

    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_d

    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_d

    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_d

    .line 183
    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 184
    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    .line 186
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    float-to-int v9, v7

    invoke-virtual {v8, v9}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    .line 187
    .local v2, "line":I
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v2, v6}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 188
    .local v4, "off":I
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    .line 189
    .local v1, "left":F
    cmpg-float v8, v1, v6

    if-gtz v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v8

    add-float/2addr v8, v1

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v8, v8, Landroid/text/Spannable;

    if-eqz v8, :cond_c

    .line 190
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    .line 191
    .local v0, "buffer":Landroid/text/Spannable;
    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v4, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 193
    .local v3, "link":[Landroid/text/style/URLSpan;
    array-length v8, v3

    if-eqz v8, :cond_b

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_9

    .line 195
    aget-object v8, v3, v10

    iput-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    .line 196
    const/4 v5, 0x1

    .line 217
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    .end local v4    # "off":I
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 218
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 221
    :cond_4
    return v5

    .line 161
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v13, :cond_6

    .line 162
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->cancelCheckLongPress()V

    .line 164
    :cond_6
    iget-boolean v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    if-eqz v8, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v11, :cond_7

    .line 166
    iput-boolean v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 167
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v8, :cond_1

    .line 168
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v8, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 169
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 171
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 172
    iput-boolean v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_0

    .line 173
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v13, :cond_1

    .line 174
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v8

    if-nez v8, :cond_1

    .line 175
    iput-boolean v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_0

    .line 198
    .restart local v0    # "buffer":Landroid/text/Spannable;
    .restart local v1    # "left":F
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/URLSpan;
    .restart local v4    # "off":I
    :cond_9
    aget-object v8, v3, v10

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-ne v8, v9, :cond_3

    .line 199
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v8, :cond_a

    .line 200
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    aget-object v9, v3, v10

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenUserProfile(I)V

    .line 202
    :cond_a
    const/4 v5, 0x1

    goto :goto_1

    .line 206
    :cond_b
    iput-object v12, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_1

    .line 209
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    :cond_c
    iput-object v12, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_1

    .line 212
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v4    # "off":I
    :cond_d
    iput-object v12, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .line 88
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 95
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    .line 96
    iput v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 98
    const/4 v6, 0x0

    .line 99
    .local v6, "id":I
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 111
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v4, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v0, :cond_6

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 122
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    invoke-virtual {v0, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 126
    .end local v6    # "id":I
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->requestLayout()V

    goto :goto_0

    :cond_3
    move v0, v5

    .line 95
    goto :goto_1

    .line 102
    .restart local v6    # "id":I
    :cond_4
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_2

    .line 105
    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 106
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 107
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_2

    .line 115
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 116
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_7

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_3

    .line 119
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .end local v7    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_8
    move v8, v5

    .line 122
    goto :goto_4

    .line 124
    .end local v6    # "id":I
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5
.end method

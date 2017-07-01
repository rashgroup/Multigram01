.class Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
.super Landroid/view/View;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiColorPickerView"
.end annotation


# instance fields
.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private arrowX:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private currentEmoji:Ljava/lang/String;

.field private rect:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field private selection:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 441
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 414
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    .line 415
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    .line 443
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 444
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    return-void
.end method


# virtual methods
.method public getEmoji()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/high16 v6, 0x425e0000    # 55.5f

    const/high16 v7, 0x423e0000    # 47.5f

    const/high16 v13, 0x40800000    # 4.0f

    const/high16 v12, 0x41100000    # 9.0f

    .line 449
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getMeasuredWidth()I

    move-result v9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x42700000    # 60.0f

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v8, v10, v10, v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 452
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v5, v9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v10, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_5

    :goto_2
    const/high16 v7, 0x41000000    # 8.0f

    add-float/2addr v6, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v8, v9, v5, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 453
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 457
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    const/4 v5, 0x6

    if-ge v0, v5, :cond_6

    .line 458
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    mul-int/2addr v5, v0

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x5

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v3, v5, v6

    .line 459
    .local v3, "x":I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 460
    .local v4, "y":I
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v5, v0, :cond_0

    .line 461
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    int-to-float v6, v3

    const/high16 v7, 0x40600000    # 3.5f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    float-to-int v7, v7

    sub-int v7, v4, v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v8

    add-int/2addr v8, v3

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v9

    add-int/2addr v9, v4

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 462
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 464
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    .line 465
    .local v1, "code":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\ud83c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    packed-switch v0, :pswitch_data_0

    .line 485
    :cond_1
    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 486
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 487
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 449
    .end local v0    # "a":I
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    const/high16 v5, 0x42500000    # 52.0f

    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 452
    goto/16 :goto_1

    :cond_5
    move v6, v7

    goto/16 :goto_2

    .line 469
    .restart local v0    # "a":I
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\udffb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    goto :goto_4

    .line 472
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\udffc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    goto :goto_4

    .line 475
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\udffd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    goto :goto_4

    .line 478
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\udffe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    goto :goto_4

    .line 481
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\udfff"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 492
    .end local v0    # "a":I
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_6
    return-void

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setEmoji(Ljava/lang/String;I)V
    .locals 2
    .param p1, "emoji"    # Ljava/lang/String;
    .param p2, "arrowPosition"    # I

    .prologue
    .line 418
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    .line 419
    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x2f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    .line 422
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 429
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v0, p1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    .line 433
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    goto :goto_0
.end method

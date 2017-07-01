.class Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;
.super Landroid/widget/EditText;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextCaption"
.end annotation


# instance fields
.field private caption:Ljava/lang/String;

.field private captionLayout:Landroid/text/StaticLayout;

.field private editor:Ljava/lang/Object;

.field private editorField:Ljava/lang/reflect/Field;

.field private mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorDrawableField:Ljava/lang/reflect/Field;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private triesCount:I

.field private userNameLength:I

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 182
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 179
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->triesCount:I

    .line 185
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mEditor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 186
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->editor:Ljava/lang/Object;

    .line 188
    const-string/jumbo v2, "android.widget.Editor"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 189
    .local v0, "editorClass":Ljava/lang/Class;
    const-string/jumbo v2, "mShowCursor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->editorField:Ljava/lang/reflect/Field;

    .line 190
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->editorField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 191
    const-string/jumbo v2, "mCursorDrawable"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->mCursorDrawableField:Ljava/lang/reflect/Field;

    .line 192
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->mCursorDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->mCursorDrawableField:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->editor:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/drawable/Drawable;

    check-cast v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "editorClass":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 257
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 258
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_0

    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->userNameLength:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->length()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 259
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 260
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    .line 261
    .local v1, "oldColor":I
    const v6, -0x4d4d4e

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->xOffset:I

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->yOffset:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 264
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 266
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "oldColor":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->editorField:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_2

    .line 274
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->editorField:Ljava/lang/reflect/Field;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->editor:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 275
    .local v2, "mShowCursor":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    const/4 v5, 0x1

    .line 276
    .local v5, "showCursor":Z
    :cond_1
    if-eqz v5, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 278
    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 279
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    .end local v2    # "mShowCursor":J
    .end local v5    # "showCursor":Z
    :cond_2
    :goto_1
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    invoke-super/range {p0 .. p2}, Landroid/widget/EditText;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v13

    .line 230
    .local v13, "text":Ljava/lang/CharSequence;
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    .line 231
    const/16 v0, 0x20

    invoke-static {v13, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    .line 232
    .local v9, "index":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 234
    .local v10, "paint":Landroid/text/TextPaint;
    const/4 v0, 0x0

    add-int/lit8 v2, v9, 0x1

    invoke-interface {v13, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 235
    .local v12, "str":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v10, v13, v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v11, v2

    .line 236
    .local v11, "size":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaddingRight()I

    move-result v2

    sub-int v14, v0, v2

    .line 237
    .local v14, "width":I
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->userNameLength:I

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    sub-int v2, v14, v11

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v10, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 239
    .local v1, "captionFinal":Ljava/lang/CharSequence;
    iput v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->xOffset:I

    .line 241
    :try_start_1
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sub-int v3, v14, v11

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->xOffset:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    neg-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->xOffset:I

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->yOffset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .end local v1    # "captionFinal":Ljava/lang/CharSequence;
    .end local v9    # "index":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "size":I
    .end local v12    # "str":Ljava/lang/CharSequence;
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v14    # "width":I
    :cond_1
    :goto_1
    return-void

    .line 220
    :catch_0
    move-exception v8

    .line 221
    .local v8, "e":Ljava/lang/Exception;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setMeasuredDimension(II)V

    .line 222
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 246
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "captionFinal":Ljava/lang/CharSequence;
    .restart local v9    # "index":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "size":I
    .restart local v12    # "str":Ljava/lang/CharSequence;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    .restart local v14    # "width":I
    :catch_1
    move-exception v8

    .line 247
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V
    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 295
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 299
    :goto_1
    return v2

    .line 291
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    :cond_2
    :goto_0
    return-void

    .line 208
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;

    .line 212
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->requestLayout()V

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 201
    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    return-void
.end method

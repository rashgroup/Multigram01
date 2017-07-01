.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
.super Landroid/widget/ImageView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewEmoji"
.end annotation


# instance fields
.field private lastX:F

.field private lastY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private touched:Z

.field private touchedX:F

.field private touchedY:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 115
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;-><init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;-><init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    const v0, 0x7f0201ab

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setBackgroundResource(I)V

    .line 176
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->sendEmoji(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastX:F

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastY:F

    return v0
.end method

.method private sendEmoji(Ljava/lang/String;)V
    .locals 8
    .param p1, "override"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x32

    const/4 v7, 0x0

    .line 180
    if-eqz p1, :cond_5

    move-object v1, p1

    .line 181
    .local v1, "code":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_7

    .line 182
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$600()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "color":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .end local v2    # "color":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 189
    .local v3, "count":Ljava/lang/Integer;
    if-nez v3, :cond_1

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 192
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 193
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "a":I
    :goto_1
    if-ltz v0, :cond_2

    .line 194
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 195
    .local v4, "emoji":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gt v5, v6, :cond_6

    .line 202
    .end local v0    # "a":I
    .end local v4    # "emoji":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)V

    .line 206
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 207
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 209
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/telegram/ui/Components/EmojiView$Listener;->onEmojiSelected(Ljava/lang/String;)V

    .line 217
    .end local v3    # "count":Ljava/lang/Integer;
    :cond_4
    :goto_2
    return-void

    .line 180
    .end local v1    # "code":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    goto/16 :goto_0

    .line 193
    .restart local v0    # "a":I
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v3    # "count":Ljava/lang/Integer;
    .restart local v4    # "emoji":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 212
    .end local v0    # "a":I
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v4    # "emoji":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 213
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/telegram/ui/Components/EmojiView$Listener;->onEmojiSelected(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 221
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setMeasuredDimension(II)V

    .line 222
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    const v7, -0x39e3c000    # -10000.0f

    .line 226
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z

    if-eqz v5, :cond_2

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v10, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 228
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "color":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 249
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, "code":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    if-eqz v1, :cond_3

    .line 252
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$600()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->sendEmoji(Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveEmojiColors()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)V

    .line 264
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "color":Ljava/lang/String;
    :cond_1
    :goto_2
    iput-boolean v8, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z

    .line 265
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    .line 266
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    .line 292
    :cond_2
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastX:F

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastY:F

    .line 294
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 234
    .restart local v1    # "color":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v1, "\ud83c\udffb"

    .line 235
    goto :goto_0

    .line 237
    :pswitch_1
    const-string/jumbo v1, "\ud83c\udffc"

    .line 238
    goto :goto_0

    .line 240
    :pswitch_2
    const-string/jumbo v1, "\ud83c\udffd"

    .line 241
    goto :goto_0

    .line 243
    :pswitch_3
    const-string/jumbo v1, "\ud83c\udffe"

    .line 244
    goto :goto_0

    .line 246
    :pswitch_4
    const-string/jumbo v1, "\ud83c\udfff"

    goto :goto_0

    .line 255
    .restart local v0    # "code":Ljava/lang/String;
    :cond_3
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$600()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 261
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_5

    .end local v1    # "color":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->sendEmoji(Ljava/lang/String;)V

    goto :goto_2

    .restart local v1    # "color":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_4

    .line 267
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "color":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, "ignore":Z
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_8

    .line 270
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_7

    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v9, v8}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 271
    :cond_7
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F

    .line 272
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F

    .line 277
    :cond_8
    :goto_5
    if-nez v2, :cond_2

    .line 278
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getLocationOnScreen([I)V

    .line 279
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float v4, v5, v6

    .line 280
    .local v4, "x":F
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getLocationOnScreen([I)V

    .line 281
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v8

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 282
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v4, v5

    float-to-int v3, v5

    .line 283
    .local v3, "position":I
    if-gez v3, :cond_b

    .line 284
    const/4 v3, 0x0

    .line 288
    :cond_9
    :goto_6
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_3

    .line 274
    .end local v3    # "position":I
    .end local v4    # "x":F
    :cond_a
    const/4 v2, 0x1

    goto :goto_5

    .line 285
    .restart local v3    # "position":I
    .restart local v4    # "x":F
    :cond_b
    const/4 v5, 0x5

    if-le v3, v5, :cond_9

    .line 286
    const/4 v3, 0x5

    goto :goto_6

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

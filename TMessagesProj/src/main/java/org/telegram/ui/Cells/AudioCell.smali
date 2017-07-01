.class public Lorg/telegram/ui/Cells/AudioCell;
.super Landroid/widget/FrameLayout;
.source "AudioCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;
    }
.end annotation


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

.field private authorTextView:Landroid/widget/TextView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private delegate:Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

.field private genreTextView:Landroid/widget/TextView;

.field private needDivider:Z

.field private playButton:Landroid/widget/ImageView;

.field private timeTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x42480000    # 50.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    sget-object v0, Lorg/telegram/ui/Cells/AudioCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/AudioCell;->paint:Landroid/graphics/Paint;

    .line 56
    sget-object v0, Lorg/telegram/ui/Cells/AudioCell;->paint:Landroid/graphics/Paint;

    const v1, -0x262627

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v0, Lorg/telegram/ui/Cells/AudioCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->playButton:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    iget-object v10, p0, Lorg/telegram/ui/Cells/AudioCell;->playButton:Landroid/widget/ImageView;

    const/16 v0, 0x2e

    const/high16 v1, 0x42380000    # 46.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v7

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    const/high16 v4, 0x41500000    # 13.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x41500000    # 13.0f

    :goto_2
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/AudioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Cells/AudioCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/AudioCell$1;-><init>(Lorg/telegram/ui/Cells/AudioCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    move v0, v7

    :goto_3
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v10, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    move v2, v7

    :goto_4
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    move v3, v9

    :goto_5
    const/high16 v4, 0x40e00000    # 7.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    const/high16 v5, 0x42900000    # 72.0f

    :goto_6
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/AudioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    const v1, -0x757576

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    move v0, v7

    :goto_7
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    iget-object v10, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    move v2, v7

    :goto_8
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_a

    move v3, v9

    :goto_9
    const/high16 v4, 0x41e00000    # 28.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_b

    const/high16 v5, 0x42900000    # 72.0f

    :goto_a
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/AudioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    const v1, -0x757576

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_c

    move v0, v7

    :goto_b
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iget-object v10, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_d

    move v2, v7

    :goto_c
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    move v3, v9

    :goto_d
    const/high16 v4, 0x42300000    # 44.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_f

    const/high16 v5, 0x42900000    # 72.0f

    :goto_e
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/AudioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_10

    move v0, v8

    :goto_f
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    iget-object v9, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_11

    move v2, v8

    :goto_10
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_12

    const/high16 v3, 0x41900000    # 18.0f

    :goto_11
    const/high16 v4, 0x41300000    # 11.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_13

    move v5, v6

    :goto_12
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/AudioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020258

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const v1, -0xd64909

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setColor(I)V

    .line 134
    iget-object v9, p0, Lorg/telegram/ui/Cells/AudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14

    :goto_13
    or-int/lit8 v2, v8, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_15

    const/high16 v3, 0x41900000    # 18.0f

    :goto_14
    const/high16 v4, 0x421c0000    # 39.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_16

    move v5, v6

    :goto_15
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/AudioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void

    :cond_1
    move v2, v8

    .line 62
    goto/16 :goto_0

    :cond_2
    const/high16 v3, 0x41500000    # 13.0f

    goto/16 :goto_1

    :cond_3
    move v5, v6

    goto/16 :goto_2

    :cond_4
    move v0, v8

    .line 92
    goto/16 :goto_3

    :cond_5
    move v2, v8

    .line 93
    goto/16 :goto_4

    :cond_6
    const/high16 v3, 0x42900000    # 72.0f

    goto/16 :goto_5

    :cond_7
    move v5, v9

    goto/16 :goto_6

    :cond_8
    move v0, v8

    .line 102
    goto/16 :goto_7

    :cond_9
    move v2, v8

    .line 103
    goto/16 :goto_8

    :cond_a
    const/high16 v3, 0x42900000    # 72.0f

    goto/16 :goto_9

    :cond_b
    move v5, v9

    goto/16 :goto_a

    :cond_c
    move v0, v8

    .line 114
    goto/16 :goto_b

    :cond_d
    move v2, v8

    .line 115
    goto/16 :goto_c

    :cond_e
    const/high16 v3, 0x42900000    # 72.0f

    goto/16 :goto_d

    :cond_f
    move v5, v9

    goto/16 :goto_e

    :cond_10
    move v0, v7

    .line 126
    goto/16 :goto_f

    :cond_11
    move v2, v7

    .line 127
    goto/16 :goto_10

    :cond_12
    move v3, v6

    goto/16 :goto_11

    :cond_13
    const/high16 v5, 0x41900000    # 18.0f

    goto/16 :goto_12

    :cond_14
    move v8, v7

    .line 134
    goto :goto_13

    :cond_15
    move v3, v6

    goto :goto_14

    :cond_16
    const/high16 v5, 0x41900000    # 18.0f

    goto :goto_15
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/AudioCell;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/AudioCell;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/AudioCell;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->playButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/AudioCell;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->delegate:Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

    return-object v0
.end method


# virtual methods
.method public getAudioEntry()Lorg/telegram/messenger/MediaController$AudioEntry;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AudioCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 172
    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AudioCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AudioCell;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AudioCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/AudioCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 139
    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AudioCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAudio(Lorg/telegram/messenger/MediaController$AudioEntry;ZZ)V
    .locals 6
    .param p1, "entry"    # Lorg/telegram/messenger/MediaController$AudioEntry;
    .param p2, "divider"    # Z
    .param p3, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iput-object p1, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->genreTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->authorTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->timeTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    iget v5, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    iget v5, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, p0, Lorg/telegram/ui/Cells/AudioCell;->playButton:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02006d

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/AudioCell;->needDivider:Z

    .line 152
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/AudioCell;->setWillNotDraw(Z)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p3, v2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 155
    return-void

    .line 149
    :cond_0
    const v0, 0x7f02006e

    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 159
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;)V
    .locals 0
    .param p1, "audioCellDelegate"    # Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/telegram/ui/Cells/AudioCell;->delegate:Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

    .line 163
    return-void
.end method

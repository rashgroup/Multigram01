.class public Lorg/telegram/ui/Cells/PhotoPickerSearchCell;
.super Landroid/widget/LinearLayout;
.source "PhotoPickerSearchCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;,
        Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowGifs"    # Z

    .prologue
    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->setOrientation(I)V

    .line 88
    new-instance v2, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;Landroid/content/Context;)V

    .line 89
    .local v2, "searchButton":Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$000(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "SearchImages"

    const v5, 0x7f070438

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$100(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "SearchImagesInfo"

    const v5, 0x7f070439

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$200(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02026a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 96
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 97
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 98
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v3, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 110
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 113
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 114
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v2, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    .end local v2    # "searchButton":Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;
    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;Landroid/content/Context;)V

    .line 118
    .restart local v2    # "searchButton":Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$000(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "SearchGifs"

    const v5, 0x7f070436

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$100(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "GIPHY"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$200(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020265

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 124
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 125
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 126
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 127
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    if-eqz p2, :cond_0

    .line 129
    new-instance v3, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setAlpha(F)V

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 148
    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 149
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    .line 144
    return-void
.end method

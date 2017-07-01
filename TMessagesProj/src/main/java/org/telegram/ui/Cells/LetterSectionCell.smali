.class public Lorg/telegram/ui/Cells/LetterSectionCell;
.super Landroid/widget/FrameLayout;
.source "LetterSectionCell.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/LetterSectionCell;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/LetterSectionCell;->textView:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lorg/telegram/ui/Cells/LetterSectionCell;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    iget-object v2, p0, Lorg/telegram/ui/Cells/LetterSectionCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "theme_contact_list_ncolor"

    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "nColor":I
    iget-object v2, p0, Lorg/telegram/ui/Cells/LetterSectionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v2, p0, Lorg/telegram/ui/Cells/LetterSectionCell;->textView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    iget-object v2, p0, Lorg/telegram/ui/Cells/LetterSectionCell;->textView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method


# virtual methods
.method public setCellHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 50
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 2
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/LetterSectionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

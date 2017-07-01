.class Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerAlbumsCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumView"
.end annotation


# instance fields
.field private countTextView:Landroid/widget/TextView;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private selector:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;Landroid/content/Context;)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v1, -0x1

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    .line 47
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 50
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v1, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    const/high16 v2, 0x7f000000

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 55
    const/16 v2, 0x1c

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 62
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    iget-object v8, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    move v4, v0

    move v5, v0

    move v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    const v2, -0x555556

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v4, 0x40800000    # 4.0f

    move v3, v11

    move v5, v11

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->selector:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->selector:Landroid/view/View;

    const v2, 0x7f0201ab

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->selector:Landroid/view/View;

    invoke-static {v1, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->selector:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

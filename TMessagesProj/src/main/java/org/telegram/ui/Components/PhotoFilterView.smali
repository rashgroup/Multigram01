.class public Lorg/telegram/ui/Components/PhotoFilterView;
.super Landroid/widget/FrameLayout;
.source "PhotoFilterView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;,
        Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    }
.end annotation


# static fields
.field private static final curveDataStep:I = 0x2

.field private static final curveGranularity:I = 0x64


# instance fields
.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private blurAngle:F

.field private blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private blurExcludeBlurSize:F

.field private blurExcludePoint:Lorg/telegram/ui/Components/Point;

.field private blurExcludeSize:F

.field private blurLayout:Landroid/widget/FrameLayout;

.field private blurLinearButton:Landroid/widget/TextView;

.field private blurOffButton:Landroid/widget/TextView;

.field private blurRadialButton:Landroid/widget/TextView;

.field private blurTool:I

.field private blurType:I

.field private cancelTextView:Landroid/widget/TextView;

.field private contrastTool:I

.field private contrastValue:F

.field private curveLayout:Landroid/widget/FrameLayout;

.field private curveTextView:[Landroid/widget/TextView;

.field private curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private curvesTool:I

.field private curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private doneTextView:Landroid/widget/TextView;

.field private editView:Landroid/widget/FrameLayout;

.field private eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

.field private enhanceTool:I

.field private enhanceValue:F

.field private exposureTool:I

.field private exposureValue:F

.field private fadeTool:I

.field private fadeValue:F

.field private grainTool:I

.field private grainValue:F

.field private highlightsTool:I

.field private highlightsValue:F

.field private infoTextView:Landroid/widget/TextView;

.field private orientation:I

.field private paramTextView:Landroid/widget/TextView;

.field private previousValue:F

.field private previousValueInt:I

.field private previousValueInt2:I

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private saturationTool:I

.field private saturationValue:F

.field private selectedTintMode:I

.field private selectedTool:I

.field private shadowsTool:I

.field private shadowsValue:F

.field private sharpenTool:I

.field private sharpenValue:F

.field private showOriginal:Z

.field private textureView:Landroid/view/TextureView;

.field private tintButtonsContainer:Landroid/widget/LinearLayout;

.field private final tintHighlighsColors:[I

.field private tintHighlightsButton:Landroid/widget/TextView;

.field private tintHighlightsColor:I

.field private tintLayout:Landroid/widget/FrameLayout;

.field private final tintShadowColors:[I

.field private tintShadowsButton:Landroid/widget/TextView;

.field private tintShadowsColor:I

.field private tintTool:I

.field private toolsAdapter:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

.field private toolsView:Landroid/widget/FrameLayout;

.field private valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

.field private valueTextView:Landroid/widget/TextView;

.field private vignetteTool:I

.field private vignetteValue:F

.field private warmthTool:I

.field private warmthValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rotation"    # I

    .prologue
    .line 1980
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    .line 74
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    .line 93
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 94
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    .line 95
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    .line 96
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    .line 97
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    .line 98
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    .line 99
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    .line 100
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    .line 101
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    .line 102
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    .line 103
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    .line 104
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    .line 105
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    .line 106
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    .line 107
    const/16 v2, 0xd

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    .line 109
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    .line 111
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    .line 112
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    .line 115
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    .line 116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    .line 118
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    .line 120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    .line 121
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 122
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    .line 123
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 128
    const v2, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 129
    new-instance v2, Lorg/telegram/ui/Components/Point;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 130
    const v2, 0x3e19999a    # 0.15f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    .line 131
    const v2, 0x3fc90fdb

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    .line 156
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    .line 1982
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 1983
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    .line 1985
    new-instance v2, Landroid/view/TextureView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    .line 1986
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 1990
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2033
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    .line 2034
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 2035
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V

    .line 2049
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$3;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2061
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    .line 2062
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x7e

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2064
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2065
    .local v11, "frameLayout":Landroid/widget/FrameLayout;
    const v2, -0xe5e5e6

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2068
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    .line 2069
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const v3, -0xc2c2c3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2078
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const v3, -0xae420d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const v3, -0xc2c2c3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Done"

    const v4, 0x7f0701c2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/16 v5, 0x35

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2088
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2089
    new-instance v13, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2090
    .local v13, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2091
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsAdapter:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 2096
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/16 v5, 0x3c

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$4;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2162
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    .line 2163
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x7e

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2166
    new-instance v11, Landroid/widget/FrameLayout;

    .end local v11    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2167
    .restart local v11    # "frameLayout":Landroid/widget/FrameLayout;
    const v2, -0xe5e5e6

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2170
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2171
    .local v12, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f0200ff

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2172
    const v2, -0xc2c2c3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2173
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2174
    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2175
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$5;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2218
    new-instance v12, Landroid/widget/ImageView;

    .end local v12    # "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2219
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    const v2, 0x7f020100

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2220
    const v2, -0xc2c2c3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2221
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2222
    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$6;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2231
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    .line 2232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x41100000    # 9.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2236
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    .line 2237
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x41d00000    # 26.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2241
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    .line 2242
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2246
    new-instance v2, Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    .line 2247
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$7;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-object/from16 v17, v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1f2

    :goto_0
    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x31

    :goto_1
    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2282
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    .line 2283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x4e

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2286
    .local v10, "curveTextViewContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/16 v4, 0x1c

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2289
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    const/4 v2, 0x4

    if-ge v9, v2, :cond_8

    .line 2290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2294
    if-nez v9, :cond_4

    .line 2295
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    const-string/jumbo v3, "CurvesAll"

    const v4, 0x7f07018e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2303
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v8, v2, v9

    const/4 v2, -0x2

    const/16 v3, 0x1c

    if-nez v9, :cond_7

    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$8;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2289
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 2280
    .end local v9    # "a":I
    .end local v10    # "curveTextViewContainer":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x33

    goto/16 :goto_1

    .line 2296
    .restart local v9    # "a":I
    .restart local v10    # "curveTextViewContainer":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v2, 0x1

    if-ne v9, v2, :cond_5

    .line 2297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    const-string/jumbo v3, "CurvesRed"

    const v4, 0x7f070191

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2298
    :cond_5
    const/4 v2, 0x2

    if-ne v9, v2, :cond_6

    .line 2299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    const-string/jumbo v3, "CurvesGreen"

    const v4, 0x7f070190

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2300
    :cond_6
    const/4 v2, 0x3

    if-ne v9, v2, :cond_1

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    const-string/jumbo v3, "CurvesBlue"

    const v4, 0x7f07018f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2304
    :cond_7
    const/high16 v4, 0x41f00000    # 30.0f

    goto :goto_4

    .line 2318
    :cond_8
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    .line 2319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x4e

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2321
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2322
    .local v15, "tintTextViewContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/16 v4, 0x1c

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2325
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    .line 2326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const-string/jumbo v3, "TintShadows"

    const v4, 0x7f0704c5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/16 v4, 0x1c

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$9;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2339
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    .line 2340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const-string/jumbo v3, "TintHighlights"

    const v4, 0x7f0704c4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x1c

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$10;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2353
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42480000    # 50.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x41c00000    # 24.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2357
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    array-length v2, v2

    if-ge v9, v2, :cond_9

    .line 2358
    new-instance v14, Lorg/telegram/ui/Components/RadioButton;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    .line 2359
    .local v14, "radioButton":Lorg/telegram/ui/Components/RadioButton;
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 2360
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    array-length v6, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2362
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$11;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2357
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2379
    .end local v14    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_9
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v2, 0x118

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    .line 2383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    const v4, 0x7f020078

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const v3, -0xae420d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const-string/jumbo v3, "BlurOff"

    const v4, 0x7f0700db

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2389
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/16 v4, 0x50

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$12;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2402
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    .line 2403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    const v4, 0x7f020079

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2404
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const-string/jumbo v3, "BlurRadial"

    const v4, 0x7f0700dc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v2, 0x50

    const/high16 v3, 0x42a00000    # 80.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$13;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2423
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    .line 2424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    const v4, 0x7f020075

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const-string/jumbo v3, "BlurLinear"

    const v4, 0x7f0700da

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v2, 0x50

    const/high16 v3, 0x42a00000    # 80.0f

    const/16 v4, 0x33

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$14;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2443
    return-void

    .line 63
    :array_0
    .array-data 4
        0x0
        -0xb2b3
        -0xb7fde
        -0x3300
        -0x7e2d7f
        -0x8e3a2a
        -0xff8d44
        -0x99d26f
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x0
        -0x106d7a
        -0x15315e
        -0xd1e84
        -0x5b1252
        -0x76231b
        -0xd17438
        -0x32671b
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getEnhanceValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getGrainValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getFadeValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getTintHighlightsIntensityValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getTintShadowsIntensityValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getSharpenValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/Point;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/Point;)Lorg/telegram/ui/Components/Point;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Point;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getShadowsValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getHighlightsValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getExposureValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    return v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F

    return v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return v0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getContrastValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return v0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return v0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return v0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return v0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getSaturationValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    return v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    return v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return v0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    return v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return v0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return v0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I

    return v0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getWarmthValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt2:I

    return v0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt2:I

    return p1
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    return v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V

    return-void
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsAdapter:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    return-object v0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/PhotoFilterView;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object v0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    return v0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    return p1
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/PhotoFilterView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedTintButton(Z)V

    return-void
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/PhotoFilterView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getVignetteValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/PhotoFilterView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    return-object v0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object v0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->checkEnhance()V

    return-void
.end method

.method private checkEnhance()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2798
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2799
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2800
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2801
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    const-string/jumbo v3, "progress"

    new-array v4, v4, [I

    const/16 v5, 0x32

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2802
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2804
    .end local v0    # "AnimatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private fixLayout(II)V
    .locals 13
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 2645
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    .line 2703
    :cond_0
    :goto_0
    return-void

    .line 2649
    :cond_1
    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr p1, v8

    .line 2650
    const/high16 v8, 0x431a0000    # 154.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr p2, v8

    .line 2654
    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v8, v8, 0x168

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v8, v8, 0x168

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_3

    .line 2655
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 2656
    .local v1, "bitmapW":F
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v0, v8

    .line 2661
    .local v0, "bitmapH":F
    :goto_1
    int-to-float v8, p1

    div-float v5, v8, v1

    .line 2662
    .local v5, "scaleX":F
    int-to-float v8, p2

    div-float v6, v8, v0

    .line 2663
    .local v6, "scaleY":F
    cmpl-float v8, v5, v6

    if-lez v8, :cond_4

    .line 2664
    int-to-float v0, p2

    .line 2665
    mul-float v8, v1, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v1, v8

    .line 2671
    :goto_2
    int-to-float v8, p1

    sub-float/2addr v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 2672
    .local v2, "bitmapX":I
    int-to-float v8, p2

    sub-float/2addr v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 2674
    .local v3, "bitmapY":I
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2675
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2676
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2677
    float-to-int v8, v1

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2678
    float-to-int v8, v0

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2679
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v8, v4}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2680
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    int-to-float v9, v2

    int-to-float v10, v3

    iget v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v11, v11

    iget v12, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setActualArea(FFFF)V

    .line 2682
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v9, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setActualAreaSize(FF)V

    .line 2683
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2684
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, p2

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2685
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2687
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2688
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, p2

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2689
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2691
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2692
    const/high16 v8, 0x42ac0000    # 86.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    mul-int/lit8 v7, v8, 0xa

    .line 2693
    .local v7, "total":I
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2694
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-ge v7, p1, :cond_5

    .line 2695
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2696
    sub-int v8, p1, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2701
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2658
    .end local v0    # "bitmapH":F
    .end local v1    # "bitmapW":F
    .end local v2    # "bitmapX":I
    .end local v3    # "bitmapY":I
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    .end local v7    # "total":I
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 2659
    .restart local v1    # "bitmapW":F
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .restart local v0    # "bitmapH":F
    goto/16 :goto_1

    .line 2667
    .restart local v5    # "scaleX":F
    .restart local v6    # "scaleY":F
    :cond_4
    int-to-float v1, p1

    .line 2668
    mul-float v8, v0, v5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v0, v8

    goto/16 :goto_2

    .line 2698
    .restart local v2    # "bitmapX":I
    .restart local v3    # "bitmapY":I
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "total":I
    :cond_5
    const/4 v8, -0x1

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2699
    const/4 v8, 0x0

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method private getContrastValue()F
    .locals 2

    .prologue
    .line 2728
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private getEnhanceValue()F
    .locals 2

    .prologue
    .line 2720
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getExposureValue()F
    .locals 2

    .prologue
    .line 2724
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getFadeValue()F
    .locals 2

    .prologue
    .line 2748
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getGrainValue()F
    .locals 2

    .prologue
    .line 2744
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getHighlightsValue()F
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 2716
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    return v0
.end method

.method private getSaturationValue()F
    .locals 3

    .prologue
    .line 2762
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    .line 2763
    .local v0, "parameterValue":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2764
    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    .line 2766
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    return v1
.end method

.method private getShadowsValue()F
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 2712
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    return v0
.end method

.method private getSharpenValue()F
    .locals 3

    .prologue
    .line 2740
    const v0, 0x3de147ae    # 0.11f

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getTintHighlightsIntensityValue()F
    .locals 2

    .prologue
    .line 2752
    const/high16 v0, 0x42480000    # 50.0f

    .line 2753
    .local v0, "tintHighlightsIntensity":F
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    goto :goto_0
.end method

.method private getTintShadowsIntensityValue()F
    .locals 2

    .prologue
    .line 2757
    const/high16 v0, 0x42480000    # 50.0f

    .line 2758
    .local v0, "tintShadowsIntensity":F
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    goto :goto_0
.end method

.method private getVignetteValue()F
    .locals 2

    .prologue
    .line 2736
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getWarmthValue()F
    .locals 2

    .prologue
    .line 2732
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private setShowOriginal(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2536
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    if-ne v0, p1, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return-void

    .line 2539
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    .line 2540
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    .line 2541
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    goto :goto_0
.end method

.method private updateSelectedBlurType()V
    .locals 7

    .prologue
    const v6, 0x7f020077

    const v5, 0x7f020075

    const v4, -0xae420d

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2446
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-nez v0, :cond_1

    .line 2447
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const v1, 0x7f020078

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2448
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2449
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v1, 0x7f020079

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2450
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2451
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2452
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2468
    :cond_0
    :goto_0
    return-void

    .line 2453
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v6, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2457
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2458
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2459
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2460
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2461
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v6, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2462
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v1, 0x7f020079

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2464
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const v1, 0x7f020076

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateSelectedTintButton(Z)V
    .locals 12
    .param p1, "animated"    # Z

    .prologue
    const v9, -0x7f7f80

    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 2471
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_0
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2472
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    iget v11, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-ne v11, v10, :cond_2

    :goto_1
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2473
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 2474
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v2, :cond_a

    .line 2475
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2476
    .local v1, "child":Landroid/view/View;
    instance-of v7, v1, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v7, :cond_0

    move-object v6, v1

    .line 2477
    check-cast v6, Lorg/telegram/ui/Components/RadioButton;

    .line 2478
    .local v6, "radioButton":Lorg/telegram/ui/Components/RadioButton;
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2479
    .local v5, "num":I
    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v7, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    .line 2480
    .local v3, "color1":I
    :goto_3
    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    aget v4, v7, v5

    .line 2481
    .local v4, "color2":I
    :goto_4
    if-ne v3, v4, :cond_5

    move v7, v10

    :goto_5
    invoke-virtual {v6, v7, p1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 2482
    if-nez v5, :cond_6

    move v9, v8

    :goto_6
    if-nez v5, :cond_8

    move v7, v8

    :goto_7
    invoke-virtual {v6, v9, v7}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 2474
    .end local v3    # "color1":I
    .end local v4    # "color2":I
    .end local v5    # "num":I
    .end local v6    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "a":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_1
    move v7, v9

    .line 2471
    goto :goto_0

    :cond_2
    move v9, v8

    .line 2472
    goto :goto_1

    .line 2479
    .restart local v0    # "a":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childCount":I
    .restart local v5    # "num":I
    .restart local v6    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    goto :goto_3

    .line 2480
    .restart local v3    # "color1":I
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    aget v4, v7, v5

    goto :goto_4

    .line 2481
    .restart local v4    # "color2":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    .line 2482
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    aget v7, v7, v5

    move v9, v7

    goto :goto_6

    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    aget v7, v7, v5

    move v9, v7

    goto :goto_6

    :cond_8
    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    aget v7, v7, v5

    goto :goto_7

    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    aget v7, v7, v5

    goto :goto_7

    .line 2485
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "color1":I
    .end local v4    # "color2":I
    .end local v5    # "num":I
    .end local v6    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_a
    return-void
.end method

.method private updateValueTextView()V
    .locals 4

    .prologue
    .line 2488
    const/4 v0, 0x0

    .line 2489
    .local v0, "value":I
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    if-ne v1, v2, :cond_1

    .line 2490
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    float-to-int v0, v1

    .line 2512
    :cond_0
    :goto_0
    if-lez v0, :cond_b

    .line 2513
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2517
    :goto_1
    return-void

    .line 2491
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    if-ne v1, v2, :cond_2

    .line 2492
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2493
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    if-ne v1, v2, :cond_3

    .line 2494
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2495
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    if-ne v1, v2, :cond_4

    .line 2496
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2497
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    if-ne v1, v2, :cond_5

    .line 2498
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2499
    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    if-ne v1, v2, :cond_6

    .line 2500
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2501
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    if-ne v1, v2, :cond_7

    .line 2502
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2503
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    if-ne v1, v2, :cond_8

    .line 2504
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2505
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    if-ne v1, v2, :cond_9

    .line 2506
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2507
    :cond_9
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    if-ne v1, v2, :cond_a

    .line 2508
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2509
    :cond_a
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    if-ne v1, v2, :cond_0

    .line 2510
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    float-to-int v0, v1

    goto :goto_0

    .line 2515
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2778
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2520
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 2638
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2707
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->fixLayout(II)V

    .line 2708
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2709
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 2525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 2526
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2527
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 2528
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    .line 2533
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 2530
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 2531
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_0
.end method

.method public setEditViewFirst()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2786
    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 2787
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F

    .line 2788
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    .line 2789
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    .line 2790
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Enhance"

    const v2, 0x7f0701e0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2792
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    .line 2794
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V

    .line 2795
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 2629
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shutdown()V

    .line 2631
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .line 2633
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 2634
    return-void
.end method

.method public switchToOrFromEditMode()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 2548
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v8, 0x8

    if-ne v4, v8, :cond_9

    .line 2549
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    .line 2550
    .local v2, "viewFrom":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    .line 2552
    .local v3, "viewTo":Landroid/view/View;
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    if-ne v4, v8, :cond_8

    .line 2553
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v9, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    if-ne v4, v9, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2554
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v9, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    if-ne v4, v9, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2555
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v9, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    if-ne v4, v9, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2556
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    if-ne v4, v8, :cond_5

    .line 2557
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "Blur"

    const v8, 0x7f0700d9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2558
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-eqz v4, :cond_1

    .line 2559
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 2573
    :cond_1
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2574
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setVisibility(I)V

    .line 2575
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2576
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2577
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 2597
    :goto_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2598
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v4, v10, [Landroid/animation/Animator;

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v5

    const/high16 v8, 0x42fc0000    # 126.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2601
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$15;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$15;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2624
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2625
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2626
    return-void

    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_2
    move v4, v6

    .line 2553
    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 2554
    goto :goto_1

    :cond_4
    move v4, v6

    .line 2555
    goto :goto_2

    .line 2561
    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    if-ne v4, v8, :cond_7

    .line 2562
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v8, "Curves"

    const v9, 0x7f07018d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2563
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    .line 2564
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput v5, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    .line 2565
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v6, :cond_1

    .line 2566
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v8, v4, v0

    if-nez v0, :cond_6

    move v4, v7

    :goto_6
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2565
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2566
    :cond_6
    const v4, -0x7f7f80

    goto :goto_6

    .line 2569
    .end local v0    # "a":I
    :cond_7
    iput v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    .line 2570
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedTintButton(Z)V

    .line 2571
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "Tint"

    const v8, 0x7f0704c3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2579
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2580
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2581
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2582
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setVisibility(I)V

    .line 2583
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2584
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2585
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2586
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 2587
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    goto/16 :goto_4

    .line 2590
    .end local v2    # "viewFrom":Landroid/view/View;
    .end local v3    # "viewTo":Landroid/view/View;
    :cond_9
    iput v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 2591
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    .line 2592
    .restart local v2    # "viewFrom":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    .line 2593
    .restart local v3    # "viewTo":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 2594
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    goto/16 :goto_4
.end method

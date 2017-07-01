.class public Lorg/telegram/ui/ManageSpaceActivity;
.super Landroid/app/Activity;
.source "ManageSpaceActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;


# static fields
.field private static layerFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static mainFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private currentConnectionState:I

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private finished:Z

.field private layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/ManageSpaceActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/ManageSpaceActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ManageSpaceActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ManageSpaceActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;ZZZ)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isNew"    # Z
    .param p3, "restore"    # Z
    .param p4, "fromPassword"    # Z

    .prologue
    .line 172
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 181
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 182
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 185
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method

.method private onFinish()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->finished:Z

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->finished:Z

    goto :goto_0
.end method

.method private updateCurrentConnectionState()V
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lorg/telegram/ui/ManageSpaceActivity;->currentConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 306
    const-string/jumbo v1, "WaitingForNetwork"

    const v2, 0x7f0704fd

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setTitleOverlayText(Ljava/lang/String;)V

    .line 313
    return-void

    .line 307
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ManageSpaceActivity;->currentConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 308
    const-string/jumbo v1, "Connecting"

    const v2, 0x7f070177

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ManageSpaceActivity;->currentConnectionState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 310
    const-string/jumbo v1, "Updating"

    const v2, 0x7f0704de

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public fixLayout()V
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ManageSpaceActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageSpaceActivity$3;-><init>(Lorg/telegram/ui/ManageSpaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 3
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 353
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 355
    invoke-direct {p0}, Lorg/telegram/ui/ManageSpaceActivity;->onFinish()V

    .line 356
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->finish()V

    .line 370
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 359
    invoke-direct {p0}, Lorg/telegram/ui/ManageSpaceActivity;->onFinish()V

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->finish()V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 365
    invoke-direct {p0}, Lorg/telegram/ui/ManageSpaceActivity;->onFinish()V

    .line 366
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->finish()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 370
    goto :goto_0
.end method

.method public needLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x43a00000    # 320.0f

    const/4 v6, -0x1

    .line 216
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .local v2, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 219
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 220
    .local v3, "y":I
    :goto_0
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 221
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_4

    .line 225
    :cond_0
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v1, v4, 0x23

    .line 226
    .local v1, "leftWidth":I
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 227
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 230
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    .restart local v2    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 232
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 233
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 236
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 237
    .local v0, "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 238
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 239
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 248
    .end local v0    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v1    # "leftWidth":I
    .end local v2    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "y":I
    :cond_2
    :goto_1
    return-void

    .line 219
    .restart local v2    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 242
    .restart local v3    # "y":I
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 243
    .restart local v2    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 244
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 245
    iget-object v4, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z
    .param p4, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 330
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 298
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize()V

    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->fixLayout()V

    .line 301
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, -0x1

    .line 53
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 55
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ManageSpaceActivity;->requestWindowFeature(I)Z

    .line 56
    const v8, 0x7f0a0086

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ManageSpaceActivity;->setTheme(I)V

    .line 57
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f0202b2

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->loadRecources(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "status_bar_height"

    const-string/jumbo v10, "dimen"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 63
    .local v4, "resourceId":I
    if-lez v4, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 67
    :cond_0
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 69
    new-instance v8, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 70
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v7, v7}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 71
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8, v9}, Lorg/telegram/ui/ManageSpaceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 76
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "launchLayout":Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .local v2, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 80
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "backgroundTablet":Landroid/widget/ImageView;
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    const v8, 0x7f0200a2

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .local v3, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 89
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 95
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 96
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v5, "shadowTablet":Landroid/widget/FrameLayout;
    const/high16 v8, 0x7f000000

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 100
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 103
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 104
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v8, Lorg/telegram/ui/ManageSpaceActivity$1;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ManageSpaceActivity$1;-><init>(Lorg/telegram/ui/ManageSpaceActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    new-instance v8, Lorg/telegram/ui/ManageSpaceActivity$2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ManageSpaceActivity$2;-><init>(Lorg/telegram/ui/ManageSpaceActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 141
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 142
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundView(Landroid/view/View;)V

    .line 143
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setUseAlphaAnimations(Z)V

    .line 144
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const v9, 0x7f02008e

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundResource(I)V

    .line 145
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const v8, 0x44048000    # 530.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 148
    const/high16 v8, 0x44040000    # 528.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 149
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    sget-object v9, Lorg/telegram/ui/ManageSpaceActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 151
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 152
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v9, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 159
    .end local v0    # "backgroundTablet":Landroid/widget/ImageView;
    .end local v1    # "launchLayout":Landroid/widget/RelativeLayout;
    .end local v2    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "shadowTablet":Landroid/widget/FrameLayout;
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v9, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 160
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v9, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 161
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    sget-object v9, Lorg/telegram/ui/ManageSpaceActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 162
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 164
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    new-array v10, v6, [Ljava/lang/Object;

    aput-object p0, v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v8

    iput v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->currentConnectionState:I

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {p0, v8, v7, v6, v7}, Lorg/telegram/ui/ManageSpaceActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ManageSpaceActivity;->needLayout()V

    .line 169
    return-void

    .line 154
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/ManageSpaceActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v9, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 167
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    invoke-direct {p0}, Lorg/telegram/ui/ManageSpaceActivity;->onFinish()V

    .line 285
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 336
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 339
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/telegram/ui/ManageSpaceActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 198
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 276
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 279
    :cond_0
    return-void
.end method

.method public onPreIme()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 2
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 375
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 381
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 291
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 294
    :cond_0
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 209
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

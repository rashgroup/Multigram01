.class public Lorg/telegram/ui/PhotoViewer;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;,
        Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;,
        Lorg/telegram/ui/PhotoViewer$RadialProgressView;,
        Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/PhotoViewer; = null

.field private static final PAGE_SPACING:I

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static final gallery_menu_caption:I = 0x8

.field private static final gallery_menu_caption_done:I = 0x9

.field private static final gallery_menu_crop:I = 0x4

.field private static final gallery_menu_delete:I = 0x6

.field private static final gallery_menu_openin:I = 0xb

.field private static final gallery_menu_painting:I = 0xc

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_send:I = 0x3

.field private static final gallery_menu_share:I = 0xa

.field private static final gallery_menu_showall:I = 0x2

.field private static final gallery_menu_tune:I = 0x7

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actvityContext:Landroid/content/Context;

.field private allowMentions:Z

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

.field private avatarsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private avatarsDialogId:I

.field private backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private canDragDown:Z

.field private canShowBottom:Z

.field private canZoom:Z

.field private captionDoneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private captionTextView:Landroid/widget/TextView;

.field private captionTextViewNew:Landroid/widget/TextView;

.field private captionTextViewOld:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changeModeAnimation:Landroid/animation/AnimatorSet;

.field private changingPage:Z

.field private checkImageView:Lorg/telegram/ui/Components/CheckBox;

.field private classGuid:I

.field private containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

.field private cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentDialogId:J

.field private currentEditMode:I

.field private currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private currentFileNames:[Ljava/lang/String;

.field private currentIndex:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentPathObject:Ljava/lang/String;

.field private currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private currentRotation:I

.field private currentThumb:Landroid/graphics/Bitmap;

.field private currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private dateTextView:Landroid/widget/TextView;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private endReached:[Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocationsSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIds:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIdsTemp:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isFirstLoading:Z

.field private isPlaying:Z

.field private isVisible:Z

.field private lastTitle:Ljava/lang/String;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private loadingMoreImages:Z

.field private maxX:F

.field private maxY:F

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mergeDialogId:J

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private nameTextView:Landroid/widget/TextView;

.field private needCaptionLayout:Z

.field private needSearchImageInArr:Z

.field private opennedFromMedia:Z

.field private paintingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private parentActivity:Landroid/app/Activity;

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private playerNeedsPrepare:Z

.field private radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private scale:F

.field private scroller:Landroid/widget/Scroller;

.field private sendPhotoType:I

.field private shareButton:Landroid/widget/ImageView;

.field private showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private totalImagesCount:I

.field private totalImagesCountMerge:I

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private tuneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoTextureView:Landroid/view/TextureView;

.field private visibleDialog:Landroid/app/AlertDialog;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    .line 294
    sput-object v1, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 295
    sput-object v1, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    .line 695
    sput-object v1, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 132
    new-instance v0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    .line 151
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 152
    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    .line 169
    new-instance v0, Lorg/telegram/ui/PhotoViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$1;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 187
    const/16 v0, 0x8

    filled-new-array {v5, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    .line 196
    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 198
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 201
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 207
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 208
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 209
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 213
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    .line 216
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 226
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    .line 229
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 233
    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 243
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 245
    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 256
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 257
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 258
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 259
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 260
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 261
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 262
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 263
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 264
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 265
    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 266
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 267
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    .line 270
    new-array v0, v5, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    .line 272
    new-array v0, v5, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    .line 277
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 578
    return-void

    .line 226
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PhotoViewer;ZIIII)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 109
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PhotoViewer;->onLayout(ZIIII)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PhotoViewer;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PhotoViewer;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionDoneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->applyCurrentEditMode()V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return v0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/PhotoViewer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object v0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p1
.end method

.method static synthetic access$7102(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    return p1
.end method

.method static synthetic access$7202(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    return p1
.end method

.method static synthetic access$7302(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    return p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/PhotoViewer;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return v0
.end method

.method static synthetic access$7402(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/PhotoViewer;F)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$7600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/PhotoViewer;FFFZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void
.end method

.method static synthetic access$7802(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    return p1
.end method

.method static synthetic access$7902(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    return p1
.end method

.method static synthetic access$800()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0
    .param p0, "x0"    # Landroid/view/animation/DecelerateInterpolator;

    .prologue
    .line 109
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8202(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    return-wide p1
.end method

.method static synthetic access$8302(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    return p1
.end method

.method static synthetic access$8400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$8402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    return v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    return-object v0
.end method

.method static synthetic access$8902(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$900()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9002(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$902(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 109
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9602(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$9800(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$9900(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    return-void
.end method

.method private animateTo(FFFZ)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z

    .prologue
    .line 4044
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZI)V

    .line 4045
    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 5
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z
    .param p5, "duration"    # I

    .prologue
    .line 4048
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 4070
    :goto_0
    return-void

    .line 4051
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 4052
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 4053
    iput p2, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 4054
    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 4055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 4056
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 4057
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string/jumbo v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4060
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4061
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4062
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$40;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$40;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4069
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 4057
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyCurrentEditMode()V
    .locals 15

    .prologue
    const/high16 v14, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v13, 0x42f00000    # 120.0f

    const/16 v5, 0x65

    const/4 v12, 0x1

    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v1, v12, :cond_5

    .line 1976
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1980
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1981
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 1982
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_4

    .line 1983
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1984
    .local v8, "object":Ljava/lang/Object;
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_6

    move-object v7, v8

    .line 1985
    check-cast v7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1986
    .local v7, "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 1987
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 1988
    if-eqz v11, :cond_1

    .line 1989
    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 1999
    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_1
    :goto_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_2

    .line 2000
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    .line 2001
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2002
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    .line 2003
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v2

    invoke-virtual {v1, v2, v12}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 2004
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 2007
    :cond_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v1, v12, :cond_3

    .line 2008
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 2009
    .local v9, "scaleX":F
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 2010
    .local v10, "scaleY":F
    cmpl-float v1, v9, v10

    if-lez v1, :cond_7

    .end local v9    # "scaleX":F
    :goto_2
    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 2011
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v2

    div-float/2addr v2, v14

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 2012
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v2

    div-float/2addr v2, v14

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 2013
    iput-boolean v12, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 2015
    .end local v10    # "scaleY":F
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2016
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v12}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 2017
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2018
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2021
    .end local v8    # "object":Ljava/lang/Object;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    return-void

    .line 1977
    :cond_5
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1978
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 1991
    .restart local v8    # "object":Ljava/lang/Object;
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_6
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_1

    move-object v7, v8

    .line 1992
    check-cast v7, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1993
    .local v7, "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 1994
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 1995
    if-eqz v11, :cond_1

    .line 1996
    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    goto/16 :goto_1

    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_7
    move v9, v10

    .line 2010
    goto/16 :goto_2
.end method

.method private checkAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3176
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_1

    .line 3177
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 3178
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3179
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3180
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3182
    :cond_0
    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 3185
    :cond_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkMinMax(Z)V
    .locals 4
    .param p1, "zoom"    # Z

    .prologue
    .line 4009
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4010
    .local v0, "moveToX":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4011
    .local v1, "moveToY":F
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4012
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 4013
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 4017
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 4018
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4022
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 4023
    return-void

    .line 4014
    :cond_2
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 4015
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_0

    .line 4019
    :cond_3
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 4020
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_1
.end method

.method private checkProgress(IZ)V
    .locals 13
    .param p1, "a"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2982
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_10

    .line 2983
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 2984
    .local v1, "index":I
    if-ne p1, v7, :cond_7

    .line 2985
    add-int/lit8 v1, v1, 0x1

    .line 2989
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2990
    .local v0, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 2991
    .local v2, "isVideo":Z
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_8

    .line 2992
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2993
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2994
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2995
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2996
    const/4 v0, 0x0

    .line 2999
    :cond_1
    if-nez v0, :cond_2

    .line 3000
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 3002
    :cond_2
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    .line 3012
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    :goto_1
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3013
    if-eqz v2, :cond_b

    .line 3014
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v12, p2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 3034
    :goto_2
    if-nez p1, :cond_6

    .line 3035
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v6, v6, v8

    if-eqz v6, :cond_5

    if-nez v2, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, v8

    # getter for: Lorg/telegram/ui/PhotoViewer$RadialProgressView;->backgroundState:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->access$6800(Lorg/telegram/ui/PhotoViewer$RadialProgressView;)I

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v8, v7

    :cond_5
    iput-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 3040
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "isVideo":Z
    :cond_6
    :goto_3
    return-void

    .line 2986
    .restart local v1    # "index":I
    :cond_7
    if-ne p1, v11, :cond_0

    .line 2987
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3003
    .restart local v0    # "f":Ljava/io/File;
    .restart local v2    # "isVideo":Z
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_a

    .line 3004
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3005
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v6, :cond_9

    move v6, v7

    :goto_4
    invoke-static {v3, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 3006
    goto :goto_1

    :cond_9
    move v6, v8

    .line 3005
    goto :goto_4

    .line 3006
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 3007
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3008
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3009
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_1

    .line 3016
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v10, p2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_2

    .line 3019
    :cond_c
    if-eqz v2, :cond_f

    .line 3020
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 3021
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v11, v8}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 3028
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 3029
    .local v5, "progress":Ljava/lang/Float;
    if-nez v5, :cond_d

    .line 3030
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3032
    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6, v9, v8}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setProgress(FZ)V

    goto/16 :goto_2

    .line 3023
    .end local v5    # "progress":Ljava/lang/Float;
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_5

    .line 3026
    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v8, p2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_5

    .line 3038
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "isVideo":Z
    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v10, p2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_3
.end method

.method private closeCaptionEnter(Z)V
    .locals 7
    .param p1, "apply"    # Z

    .prologue
    const/high16 v6, 0x43c80000    # 400.0f

    const/4 v5, 0x0

    .line 1898
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1899
    .local v1, "object":Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 1900
    instance-of v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_5

    move-object v2, v1

    .line 1901
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 1906
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1907
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    .line 1908
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 1909
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 1912
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1913
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1915
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1916
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 1917
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1919
    :cond_2
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_3

    .line 1920
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 1922
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionDoneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1923
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 1925
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1926
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1927
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1929
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1930
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1931
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1933
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1934
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1935
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    .line 1938
    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    .line 1939
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 1940
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1941
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 1945
    :goto_1
    return-void

    .line 1902
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    instance-of v2, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1903
    check-cast v2, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1943
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    goto :goto_1
.end method

.method private getAdditionX()I
    .locals 1

    .prologue
    .line 3746
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_0

    .line 3747
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 3749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdditionY()I
    .locals 1

    .prologue
    .line 3753
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_0

    .line 3754
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 3756
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContainerViewHeight()I
    .locals 1

    .prologue
    .line 3772
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewHeight(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 3777
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v0, v1, v2

    .line 3778
    .local v0, "height":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3779
    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3783
    :cond_0
    :goto_0
    return v0

    .line 3780
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3781
    const/high16 v1, 0x431a0000    # 154.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .prologue
    .line 3760
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 3764
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    .line 3765
    .local v0, "width":I
    if-eqz p1, :cond_0

    .line 3766
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3768
    :cond_0
    return v0
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 7
    .param p1, "index"    # I
    .param p2, "size"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2452
    if-gez p1, :cond_1

    .line 2500
    :cond_0
    :goto_0
    return-object v2

    .line 2455
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2456
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 2459
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v5

    .line 2460
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 2461
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2462
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 2465
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2466
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v3, :cond_6

    .line 2467
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v3, :cond_3

    .line 2468
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 2470
    :cond_3
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2471
    .local v1, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_5

    .line 2472
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 2473
    aget v2, p2, v5

    if-nez v2, :cond_4

    .line 2474
    aput v6, p2, v5

    .line 2476
    :cond_4
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 2478
    :cond_5
    aput v6, p2, v5

    goto :goto_0

    .line 2481
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_6
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_b

    .line 2482
    :cond_8
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2483
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_a

    .line 2484
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 2485
    aget v2, p2, v5

    if-nez v2, :cond_9

    .line 2486
    aput v6, p2, v5

    .line 2488
    :cond_9
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0

    .line 2490
    :cond_a
    aput v6, p2, v5

    goto/16 :goto_0

    .line 2492
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_0

    .line 2493
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 2494
    aget v2, p2, v5

    if-nez v2, :cond_c

    .line 2495
    aput v6, p2, v5

    .line 2497
    :cond_c
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 2412
    if-gez p1, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return-object v4

    .line 2415
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2416
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2417
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 2420
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2421
    .local v1, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2422
    .end local v1    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2423
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 2426
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2428
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2429
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 2432
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2433
    .local v2, "object":Ljava/lang/Object;
    instance-of v5, v2, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 2434
    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2435
    .local v3, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_5

    .line 2436
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2437
    :cond_5
    iget v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 2438
    new-instance v0, Ljava/io/File;

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2439
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2440
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2442
    :cond_6
    const-string/jumbo v4, ""

    iput-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 2445
    .end local v0    # "file":Ljava/io/File;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v6, "jpg"

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getInstance()Lorg/telegram/ui/PhotoViewer;
    .locals 4

    .prologue
    .line 698
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 699
    .local v0, "localInstance":Lorg/telegram/ui/PhotoViewer;
    if-nez v0, :cond_1

    .line 700
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 701
    :try_start_0
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 702
    if-nez v0, :cond_0

    .line 703
    new-instance v1, Lorg/telegram/ui/PhotoViewer;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .local v1, "localInstance":Lorg/telegram/ui/PhotoViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 705
    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 707
    :cond_1
    return-object v0

    .line 705
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    goto :goto_0
.end method

.method private goToNext()V
    .locals 5

    .prologue
    .line 4026
    const/4 v0, 0x0

    .line 4027
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 4028
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 4030
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 4031
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 4032
    return-void
.end method

.method private goToPrev()V
    .locals 5

    .prologue
    .line 4035
    const/4 v0, 0x0

    .line 4036
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 4037
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 4039
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 4040
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 4041
    return-void
.end method

.method private onActionClick(Z)V
    .locals 6
    .param p1, "download"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4335
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v4

    if-nez v2, :cond_1

    .line 4368
    :cond_0
    :goto_0
    return-void

    .line 4338
    :cond_1
    const/4 v0, 0x0

    .line 4339
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 4340
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4341
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4342
    const/4 v0, 0x0

    .line 4345
    :cond_2
    if-nez v0, :cond_3

    .line 4346
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 4347
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4348
    const/4 v0, 0x0

    .line 4351
    :cond_3
    if-nez v0, :cond_5

    .line 4352
    if-eqz p1, :cond_0

    .line 4353
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4354
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    .line 4356
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    .line 4360
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_6

    .line 4361
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;Z)V

    goto :goto_0

    .line 4363
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4364
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4365
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 4083
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 4309
    :cond_0
    :goto_0
    return-void

    .line 4090
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    .line 4092
    .local v5, "aty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    if-eqz v31, :cond_16

    .line 4093
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_2

    .line 4094
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4097
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v27, v31, v32

    .line 4098
    .local v27, "ts":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v28, v31, v32

    .line 4099
    .local v28, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v29, v31, v32

    .line 4100
    .local v29, "ty":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 4101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 4104
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_4

    .line 4105
    move/from16 v5, v29

    .line 4107
    :cond_4
    move/from16 v8, v27

    .line 4108
    .local v8, "currentScale":F
    move/from16 v10, v29

    .line 4109
    .local v10, "currentTranslationY":F
    move/from16 v9, v28

    .line 4110
    .local v9, "currentTranslationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4150
    .end local v27    # "ts":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_1f

    const/high16 v31, -0x40800000    # -1.0f

    cmpl-float v31, v5, v31

    if-eqz v31, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_1f

    .line 4151
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40800000    # 4.0f

    div-float v15, v31, v32

    .line 4152
    .local v15, "maxValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v31, v0

    const/high16 v32, 0x42fe0000    # 127.0f

    const/high16 v33, 0x437f0000    # 255.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v35

    move/from16 v0, v35

    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v35

    div-float v35, v35, v15

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 4157
    .end local v15    # "maxValue":F
    :goto_2
    const/16 v24, 0x0

    .line 4158
    .local v24, "sideImage":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_7

    .line 4159
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    move/from16 v31, v0

    if-nez v31, :cond_6

    .line 4160
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    cmpl-float v31, v9, v31

    if-lez v31, :cond_20

    .line 4161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    .line 4166
    :cond_6
    :goto_3
    if-eqz v24, :cond_21

    const/16 v31, 0x1

    :goto_4
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 4169
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 4170
    move/from16 v25, v9

    .line 4171
    .local v25, "tranlateX":F
    const/16 v21, 0x0

    .line 4172
    .local v21, "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 4173
    .local v4, "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v31, v0

    cmpg-float v31, v25, v31

    if-gez v31, :cond_8

    .line 4174
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    sub-float v32, v32, v25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 4175
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v4

    const v32, 0x3e99999a    # 0.3f

    mul-float v21, v31, v32

    .line 4176
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    sget v32, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    div-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    .line 4179
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 4180
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4181
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    sget v32, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    div-int/lit8 v32, v32, 0x2

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v25

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4183
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v21

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4184
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 4185
    .local v7, "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 4187
    .local v6, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 4188
    .local v22, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 4189
    .local v23, "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_22

    move/from16 v18, v23

    .line 4190
    .local v18, "scale":F
    :goto_5
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 4191
    .local v30, "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 4193
    .local v14, "height":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4194
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 4195
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4199
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4200
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    sget v32, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setScale(F)V

    .line 4203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setAlpha(F)V

    .line 4204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4205
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4208
    .end local v4    # "alpha":F
    .end local v21    # "scaleDiff":F
    .end local v25    # "tranlateX":F
    :cond_a
    move/from16 v26, v9

    .line 4209
    .local v26, "translateX":F
    const/16 v21, 0x0

    .line 4210
    .restart local v21    # "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 4211
    .restart local v4    # "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_b

    .line 4212
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    sub-float v32, v26, v32

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 4213
    const v31, 0x3e99999a    # 0.3f

    mul-float v21, v4, v31

    .line 4214
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v4, v31, v4

    .line 4215
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v26, v0

    .line 4217
    :cond_b
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x10

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getVisibility()I

    move-result v31

    if-nez v31, :cond_23

    const/4 v11, 0x1

    .line 4218
    .local v11, "drawTextureView":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 4219
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4220
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionX()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionY()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4221
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4222
    sub-float v31, v8, v21

    sub-float v32, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4224
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 4225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v8, v1, v10}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmapParams(FFF)V

    .line 4228
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 4229
    .restart local v7    # "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 4230
    .restart local v6    # "bitmapHeight":I
    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 4231
    int-to-float v0, v7

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v19, v31, v32

    .line 4232
    .local v19, "scale1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v20, v31, v32

    .line 4233
    .local v20, "scale2":F
    sub-float v31, v19, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const v32, 0x3c23d70a    # 0.01f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_d

    .line 4234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v7

    .line 4235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v6

    .line 4239
    .end local v19    # "scale1":F
    .end local v20    # "scale2":F
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 4240
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 4241
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_24

    move/from16 v18, v23

    .line 4242
    .restart local v18    # "scale":F
    :goto_7
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 4243
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 4245
    .restart local v14    # "height":I
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_f

    .line 4246
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    neg-int v0, v14

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4250
    :cond_f
    if-eqz v11, :cond_11

    .line 4251
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-nez v31, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 4252
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 4253
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 4254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 4256
    :cond_10
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    mul-float v32, v32, v4

    invoke-virtual/range {v31 .. v32}, Landroid/view/TextureView;->setAlpha(F)V

    .line 4258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpg-float v31, v31, v32

    if-gez v31, :cond_11

    .line 4260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 4261
    .local v16, "newUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    move-wide/from16 v32, v0

    sub-long v12, v16, v32

    .line 4262
    .local v12, "dt":J
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 4263
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    long-to-float v0, v12

    move/from16 v32, v0

    const/high16 v33, 0x43960000    # 300.0f

    div-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 4264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4265
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_11

    .line 4266
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 4270
    .end local v12    # "dt":J
    .end local v16    # "newUpdateTime":J
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4272
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_12
    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v31

    if-eqz v31, :cond_14

    .line 4273
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4274
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setScale(F)V

    .line 4276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setAlpha(F)V

    .line 4277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4278
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4281
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 4282
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_15

    .line 4283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4284
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    sget v32, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v31, v31, v9

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4286
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 4287
    .restart local v7    # "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 4289
    .restart local v6    # "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 4290
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 4291
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_25

    move/from16 v18, v23

    .line 4292
    .restart local v18    # "scale":F
    :goto_8
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 4293
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 4295
    .restart local v14    # "height":I
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4296
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 4297
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4298
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4301
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4302
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4303
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    sget v32, Lorg/telegram/ui/PhotoViewer;->PAGE_SPACING:I

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setScale(F)V

    .line 4305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setAlpha(F)V

    .line 4306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 4112
    .end local v4    # "alpha":F
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    .end local v11    # "drawTextureView":Z
    .end local v21    # "scaleDiff":F
    .end local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    .end local v26    # "translateX":F
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_18

    .line 4113
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4114
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4115
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 4116
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 4117
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 4118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 4120
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4121
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 4123
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_1b

    .line 4124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_19

    .line 4126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getCurrX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4128
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minY:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_1a

    .line 4129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getCurrY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4131
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4134
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    if-eqz v31, :cond_1d

    .line 4135
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 4136
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 4140
    :cond_1c
    :goto_9
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 4142
    :cond_1d
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 4143
    .restart local v8    # "currentScale":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4144
    .restart local v10    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4145
    .restart local v9    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    .line 4146
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    goto/16 :goto_1

    .line 4137
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 4138
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_9

    .line 4154
    .restart local v8    # "currentScale":F
    .restart local v9    # "currentTranslationX":F
    .restart local v10    # "currentTranslationY":F
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 4162
    .restart local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    cmpg-float v31, v9, v31

    if-gez v31, :cond_6

    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    goto/16 :goto_3

    .line 4166
    :cond_21
    const/16 v31, 0x0

    goto/16 :goto_4

    .restart local v4    # "alpha":F
    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v21    # "scaleDiff":F
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    .restart local v25    # "tranlateX":F
    :cond_22
    move/from16 v18, v22

    .line 4189
    goto/16 :goto_5

    .line 4217
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v25    # "tranlateX":F
    .restart local v26    # "translateX":F
    :cond_23
    const/4 v11, 0x0

    goto/16 :goto_6

    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v11    # "drawTextureView":Z
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    :cond_24
    move/from16 v18, v22

    .line 4241
    goto/16 :goto_7

    :cond_25
    move/from16 v18, v22

    .line 4291
    goto/16 :goto_8
.end method

.method private onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4313
    if-eqz p1, :cond_0

    .line 4314
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 4315
    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4316
    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4317
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4319
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_0

    .line 4320
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$41;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 4332
    :cond_0
    return-void
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 6
    .param p1, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3648
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 3649
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 3650
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3651
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3652
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3653
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 3654
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 3655
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 3656
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 3658
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 3659
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 3660
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 3658
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3663
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3664
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3665
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3666
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$38;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$38;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    .line 3680
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_3

    .line 3681
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willHidePhotoViewer()V

    .line 3683
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 3684
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 3685
    if-eqz p1, :cond_4

    .line 3686
    iget-object v1, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 3688
    :cond_4
    return-void
.end method

.method private onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 13
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2511
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    .line 2512
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2513
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2514
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 2515
    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 2516
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 2517
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 2518
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 2519
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 2520
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 2521
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 2522
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 2523
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 2524
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 2525
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 2526
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 2527
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v4, 0x1

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    aput-boolean v2, v3, v4

    .line 2528
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 2529
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 2530
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 2531
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2532
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2533
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2534
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2535
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2536
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    const/4 v2, 0x2

    if-ge v10, v2, :cond_1

    .line 2537
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2538
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2536
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2527
    .end local v10    # "a":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2540
    .restart local v10    # "a":I
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2541
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2542
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setPadding(IIII)V

    .line 2543
    if-eqz p6, :cond_5

    move-object/from16 v0, p6

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_2
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 2544
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2545
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2546
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2547
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2548
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2549
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2550
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 2551
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayout;->setTranslationY(F)V

    .line 2552
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setAlpha(F)V

    .line 2553
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayout;->setAlpha(F)V

    .line 2554
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2555
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 2556
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2557
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2558
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2560
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2562
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionDoneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2563
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 2564
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2565
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 2566
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2567
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2568
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-eqz v2, :cond_2

    .line 2569
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 2571
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v2, :cond_3

    .line 2572
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->setVisibility(I)V

    .line 2575
    :cond_3
    const/4 v10, 0x0

    :goto_3
    const/4 v2, 0x3

    if-ge v10, v2, :cond_6

    .line 2576
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v2, v2, v10

    if-eqz v2, :cond_4

    .line 2577
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v2, v2, v10

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 2575
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2543
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2581
    :cond_6
    if-eqz p1, :cond_d

    if-nez p3, :cond_d

    .line 2582
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_b

    .line 2584
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 2592
    :cond_7
    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 2661
    :cond_8
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_9

    .line 2662
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    if-nez v2, :cond_20

    .line 2663
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 2664
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 2665
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 2671
    :cond_9
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2672
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 2674
    :cond_a
    return-void

    .line 2585
    :cond_b
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_7

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_c

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_7

    .line 2586
    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 2587
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2590
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_4

    .line 2593
    :cond_d
    if-eqz p2, :cond_11

    .line 2594
    move-object/from16 v0, p6

    iget v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 2595
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2597
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2598
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2599
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2600
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 2601
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2605
    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 2606
    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_5

    .line 2598
    :cond_f
    const/16 v2, 0x8

    goto :goto_7

    .line 2603
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_8

    .line 2607
    :cond_11
    if-eqz p3, :cond_15

    .line 2608
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2609
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 2610
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2611
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-nez v2, :cond_12

    .line 2612
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2613
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v2, p5

    add-int/lit8 p5, v2, -0x1

    .line 2615
    :cond_12
    const/4 v10, 0x0

    :goto_9
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_14

    .line 2616
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 2617
    .local v11, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_13

    const/4 v2, 0x0

    :goto_a
    aget-object v2, v3, v2

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2615
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2617
    :cond_13
    const/4 v2, 0x1

    goto :goto_a

    .line 2619
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_14
    const/4 v2, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_5

    .line 2620
    :cond_15
    if-eqz p4, :cond_8

    .line 2621
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_16

    .line 2622
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2624
    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2625
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2626
    const/4 v2, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 2627
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 2628
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2629
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 2630
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 2631
    .local v12, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    instance-of v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-nez v2, :cond_17

    instance-of v2, v12, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_1c

    check-cast v12, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local v12    # "obj":Ljava/lang/Object;
    iget v2, v12, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v2, :cond_1c

    :cond_17
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2632
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_19

    .line 2633
    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 2634
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    .line 2635
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 2636
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2638
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2640
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 2641
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    :goto_d
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 2642
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_19

    .line 2643
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    .line 2646
    :cond_19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1a

    .line 2647
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2650
    :cond_1a
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 2651
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2652
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 2653
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    :goto_e
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 2654
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_1b

    .line 2655
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    .line 2658
    :cond_1b
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    goto/16 :goto_5

    .line 2631
    :cond_1c
    const/16 v2, 0x8

    goto/16 :goto_b

    .line 2634
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 2641
    :cond_1e
    const/4 v2, 0x0

    goto :goto_d

    .line 2653
    :cond_1f
    const/4 v2, 0x0

    goto :goto_e

    .line 2667
    :cond_20
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v2, :cond_9

    .line 2668
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_6
.end method

.method private onSharePressed()V
    .locals 8

    .prologue
    .line 946
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v5, :cond_0

    .line 984
    :goto_0
    return-void

    .line 950
    :cond_0
    const/4 v2, 0x0

    .line 951
    .local v2, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 953
    .local v4, "isVideo":Z
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_2

    .line 954
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    .line 959
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 964
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 965
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 966
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 967
    const-string/jumbo v5, "video/mp4"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    :goto_2
    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 973
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v6, "ShareFile"

    const v7, 0x7f070472

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 981
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 960
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_1

    .line 961
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 969
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v5, "image/jpeg"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 975
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, "AppName"

    const v6, 0x7f07009a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 977
    const-string/jumbo v5, "OK"

    const v6, 0x7f07039f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 978
    const-string/jumbo v5, "PleaseDownload"

    const v6, 0x7f0703ed

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 979
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Landroid/app/AlertDialog$Builder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3787
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v9, :cond_0

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 3788
    :cond_0
    const/4 v9, 0x0

    .line 4005
    :goto_0
    return v9

    .line 3791
    :cond_1
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 3792
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->onTouch(Landroid/view/MotionEvent;)V

    .line 3793
    const/4 v9, 0x1

    goto :goto_0

    .line 3796
    :cond_2
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 3797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 3798
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/PhotoCropView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3799
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3800
    const/4 v9, 0x1

    goto :goto_0

    .line 3803
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/PhotoCropView;->onTouch(Landroid/view/MotionEvent;)Z

    .line 3807
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3808
    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 3811
    :cond_6
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3812
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    if-eqz v9, :cond_7

    .line 3813
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 3814
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 3815
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 3816
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    .line 3817
    const/4 v9, 0x1

    goto :goto_0

    .line 3821
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_d

    .line 3822
    :cond_8
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 3823
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 3825
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 3826
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_a

    .line 3827
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3829
    :cond_a
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_b

    .line 3830
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 3831
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 3832
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 3833
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 3834
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 3835
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 3836
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 3837
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 3838
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 3839
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 3840
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 4005
    :cond_b
    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3842
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 3843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 3844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 3845
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 3846
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 3847
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 3848
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 3852
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_24

    .line 3853
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 3854
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 3856
    :cond_e
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_f

    .line 3857
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 3858
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    mul-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 3859
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 3860
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3861
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3862
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 3863
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 3864
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_10

    .line 3865
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3867
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3868
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 3869
    .local v3, "dy":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_11

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_12

    .line 3870
    :cond_11
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 3872
    :cond_12
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    instance-of v9, v9, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    if-nez v9, :cond_15

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    if-eqz v9, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_15

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_15

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_15

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_15

    .line 3873
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 3874
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 3875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 3876
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v9, :cond_14

    .line 3877
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 3882
    :cond_13
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3878
    :cond_14
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PickerBottomLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_13

    .line 3879
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 3880
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    goto :goto_2

    .line 3883
    :cond_15
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_16

    .line 3884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3885
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 3886
    :cond_16
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    if-nez v9, :cond_23

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_23

    .line 3887
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 3888
    .local v4, "moveDx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 3889
    .local v5, "moveDy":F
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_17

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_18

    :cond_17
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_b

    .line 3890
    :cond_18
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_19

    .line 3891
    const/4 v4, 0x0

    .line 3892
    const/4 v5, 0x0

    .line 3893
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 3894
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 3897
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 3898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 3899
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3900
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1a

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_1b

    :cond_1a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1c

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 3901
    :cond_1b
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v4, v9

    .line 3903
    :cond_1c
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_21

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_21

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_21

    .line 3904
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_20

    .line 3905
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3906
    const/4 v5, 0x0

    .line 3917
    :cond_1d
    :goto_3
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v9, v4

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 3918
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1e

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v9, :cond_1f

    .line 3919
    :cond_1e
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3922
    :cond_1f
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 3907
    :cond_20
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1d

    .line 3908
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3909
    const/4 v5, 0x0

    goto :goto_3

    .line 3912
    :cond_21
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_22

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1d

    .line 3913
    :cond_22
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v5, v9

    goto :goto_3

    .line 3925
    .end local v4    # "moveDx":F
    .end local v5    # "moveDy":F
    :cond_23
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 3926
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 3927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    goto/16 :goto_1

    .line 3930
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_b

    .line 3931
    :cond_25
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_26

    .line 3932
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V

    .line 3934
    :cond_26
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_2d

    .line 3935
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 3936
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_27

    .line 3937
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3938
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 3957
    :goto_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    goto/16 :goto_1

    .line 3939
    :cond_27
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2c

    .line 3940
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v0, v9, v10

    .line 3941
    .local v0, "atx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v1, v9, v10

    .line 3942
    .local v1, "aty":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3943
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v0, v9

    if-gez v9, :cond_2a

    .line 3944
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 3948
    :cond_28
    :goto_5
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_2b

    .line 3949
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 3953
    :cond_29
    :goto_6
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x1

    invoke-direct {p0, v9, v0, v1, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_4

    .line 3945
    :cond_2a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v0, v9

    if-lez v9, :cond_28

    .line 3946
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_5

    .line 3950
    :cond_2b
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_29

    .line 3951
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_6

    .line 3955
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_2c
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    goto :goto_4

    .line 3958
    :cond_2d
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_30

    .line 3959
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2e

    .line 3960
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 3968
    :goto_7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    goto/16 :goto_1

    .line 3962
    :cond_2e
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PickerBottomLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2f

    .line 3963
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 3964
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    .line 3966
    :cond_2f
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_7

    .line 3969
    :cond_30
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-eqz v9, :cond_b

    .line 3970
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 3971
    .local v6, "moveToX":F
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3972
    .local v7, "moveToY":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3973
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 3974
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 3975
    const/4 v8, 0x0

    .line 3976
    .local v8, "velocity":F
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_31

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_31

    .line 3977
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 3978
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 3981
    :cond_31
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_35

    .line 3982
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_32

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_33

    :cond_32
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 3983
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToNext()V

    .line 3984
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3986
    :cond_33
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_34

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_35

    :cond_34
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 3987
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToPrev()V

    .line 3988
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3992
    :cond_35
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_38

    .line 3993
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 3997
    :cond_36
    :goto_8
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_39

    .line 3998
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4002
    :cond_37
    :goto_9
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v7, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    .line 3994
    :cond_38
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_36

    .line 3995
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_8

    .line 3999
    :cond_39
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_37

    .line 4000
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_9
.end method

.method private preparePlayer(Ljava/io/File;Z)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "playWhenReady"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1736
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 1855
    :goto_0
    return-void

    .line 1739
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 1740
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v3, :cond_1

    .line 1741
    new-instance v3, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    .line 1742
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->setVisibility(I)V

    .line 1743
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x11

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1745
    new-instance v3, Landroid/view/TextureView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 1746
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1747
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PhotoViewer$19;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1776
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    .line 1779
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 1780
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setAlpha(F)V

    .line 1781
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v3, :cond_3

    .line 1782
    new-instance v3, Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v6, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;)V

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1783
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$20;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PhotoViewer$20;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->addListener(Lorg/telegram/ui/Components/VideoPlayer$Listener;)V

    .line 1827
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_7

    .line 1828
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 1829
    .local v0, "duration":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 1830
    const-wide/16 v0, 0x0

    .line 1835
    :cond_2
    :goto_1
    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 1836
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string/jumbo v4, "%02d:%02d / %02d:%02d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v8, 0x3c

    div-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x3c

    rem-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x3c

    div-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-wide/16 v8, 0x3c

    rem-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1838
    .local v2, "size":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->playerNeedsPrepare:Z

    .line 1840
    .end local v0    # "duration":J
    .end local v2    # "size":I
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->playerNeedsPrepare:Z

    if-eqz v3, :cond_4

    .line 1841
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->prepare()V

    .line 1842
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->playerNeedsPrepare:Z

    .line 1844
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    .line 1845
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1846
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1847
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1848
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1849
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1851
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1852
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Landroid/view/Surface;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1854
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto/16 :goto_0

    .line 1833
    :cond_7
    const-wide/16 v0, 0x0

    .restart local v0    # "duration":J
    goto/16 :goto_1
.end method

.method private redraw(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 3691
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 3692
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v0, :cond_0

    .line 3693
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 3694
    new-instance v0, Lorg/telegram/ui/PhotoViewer$39;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$39;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3702
    :cond_0
    return-void
.end method

.method private releasePlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->release()V

    .line 1860
    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1862
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    .line 1863
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 1864
    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    .line 1866
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 1867
    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 1869
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    if-eqz v0, :cond_3

    .line 1870
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    .line 1871
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f020194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1874
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1877
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1879
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1881
    :cond_4
    return-void
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "caption"    # Ljava/lang/CharSequence;

    .prologue
    .line 2956
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2957
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    .line 2958
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 2959
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    .line 2961
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v2, 0x7f020211

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2962
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2963
    .local v0, "str":Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2964
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2965
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2966
    new-instance v1, Lorg/telegram/ui/PhotoViewer$29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$29;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2979
    .end local v0    # "str":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 2965
    .restart local v0    # "str":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2975
    .end local v0    # "str":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v2, 0x7f020210

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2976
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2977
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setImageIndex(IZ)V
    .locals 28
    .param p1, "index"    # I
    .param p2, "init"    # Z

    .prologue
    .line 2685
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v2, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2688
    :cond_1
    if-nez p2, :cond_2

    .line 2689
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 2691
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2693
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2694
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    .line 2695
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v22, v0

    .line 2696
    .local v22, "prevIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 2697
    const/16 v17, 0x0

    .line 2698
    .local v17, "isVideo":Z
    const/16 v23, 0x0

    .line 2700
    .local v23, "sameImage":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2701
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 2702
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2705
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MessageObject;

    .line 2706
    .local v19, "newMessageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_c

    const/16 v23, 0x1

    .line 2707
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v17

    .line 2709
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2714
    :goto_2
    if-eqz v17, :cond_e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_e

    .line 2715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2719
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2720
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v27

    .line 2721
    .local v27, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v27, :cond_f

    .line 2722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2734
    .end local v27    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 2735
    .local v14, "date":J
    const-string/jumbo v2, "formatDateAtTime"

    const v3, 0x7f070536

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2736
    .local v13, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_12

    if-eqz v17, :cond_12

    .line 2737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2741
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 2742
    .local v11, "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_13

    .line 2745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2750
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachGif"

    const v4, 0x7f0700bc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2866
    .end local v11    # "caption":Ljava/lang/CharSequence;
    .end local v13    # "dateString":Ljava/lang/String;
    .end local v14    # "date":J
    .end local v19    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_7

    .line 2867
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_35

    .line 2868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2873
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .line 2874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_8

    .line 2875
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_36

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2882
    :cond_8
    :goto_8
    if-nez v23, :cond_b

    .line 2883
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 2884
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 2885
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 2886
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 2887
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 2888
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 2889
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 2890
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 2891
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 2892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 2893
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    if-eqz v2, :cond_9

    .line 2894
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->setVisibility(I)V

    .line 2896
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 2898
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 2899
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 2900
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 2901
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 2902
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 2903
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 2904
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 2905
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 2906
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 2907
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 2908
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 2909
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 2910
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 2911
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 2912
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 2913
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_37

    if-nez v17, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/PhotoViewer$RadialProgressView;->backgroundState:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->access$6800(Lorg/telegram/ui/PhotoViewer$RadialProgressView;)I

    move-result v2

    if-eqz v2, :cond_37

    :cond_a
    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 2914
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 2917
    :cond_b
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_38

    .line 2918
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    .line 2920
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_a
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 2921
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 2920
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 2706
    .end local v10    # "a":I
    .restart local v19    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 2712
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_2

    .line 2717
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    .line 2724
    .restart local v27    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2727
    .end local v27    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 2728
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v12, :cond_11

    .line 2729
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2731
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2739
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v13    # "dateString":Ljava/lang/String;
    .restart local v14    # "date":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2753
    .restart local v11    # "caption":Ljava/lang/CharSequence;
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v2, v3

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-nez v2, :cond_1e

    .line 2754
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_19

    .line 2755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    if-le v2, v3, :cond_15

    .line 2756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v6, 0x0

    .line 2757
    .local v6, "loadFromMaxId":I
    :goto_b
    const/16 v18, 0x0

    .line 2758
    .local v18, "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v18

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    .line 2759
    const/16 v18, 0x1

    .line 2760
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    .line 2761
    const/4 v6, 0x0

    .line 2765
    :cond_14
    if-nez v18, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_c
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 2766
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 2768
    .end local v6    # "loadFromMaxId":I
    .end local v18    # "loadIndex":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0703a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2792
    :cond_16
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v2, :cond_20

    .line 2793
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2794
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2795
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_6

    .line 2756
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_b

    .line 2765
    .restart local v6    # "loadFromMaxId":I
    .restart local v18    # "loadIndex":I
    :cond_18
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto/16 :goto_c

    .line 2770
    .end local v6    # "loadFromMaxId":I
    .end local v18    # "loadIndex":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1b

    .line 2771
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v6, 0x0

    .line 2772
    .restart local v6    # "loadFromMaxId":I
    :goto_e
    const/16 v18, 0x0

    .line 2773
    .restart local v18    # "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v18

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 2774
    const/16 v18, 0x1

    .line 2775
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 2776
    const/4 v6, 0x0

    .line 2780
    :cond_1a
    if-nez v18, :cond_1d

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_f
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 2781
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 2783
    .end local v6    # "loadFromMaxId":I
    .end local v18    # "loadIndex":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0703a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2771
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_e

    .line 2780
    .restart local v6    # "loadFromMaxId":I
    .restart local v18    # "loadIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_f

    .line 2785
    .end local v6    # "loadFromMaxId":I
    .end local v18    # "loadIndex":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_16

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2787
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachVideo"

    const v4, 0x7f0700c1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2789
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachPhoto"

    const v4, 0x7f0700bf

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2797
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2798
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_23

    .line 2800
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_6

    .line 2798
    :cond_22
    const/16 v2, 0x8

    goto :goto_10

    .line 2802
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_6

    .line 2806
    .end local v11    # "caption":Ljava/lang/CharSequence;
    .end local v13    # "dateString":Ljava/lang/String;
    .end local v14    # "date":J
    .end local v19    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2809
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2810
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2814
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v21, v0

    .line 2815
    .local v21, "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-ltz p1, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_27

    .line 2816
    :cond_25
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 2812
    .end local v21    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_11

    .line 2819
    .restart local v21    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2820
    if-eqz v21, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_28

    move-object/from16 v0, v21

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_28

    move-object/from16 v0, v21

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    .line 2821
    const/16 v23, 0x1

    .line 2823
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0703a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2825
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2b

    .line 2827
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_6

    .line 2825
    :cond_2a
    const/16 v2, 0x8

    goto :goto_12

    .line 2829
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_6

    .line 2831
    .end local v21    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 2833
    .local v20, "object":Ljava/lang/Object;
    if-ltz p1, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2e

    .line 2834
    :cond_2d
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 2837
    :cond_2e
    const/16 v16, 0x0

    .line 2838
    .local v16, "fromCamera":Z
    const/4 v11, 0x0

    .line 2839
    .restart local v11    # "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_32

    move-object/from16 v2, v20

    .line 2840
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    move-object/from16 v2, v20

    .line 2841
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    if-nez v2, :cond_31

    move-object/from16 v2, v20

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-wide v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    const/16 v16, 0x1

    :goto_13
    move-object/from16 v2, v20

    .line 2842
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v11, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 2852
    :cond_2f
    :goto_14
    if-eqz v16, :cond_34

    .line 2853
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachPhoto"

    const v4, 0x7f0700bf

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2857
    :goto_15
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_30

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 2861
    :cond_30
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 2862
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2841
    :cond_31
    const/16 v16, 0x0

    goto :goto_13

    .line 2843
    :cond_32
    move-object/from16 v0, v20

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_2f

    move-object/from16 v24, v20

    .line 2844
    check-cast v24, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2845
    .local v24, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_33

    .line 2846
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 2850
    :goto_16
    move-object/from16 v0, v24

    iget-object v11, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_14

    .line 2848
    :cond_33
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto :goto_16

    .line 2855
    .end local v24    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0703a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 2870
    .end local v11    # "caption":Ljava/lang/CharSequence;
    .end local v16    # "fromCamera":Z
    .end local v20    # "object":Ljava/lang/Object;
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_7

    .line 2878
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_8

    .line 2913
    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 2924
    :cond_38
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 2925
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v22

    if-le v0, v2, :cond_39

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    .line 2927
    .local v25, "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2928
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2929
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2931
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x0

    aget-object v26, v2, v3

    .line 2932
    .local v26, "tempProgress":Lorg/telegram/ui/PhotoViewer$RadialProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 2933
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x2

    aput-object v26, v2, v3

    .line 2934
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 2936
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 2937
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    .line 2938
    .end local v25    # "temp":Lorg/telegram/messenger/ImageReceiver;
    .end local v26    # "tempProgress":Lorg/telegram/ui/PhotoViewer$RadialProgressView;
    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_0

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    .line 2940
    .restart local v25    # "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2941
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2942
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2944
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x0

    aget-object v26, v2, v3

    .line 2945
    .restart local v26    # "tempProgress":Lorg/telegram/ui/PhotoViewer$RadialProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 2946
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x1

    aput-object v26, v2, v3

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 2949
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 2950
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0
.end method

.method private setImages()V
    .locals 2

    .prologue
    .line 2677
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_0

    .line 2678
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 2679
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 2680
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 2682
    :cond_0
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 27
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "index"    # I

    .prologue
    .line 3043
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 3044
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 3045
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3046
    if-ltz p2, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_b

    .line 3047
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 3048
    .local v22, "object":Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v25, v0

    .line 3049
    .local v25, "size":I
    const/16 v24, 0x0

    .line 3050
    .local v24, "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 3051
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    .line 3053
    :cond_0
    if-nez v24, :cond_1

    .line 3054
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move/from16 v0, p2

    invoke-interface {v3, v5, v8, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 3056
    :cond_1
    const/4 v6, 0x0

    .line 3057
    .local v6, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3058
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v10, 0x0

    .line 3059
    .local v10, "imageSize":I
    const/4 v7, 0x0

    .line 3060
    .local v7, "filter":Ljava/lang/String;
    move-object/from16 v0, v22

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_4

    move-object/from16 v23, v22

    .line 3061
    check-cast v23, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3062
    .local v23, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 3063
    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 3068
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v3, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3082
    .end local v23    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    :goto_1
    if-eqz v4, :cond_9

    .line 3083
    const/4 v5, 0x0

    const-string/jumbo v6, "d"

    .end local v6    # "path":Ljava/lang/String;
    if-eqz v24, :cond_7

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "filter":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v7, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_2
    if-nez v24, :cond_8

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%d_%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v3, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 3141
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v10    # "imageSize":I
    .end local v22    # "object":Ljava/lang/Object;
    .end local v24    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v25    # "size":I
    :goto_4
    return-void

    .line 3065
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "filter":Ljava/lang/String;
    .restart local v10    # "imageSize":I
    .restart local v22    # "object":Ljava/lang/Object;
    .restart local v23    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v24    # "placeHolder":Landroid/graphics/Bitmap;
    .restart local v25    # "size":I
    :cond_3
    move-object/from16 v0, v23

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 3066
    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_0

    .line 3069
    .end local v23    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_4
    move-object/from16 v0, v22

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_2

    move-object/from16 v23, v22

    .line 3070
    check-cast v23, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3071
    .local v23, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 3072
    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 3080
    :goto_5
    const-string/jumbo v7, "d"

    goto :goto_1

    .line 3073
    :cond_5
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_6

    .line 3074
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3075
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    goto :goto_5

    .line 3077
    :cond_6
    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 3078
    move-object/from16 v0, v23

    iget v10, v0, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    goto :goto_5

    .line 3083
    .end local v6    # "path":Ljava/lang/String;
    .end local v23    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .end local v7    # "filter":Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 3085
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "filter":Ljava/lang/String;
    :cond_9
    if-eqz v24, :cond_a

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v8, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_6
    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .line 3088
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "filter":Ljava/lang/String;
    .end local v10    # "imageSize":I
    .end local v22    # "object":Ljava/lang/Object;
    .end local v24    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v25    # "size":I
    :cond_b
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 3091
    :cond_c
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .line 3092
    .local v25, "size":[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v12

    .line 3094
    .local v12, "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v12, :cond_1a

    .line 3095
    const/16 v21, 0x0

    .line 3096
    .local v21, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3097
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 3099
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3100
    if-eqz v21, :cond_e

    .line 3101
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 3104
    :cond_e
    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3105
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 3106
    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v3, :cond_11

    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3107
    const/16 v24, 0x0

    .line 3108
    .restart local v24    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_f

    .line 3109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    .line 3111
    :cond_f
    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v26

    .line 3112
    .local v26, "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v24, :cond_10

    .end local v12    # "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v15, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_7
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    const-string/jumbo v17, "b"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_4

    :cond_10
    const/4 v15, 0x0

    goto :goto_7

    .line 3114
    .end local v24    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v26    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v12    # "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020228

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 3116
    :cond_12
    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_13

    .line 3117
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 3118
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 3120
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 3121
    const/16 v24, 0x0

    .line 3122
    .restart local v24    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_14

    .line 3123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    .line 3125
    :cond_14
    const/4 v3, 0x0

    aget v3, v25, v3

    if-nez v3, :cond_15

    .line 3126
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v25, v3

    .line 3128
    :cond_15
    if-eqz v21, :cond_16

    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v26

    .line 3129
    .restart local v26    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :goto_8
    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v24, :cond_17

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v15, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_9
    if-eqz v26, :cond_18

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    :goto_a
    const-string/jumbo v17, "b"

    const/4 v3, 0x0

    aget v18, v25, v3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v3, :cond_19

    const/16 v20, 0x1

    :goto_b
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_4

    .line 3128
    .end local v26    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_16
    const/16 v26, 0x0

    goto :goto_8

    .line 3129
    .restart local v26    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_17
    const/4 v15, 0x0

    goto :goto_9

    :cond_18
    const/16 v16, 0x0

    goto :goto_a

    :cond_19
    const/16 v20, 0x0

    goto :goto_b

    .line 3132
    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v24    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v26    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 3133
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3134
    const/4 v3, 0x0

    aget v3, v25, v3

    if-nez v3, :cond_1b

    .line 3135
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 3137
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020228

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method private showAlertDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 1948
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1971
    :goto_0
    return-void

    .line 1952
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 1953
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1954
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1960
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    .line 1961
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1962
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$21;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1968
    :catch_0
    move-exception v0

    .line 1969
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1956
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1957
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private switchToEditMode(I)V
    .locals 21
    .param p1, "mode"    # I

    .prologue
    .line 2024
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/PhotoViewer$RadialProgressView;->backgroundState:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->access$6800(Lorg/telegram/ui/PhotoViewer$RadialProgressView;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2333
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    if-nez p1, :cond_a

    .line 2028
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2029
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V

    goto :goto_0

    .line 2034
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2035
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_4

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v12

    .line 2037
    .local v12, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v11

    .line 2039
    .local v11, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v17, v2, v3

    .line 2040
    .local v17, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v18, v2, v3

    .line 2041
    .local v18, "scaleY":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v14, v2, v3

    .line 2042
    .local v14, "newScaleX":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v15, v2, v3

    .line 2043
    .local v15, "newScaleY":F
    cmpl-float v2, v17, v18

    if-lez v2, :cond_6

    move/from16 v16, v18

    .line 2044
    .local v16, "scale":F
    :goto_1
    cmpl-float v2, v14, v15

    if-lez v2, :cond_7

    move v13, v15

    .line 2046
    .local v13, "newScale":F
    :goto_2
    div-float v2, v13, v16

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 2047
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 2048
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 2049
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 2053
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 2054
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 2057
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v13    # "newScale":F
    .end local v14    # "newScaleX":F
    .end local v15    # "newScaleY":F
    .end local v16    # "scale":F
    .end local v17    # "scaleX":F
    .end local v18    # "scaleY":F
    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 2058
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v19, 0x42400000    # 48.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/16 v19, 0x0

    aput v19, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2071
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$22;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$22;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .restart local v11    # "bitmapHeight":I
    .restart local v12    # "bitmapWidth":I
    .restart local v14    # "newScaleX":F
    .restart local v15    # "newScaleY":F
    .restart local v17    # "scaleX":F
    .restart local v18    # "scaleY":F
    :cond_6
    move/from16 v16, v17

    .line 2043
    goto/16 :goto_1

    .restart local v16    # "scale":F
    :cond_7
    move v13, v14

    .line 2044
    goto/16 :goto_2

    .line 2050
    .restart local v13    # "newScale":F
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2051
    const/high16 v2, 0x42780000    # 62.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_3

    .line 2064
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v13    # "newScale":F
    .end local v14    # "newScaleX":F
    .end local v15    # "newScaleY":F
    .end local v16    # "scale":F
    .end local v17    # "scaleX":F
    .end local v18    # "scaleY":F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 2065
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v19, 0x42fc0000    # 126.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_4

    .line 2120
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 2121
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-nez v2, :cond_b

    .line 2122
    new-instance v2, Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    .line 2123
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v20, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$23;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V

    .line 2145
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Crop"

    const v4, 0x7f07018a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2146
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 2147
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2148
    .local v9, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_c

    .line 2151
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_d

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2158
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$24;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$24;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2221
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 2222
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v2, :cond_f

    .line 2223
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 2224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$25;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$26;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$26;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2256
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2259
    :cond_f
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 2260
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2261
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2263
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_10

    .line 2264
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_11

    .line 2267
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2269
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$27;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$27;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2059
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2066
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2154
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2267
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private toggleActionBar(ZZ)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2351
    if-eqz p1, :cond_0

    .line 2352
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 2353
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_0

    .line 2354
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2355
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2356
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2360
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 2361
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 2362
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2364
    if-eqz p2, :cond_7

    .line 2365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2366
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2367
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_5

    move v1, v2

    :goto_1
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2368
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2369
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_6

    :goto_2
    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 2372
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2373
    if-nez p1, :cond_2

    .line 2374
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$28;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2391
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2392
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2409
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_3
    :goto_3
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    move v1, v3

    .line 2366
    goto :goto_0

    :cond_5
    move v1, v3

    .line 2367
    goto :goto_1

    :cond_6
    move v2, v3

    .line 2369
    goto :goto_2

    .line 2394
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 2395
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2396
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2397
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2399
    :cond_8
    if-nez p1, :cond_3

    .line 2400
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 2401
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_3

    .line 2402
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2403
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2404
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v1, v3

    .line 2394
    goto :goto_4

    :cond_a
    move v1, v3

    .line 2395
    goto :goto_5

    :cond_b
    move v2, v3

    .line 2397
    goto :goto_6
.end method

.method private toggleCheckImageView(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2336
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2337
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2338
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_0

    .line 2340
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2342
    :cond_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_1

    .line 2343
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    if-eqz p1, :cond_4

    :goto_2
    aput v3, v6, v8

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2345
    :cond_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2346
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2347
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2348
    return-void

    :cond_2
    move v2, v4

    .line 2338
    goto :goto_0

    :cond_3
    move v2, v4

    .line 2340
    goto :goto_1

    :cond_4
    move v3, v4

    .line 2343
    goto :goto_2
.end method

.method private updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1884
    const/4 v0, 0x0

    .line 1885
    .local v0, "caption":Ljava/lang/CharSequence;
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_2

    .line 1886
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 1890
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1891
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 1895
    :goto_1
    return-void

    .line 1887
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_0

    .line 1888
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1893
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateMinMax(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 3723
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 3724
    .local v1, "maxW":I
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 3725
    .local v0, "maxH":I
    if-lez v1, :cond_1

    .line 3726
    neg-int v2, v1

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 3727
    int-to-float v2, v1

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 3731
    :goto_0
    if-lez v0, :cond_2

    .line 3732
    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 3733
    int-to-float v2, v0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 3737
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3738
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 3739
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 3740
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 3741
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 3743
    :cond_0
    return-void

    .line 3729
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    goto :goto_0

    .line 3735
    :cond_2
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    goto :goto_1
.end method

.method private updateSelectedCount()V
    .locals 3

    .prologue
    .line 2504
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v0, :cond_0

    .line 2508
    :goto_0
    return-void

    .line 2507
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    goto :goto_0
.end method

.method private updateVideoPlayerTime()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x3c

    .line 1718
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v3, :cond_1

    .line 1719
    const-string/jumbo v2, "00:00 / 00:00"

    .line 1729
    .local v2, "newText":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1730
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    :cond_0
    return-void

    .line 1721
    .end local v2    # "newText":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v6

    div-long v0, v6, v12

    .line 1722
    .local v0, "current":J
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v6

    div-long v4, v6, v12

    .line 1723
    .local v4, "total":J
    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    cmp-long v3, v0, v8

    if-eqz v3, :cond_2

    .line 1724
    const-string/jumbo v3, "%02d:%02d / %02d:%02d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    rem-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    div-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    rem-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newText":Ljava/lang/String;
    goto :goto_0

    .line 1726
    .end local v2    # "newText":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "00:00 / 00:00"

    .restart local v2    # "newText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public closePhoto(ZZ)V
    .locals 29
    .param p1, "animated"    # Z
    .param p2, "fromEditMode"    # Z

    .prologue
    .line 3405
    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 3406
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 3407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 3409
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    .line 3625
    :cond_1
    :goto_0
    return-void

    .line 3413
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->dismiss()V

    .line 3415
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3421
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 3422
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 3423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 3425
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 3430
    :cond_4
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 3433
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 3436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hideActionMode()Z

    move-result v21

    if-eqz v21, :cond_6

    if-eqz p2, :cond_1

    .line 3440
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 3442
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 3443
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v21

    sget v22, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3444
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v21

    sget v22, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3445
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v21

    sget v22, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3446
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v21

    sget v22, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3447
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v21

    sget v22, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3448
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v21

    sget v22, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3449
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v21

    sget v22, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3450
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 3452
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 3454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 3456
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 3458
    :cond_7
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 3460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v24, v0

    invoke-interface/range {v21 .. v24}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v14

    .line 3462
    .local v14, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-eqz p1, :cond_11

    .line 3463
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 3464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 3467
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3469
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 3470
    .local v13, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v10, 0x0

    .line 3471
    .local v10, "drawRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 3472
    if-eqz v14, :cond_d

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v22, v0

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 3474
    iget-object v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v10

    .line 3475
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3476
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    iget-object v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3484
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3486
    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v16, v21, v22

    .line 3487
    .local v16, "scaleX":F
    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sget v22, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v17, v21, v22

    .line 3488
    .local v17, "scaleY":F
    cmpl-float v21, v16, v17

    if-lez v21, :cond_e

    move/from16 v15, v17

    .line 3489
    .local v15, "scale2":F
    :goto_5
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    mul-float v18, v21, v15

    .line 3490
    .local v18, "width":F
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    mul-float v12, v21, v15

    .line 3491
    .local v12, "height":F
    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v18

    const/high16 v22, 0x40000000    # 2.0f

    div-float v19, v21, v22

    .line 3492
    .local v19, "xPos":F
    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sget v22, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v12

    const/high16 v22, 0x40000000    # 2.0f

    div-float v20, v21, v22

    .line 3493
    .local v20, "yPos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v22, v0

    add-float v22, v22, v19

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 3494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v22, v0

    add-float v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v22, v0

    mul-float v22, v22, v15

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 3496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v22, v0

    mul-float v22, v22, v15

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 3498
    if-eqz v14, :cond_f

    .line 3499
    iget-object v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 3500
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget-object v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v22

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 3501
    .local v6, "clipHorizontal":I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget-object v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v22

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 3503
    .local v8, "clipVertical":I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v9, v0, [I

    .line 3504
    .local v9, "coords2":[I
    iget-object v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3505
    const/16 v21, 0x1

    aget v21, v9, v21

    sget v22, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v21, v21, v22

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v21, v21, v22

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v22, v0

    add-int v7, v21, v22

    .line 3506
    .local v7, "clipTop":I
    if-gez v7, :cond_8

    .line 3507
    const/4 v7, 0x0

    .line 3509
    :cond_8
    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v21, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    add-int v21, v21, v22

    const/16 v22, 0x1

    aget v22, v9, v22

    iget-object v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v23

    add-int v22, v22, v23

    sget v23, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v22, v22, v23

    sub-int v21, v21, v22

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v22, v0

    add-int v5, v21, v22

    .line 3510
    .local v5, "clipBottom":I
    if-gez v5, :cond_9

    .line 3511
    const/4 v5, 0x0

    .line 3514
    :cond_9
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3515
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v23

    aput v23, v21, v22

    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v23

    aput v23, v21, v22

    .line 3519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v23

    aput v23, v21, v22

    .line 3520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v23

    aput v23, v21, v22

    .line 3521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x4

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 3522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x5

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 3523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x6

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 3524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x7

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x0

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v23, v0

    aput v23, v21, v22

    .line 3527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x1

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v23, v0

    aput v23, v21, v22

    .line 3528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x2

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aput v23, v21, v22

    .line 3529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x3

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aput v23, v21, v22

    .line 3530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x4

    int-to-float v0, v6

    move/from16 v23, v0

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    aput v23, v21, v22

    .line 3531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x5

    int-to-float v0, v7

    move/from16 v23, v0

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    aput v23, v21, v22

    .line 3532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x6

    int-to-float v0, v5

    move/from16 v23, v0

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    aput v23, v21, v22

    .line 3533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x7

    iget v0, v14, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    .line 3535
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const-string/jumbo v24, "animationProgress"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v23, v0

    const-string/jumbo v24, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const-string/jumbo v24, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3549
    .end local v5    # "clipBottom":I
    .end local v6    # "clipHorizontal":I
    .end local v7    # "clipTop":I
    .end local v8    # "clipVertical":I
    .end local v9    # "coords2":[I
    :goto_6
    new-instance v21, Lorg/telegram/ui/PhotoViewer$34;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lorg/telegram/ui/PhotoViewer$34;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3560
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3561
    new-instance v21, Lorg/telegram/ui/PhotoViewer$35;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$35;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 3576
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x12

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 3577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3579
    :cond_a
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 3620
    .end local v10    # "drawRegion":Landroid/graphics/Rect;
    .end local v12    # "height":F
    .end local v13    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "scale2":F
    .end local v16    # "scaleX":F
    .end local v17    # "scaleY":F
    .end local v18    # "width":F
    .end local v19    # "xPos":F
    .end local v20    # "yPos":F
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 3621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 3622
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v22, v0

    const/16 v21, 0x0

    check-cast v21, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3417
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v14    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :catch_0
    move-exception v11

    .line 3418
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3426
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 3427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 3428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3473
    .restart local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v10    # "drawRegion":Landroid/graphics/Rect;
    .restart local v13    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v14    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 3479
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 3480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .restart local v16    # "scaleX":F
    .restart local v17    # "scaleY":F
    :cond_e
    move/from16 v15, v16

    .line 3488
    goto/16 :goto_5

    .line 3541
    .restart local v12    # "height":F
    .restart local v15    # "scale2":F
    .restart local v18    # "width":F
    .restart local v19    # "xPos":F
    .restart local v20    # "yPos":F
    :cond_f
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v23, v0

    const-string/jumbo v24, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v22, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const-string/jumbo v24, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v22, v21

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    const-string/jumbo v25, "translationY"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v21, v0

    const/16 v28, 0x0

    cmpl-float v21, v21, v28

    if-ltz v21, :cond_10

    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    :goto_8
    aput v21, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v22, v23

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const-string/jumbo v24, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v22, v21

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    :cond_10
    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    goto :goto_8

    .line 3581
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v10    # "drawRegion":Landroid/graphics/Rect;
    .end local v12    # "height":F
    .end local v13    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "scale2":F
    .end local v16    # "scaleX":F
    .end local v17    # "scaleY":F
    .end local v18    # "width":F
    .end local v19    # "xPos":F
    .end local v20    # "yPos":F
    :cond_11
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3582
    .restart local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const-string/jumbo v24, "scaleX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x3f666666    # 0.9f

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const-string/jumbo v24, "scaleY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x3f666666    # 0.9f

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v23, v0

    const-string/jumbo v24, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const-string/jumbo v24, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3588
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 3589
    new-instance v21, Lorg/telegram/ui/PhotoViewer$36;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lorg/telegram/ui/PhotoViewer$36;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3604
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3605
    new-instance v21, Lorg/telegram/ui/PhotoViewer$37;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$37;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 3615
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x12

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    .line 3616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3618
    :cond_12
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_7

    .line 3535
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3628
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    if-nez v2, :cond_1

    .line 3645
    :cond_0
    :goto_0
    return-void

    .line 3631
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 3633
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3634
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3635
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3637
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3641
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v2, :cond_3

    .line 3642
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 3644
    :cond_3
    sput-object v4, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    goto :goto_0

    .line 3638
    :catch_0
    move-exception v0

    .line 3639
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 32
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 713
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 714
    const/4 v2, 0x0

    aget-object v22, p2, v2

    check-cast v22, Ljava/lang/String;

    .line 715
    .local v22, "location":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setProgress(FZ)V

    .line 718
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 943
    .end local v10    # "a":I
    .end local v22    # "location":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 715
    .restart local v10    # "a":I
    .restart local v22    # "location":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 722
    .end local v10    # "a":I
    .end local v22    # "location":Ljava/lang/String;
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 723
    const/4 v2, 0x0

    aget-object v22, p2, v2

    check-cast v22, Ljava/lang/String;

    .line 724
    .restart local v22    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_2
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setProgress(FZ)V

    .line 727
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 728
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    goto :goto_1

    .line 724
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 734
    .end local v10    # "a":I
    .end local v22    # "location":Ljava/lang/String;
    :cond_4
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 735
    const/4 v2, 0x0

    aget-object v22, p2, v2

    check-cast v22, Ljava/lang/String;

    .line 736
    .restart local v22    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_3
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 738
    const/4 v2, 0x1

    aget-object v26, p2, v2

    check-cast v26, Ljava/lang/Float;

    .line 739
    .local v26, "progress":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v2, v2, v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setProgress(FZ)V

    .line 736
    .end local v26    # "progress":Ljava/lang/Float;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 742
    .end local v10    # "a":I
    .end local v22    # "location":Ljava/lang/String;
    :cond_6
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 743
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 744
    .local v18, "guid":I
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 745
    .local v15, "did":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-ne v2, v15, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 746
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 748
    .local v17, "fromCache":Z
    const/16 v27, -0x1

    .line 749
    .local v27, "setToImage":I
    const/4 v2, 0x5

    aget-object v25, p2, v2

    check-cast v25, Ljava/util/ArrayList;

    .line 750
    .local v25, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 756
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_b

    .line 757
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 758
    .local v24, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v24, :cond_7

    move-object/from16 v0, v24

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v2, :cond_7

    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    .line 756
    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 761
    :cond_8
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v29

    .line 762
    .local v29, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v29, :cond_7

    .line 763
    const/4 v2, -0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_9

    .line 764
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_6
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_9

    .line 765
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 766
    .local v28, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_a

    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 772
    .end local v13    # "b":I
    .end local v28    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 764
    .restart local v13    # "b":I
    .restart local v28    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 777
    .end local v13    # "b":I
    .end local v24    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v28    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v29    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 782
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 783
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 784
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_d

    .line 785
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 792
    :goto_8
    if-eqz v17, :cond_0

    .line 793
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_1

    .line 780
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_7

    .line 787
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 790
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_8

    .line 796
    .end local v10    # "a":I
    .end local v15    # "did":I
    .end local v17    # "fromCache":Z
    .end local v18    # "guid":I
    .end local v25    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    .end local v27    # "setToImage":I
    :cond_e
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_14

    .line 797
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 798
    .local v30, "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v30, v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v30, v2

    if-nez v2, :cond_0

    .line 799
    :cond_f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v30, v2

    if-nez v2, :cond_11

    .line 800
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 810
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    if-eqz v2, :cond_12

    .line 811
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 812
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 813
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    .line 804
    :cond_11
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v30, v2

    if-nez v2, :cond_10

    .line 805
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto :goto_9

    .line 814
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 815
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_13

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0703a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 818
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0703a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 822
    .end local v30    # "uid":J
    :cond_14
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2f

    .line 823
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 824
    .restart local v30    # "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 825
    .restart local v18    # "guid":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v30, v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v30, v2

    if-nez v2, :cond_0

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_0

    .line 826
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 827
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v30, v2

    if-nez v2, :cond_17

    const/16 v21, 0x0

    .line 828
    .local v21, "loadIndex":I
    :goto_a
    const/4 v2, 0x2

    aget-object v12, p2, v2

    check-cast v12, Ljava/util/ArrayList;

    .line 829
    .local v12, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v21

    .line 830
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_29

    .line 831
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_18

    .line 832
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    goto/16 :goto_1

    .line 827
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "loadIndex":I
    :cond_17
    const/16 v21, 0x1

    goto :goto_a

    .line 835
    .restart local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v21    # "loadIndex":I
    :cond_18
    const/16 v16, -0x1

    .line 837
    .local v16, "foundIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 839
    .local v14, "currentMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v11, 0x0

    .line 840
    .local v11, "added":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1c

    .line 841
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 842
    .local v23, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v21

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v21

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_1b

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 847
    move/from16 v16, v11

    .line 849
    :cond_19
    add-int/lit8 v11, v11, 0x1

    .line 840
    :cond_1a
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 851
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 853
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 854
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v16, v2, v11

    goto :goto_c

    .line 859
    .end local v23    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_1c
    if-nez v11, :cond_1e

    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    .line 860
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 861
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 864
    :cond_1e
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_21

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 867
    const/4 v10, 0x0

    :goto_d
    const/4 v2, 0x2

    if-ge v10, v2, :cond_1f

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 867
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 872
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 873
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 874
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_20

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .line 878
    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    .line 881
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_24

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v6, 0x0

    .line 883
    .local v6, "loadFromMaxId":I
    :goto_e
    if-nez v21, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v21

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 884
    const/16 v21, 0x1

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 886
    const/4 v6, 0x0

    .line 899
    :cond_22
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v21

    if-nez v2, :cond_0

    .line 900
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 901
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_27

    .line 902
    if-nez v21, :cond_26

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_10
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    .line 882
    .end local v6    # "loadFromMaxId":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_e

    .line 890
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v6, 0x0

    .line 891
    .restart local v6    # "loadFromMaxId":I
    :goto_11
    if-nez v21, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v21

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 892
    const/16 v21, 0x1

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 894
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 890
    .end local v6    # "loadFromMaxId":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_11

    .line 902
    .restart local v6    # "loadFromMaxId":I
    :cond_26
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_10

    .line 904
    :cond_27
    if-nez v21, :cond_28

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_12
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_12

    .line 909
    .end local v6    # "loadFromMaxId":I
    .end local v10    # "a":I
    .end local v11    # "added":I
    .end local v14    # "currentMessage":Lorg/telegram/messenger/MessageObject;
    .end local v16    # "foundIndex":I
    :cond_29
    const/4 v11, 0x0

    .line 910
    .restart local v11    # "added":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_13
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 911
    .restart local v23    # "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v21

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 912
    add-int/lit8 v11, v11, 0x1

    .line 913
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_2b

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v21

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 916
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_14

    .line 921
    .end local v23    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_2d

    .line 922
    if-nez v11, :cond_0

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 924
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    .line 927
    :cond_2d
    if-eqz v11, :cond_2e

    .line 928
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v20, v0

    .line 929
    .local v20, "index":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 930
    add-int v2, v20, v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    .line 932
    .end local v20    # "index":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 933
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    .line 938
    .end local v11    # "added":I
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v18    # "guid":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "loadIndex":I
    .end local v30    # "uid":J
    :cond_2f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_1
.end method

.method public getAnimationValue()F
    .locals 1

    .prologue
    .line 4078
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    return v0
.end method

.method public isShowingImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 3152
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z
    .locals 4
    .param p1, "object"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 3148
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 3719
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 4434
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 4459
    :goto_0
    return v2

    .line 4437
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 4438
    goto :goto_0

    .line 4440
    :cond_3
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_8

    .line 4441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 4442
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 4443
    .local v1, "aty":F
    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4444
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 4445
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 4449
    :cond_4
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    .line 4450
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4454
    :cond_5
    :goto_2
    invoke-direct {p0, v9, v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 4458
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    goto :goto_0

    .line 4446
    .restart local v0    # "atx":F
    .restart local v1    # "aty":F
    :cond_6
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 4447
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_1

    .line 4451
    :cond_7
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 4452
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_2

    .line 4456
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_8
    invoke-direct {p0, v10, v8, v8, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4464
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4372
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 4397
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 4398
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4399
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4400
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->postInvalidate()V

    .line 4402
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4393
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3709
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 3710
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 3716
    :cond_0
    :goto_0
    return-void

    .line 3713
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionDoneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 3705
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    .line 3706
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 4387
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4378
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4407
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    if-eqz v6, :cond_1

    move v4, v5

    .line 4429
    :cond_0
    :goto_0
    return v4

    .line 4410
    :cond_1
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v6, :cond_5

    .line 4411
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    .line 4412
    .local v0, "drawTextureView":Z
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 4413
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    aget-object v6, v6, v5

    # getter for: Lorg/telegram/ui/PhotoViewer$RadialProgressView;->backgroundState:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->access$6800(Lorg/telegram/ui/PhotoViewer$RadialProgressView;)I

    move-result v1

    .line 4414
    .local v1, "state":I
    if-lez v1, :cond_3

    const/4 v6, 0x3

    if-gt v1, v6, :cond_3

    .line 4415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4416
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 4417
    .local v3, "y":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    .line 4419
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 4420
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto :goto_0

    .end local v0    # "drawTextureView":Z
    .end local v1    # "state":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    move v0, v5

    .line 4411
    goto :goto_1

    .line 4425
    .restart local v0    # "drawTextureView":Z
    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-nez v6, :cond_4

    move v5, v4

    :cond_4
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    goto/16 :goto_0

    .line 4426
    .end local v0    # "drawTextureView":Z
    :cond_5
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v5, :cond_0

    .line 4427
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CheckBox;->performClick()Z

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4382
    const/4 v0, 0x0

    return v0
.end method

.method public openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V
    .locals 13
    .param p2, "index"    # I
    .param p3, "dialogId"    # J
    .param p5, "mergeDialogId"    # J
    .param p7, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;IJJ",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3164
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)V

    .line 3165
    return-void
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "dialogId"    # J
    .param p4, "mergeDialogId"    # J
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    .line 3156
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)V

    .line 3157
    return-void
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)V
    .locals 30
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p7, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p8, "dialogId"    # J
    .param p10, "mDialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 3189
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-nez v4, :cond_1

    if-nez p6, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 3402
    :cond_1
    :goto_0
    return-void

    .line 3193
    :cond_2
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v10

    .line 3194
    .local v10, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-nez v10, :cond_3

    if-eqz p4, :cond_1

    .line 3198
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    .line 3199
    .local v26, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    # getter for: Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->attachedToWindow:Z
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->access$8700(Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3201
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3208
    :cond_4
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x63

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3209
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3210
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3211
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->setFocusable(Z)V

    .line 3212
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 3213
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3219
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 3221
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Of"

    const v6, 0x7f0703a0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3222
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 3223
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 3224
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 3225
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 3226
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 3227
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 3228
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 3230
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 3231
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    .line 3232
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    .line 3234
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_5

    .line 3235
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 3238
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 3239
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 3241
    if-eqz v10, :cond_c

    .line 3242
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 3243
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 3244
    if-eqz p1, :cond_6

    .line 3245
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 3248
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    .line 3250
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v17

    .line 3251
    .local v17, "drawRegion":Landroid/graphics/Rect;
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v21

    .line 3253
    .local v21, "orientation":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 3255
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 3256
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 3257
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3259
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    .line 3260
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    .line 3261
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    .line 3262
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 3263
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 3264
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v5, v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 3265
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v5, v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 3266
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 3267
    .local v20, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3268
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3269
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3271
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float v23, v4, v5

    .line 3272
    .local v23, "scaleX":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 3273
    .local v24, "scaleY":F
    cmpl-float v4, v23, v24

    if-lez v4, :cond_b

    move/from16 v22, v24

    .line 3274
    .local v22, "scale":F
    :goto_3
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float v25, v4, v22

    .line 3275
    .local v25, "width":F
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    mul-float v19, v4, v22

    .line 3276
    .local v19, "height":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, v4, v25

    const/high16 v5, 0x40000000    # 2.0f

    div-float v27, v4, v5

    .line 3277
    .local v27, "xPos":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v4, v19

    const/high16 v5, 0x40000000    # 2.0f

    div-float v28, v4, v5

    .line 3278
    .local v28, "yPos":F
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 3279
    .local v13, "clipHorizontal":I
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 3281
    .local v15, "clipVertical":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 3282
    .local v16, "coords2":[I
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3283
    const/4 v4, 0x1

    aget v4, v16, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int v14, v4, v5

    .line 3284
    .local v14, "clipTop":I
    if-gez v14, :cond_7

    .line 3285
    const/4 v14, 0x0

    .line 3287
    :cond_7
    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v16, v5

    iget-object v6, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int v12, v4, v5

    .line 3288
    .local v12, "clipBottom":I
    if-gez v12, :cond_8

    .line 3289
    const/4 v12, 0x0

    .line 3291
    :cond_8
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3292
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3294
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v6

    aput v6, v4, v5

    .line 3295
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v6

    aput v6, v4, v5

    .line 3296
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v6

    aput v6, v4, v5

    .line 3297
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v6

    aput v6, v4, v5

    .line 3298
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x4

    int-to-float v6, v13

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 3299
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x5

    int-to-float v6, v14

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 3300
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x6

    int-to-float v6, v12

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 3301
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    .line 3303
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aput v22, v4, v5

    .line 3304
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aput v22, v4, v5

    .line 3305
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aput v27, v4, v5

    .line 3306
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aput v28, v4, v5

    .line 3307
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 3308
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 3309
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 3310
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 3312
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    .line 3313
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    .line 3316
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3317
    .local v11, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3323
    new-instance v4, Lorg/telegram/ui/PhotoViewer$30;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PhotoViewer$30;-><init>(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3354
    const-wide/16 v4, 0xc8

    invoke-virtual {v11, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3355
    new-instance v4, Lorg/telegram/ui/PhotoViewer$31;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoViewer$31;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 3371
    new-instance v4, Lorg/telegram/ui/PhotoViewer$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lorg/telegram/ui/PhotoViewer$32;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3379
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_9

    .line 3380
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3382
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    new-instance v5, Lorg/telegram/ui/PhotoViewer$33;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/PhotoViewer$33;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    # setter for: Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->access$9702(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 3214
    .end local v11    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v12    # "clipBottom":I
    .end local v13    # "clipHorizontal":I
    .end local v14    # "clipTop":I
    .end local v15    # "clipVertical":I
    .end local v16    # "coords2":[I
    .end local v17    # "drawRegion":Landroid/graphics/Rect;
    .end local v19    # "height":F
    .end local v20    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "orientation":I
    .end local v22    # "scale":F
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    .end local v25    # "width":F
    .end local v27    # "xPos":F
    .end local v28    # "yPos":F
    :catch_0
    move-exception v18

    .line 3215
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 3256
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v17    # "drawRegion":Landroid/graphics/Rect;
    .restart local v21    # "orientation":I
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .restart local v20    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v23    # "scaleX":F
    .restart local v24    # "scaleY":F
    :cond_b
    move/from16 v22, v23

    .line 3273
    goto/16 :goto_3

    .line 3390
    .end local v17    # "drawRegion":Landroid/graphics/Rect;
    .end local v20    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "orientation":I
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    :cond_c
    if-eqz p4, :cond_d

    .line 3391
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3392
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x20

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3393
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3394
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->setFocusable(Z)V

    .line 3395
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 3398
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 3400
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    goto/16 :goto_0

    .line 3202
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .line 3317
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V
    .locals 12
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 3160
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p2

    move-object v7, v1

    move-wide v10, v8

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)V

    .line 3161
    return-void
.end method

.method public openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)V
    .locals 12
    .param p2, "index"    # I
    .param p3, "type"    # I
    .param p4, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p5, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3168
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    .line 3169
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    if-eqz v0, :cond_0

    .line 3170
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "Set"

    const v2, 0x7f070461

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3172
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)V

    .line 3173
    return-void

    .line 3170
    :cond_1
    const-string/jumbo v0, "Send"

    const v2, 0x7f07044a

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAnimationValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4073
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    .line 4074
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4075
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 987
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 1714
    :goto_0
    return-void

    .line 990
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    .line 991
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f0a0086

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    .line 993
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 994
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    .line 995
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 996
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 997
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 998
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1001
    :cond_1
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    .line 1003
    new-instance v0, Lorg/telegram/ui/PhotoViewer$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$2;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->setFocusable(Z)V

    .line 1035
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->setFitsSystemWindows(Z)V

    .line 1039
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/ClippingImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    new-instance v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 1045
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1055
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(I)V

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Of"

    const v2, 0x7f0703a0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$3;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    .line 1287
    .local v8, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v0, 0xc

    const v1, 0x7f020281

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1289
    const/4 v0, 0x0

    const v1, 0x7f02013e

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1290
    const-string/jumbo v0, "OpenInBrowser"

    const v1, 0x7f0703ae

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1291
    .local v11, "str":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1294
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    const-string/jumbo v2, "ShowAllMedia"

    const v3, 0x7f070483

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    const-string/jumbo v2, "ShareFile"

    const v3, 0x7f070472

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    const-string/jumbo v2, "SaveToGallery"

    const v3, 0x7f070431

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 1298
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    const-string/jumbo v2, "Delete"

    const v3, 0x7f0701a0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 1300
    const/16 v0, 0x9

    const v1, 0x7f020152

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionDoneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1301
    const/16 v0, 0x8

    const v1, 0x7f020210

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1302
    const/4 v0, 0x4

    const v1, 0x7f02020e

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1303
    const/4 v0, 0x7

    const v1, 0x7f020212

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1305
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    .line 1306
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1309
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 1310
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1313
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1318
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1320
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1326
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1329
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v0, v1

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v0, v1

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v0, v1

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->radialProgressViews:[Lorg/telegram/ui/PhotoViewer$RadialProgressView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 1338
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    .line 1339
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f02026d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v2, 0x32

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$4;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1358
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1368
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1371
    new-instance v0, Lorg/telegram/ui/Components/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v1, 0x66ffffff

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$5;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 1382
    new-instance v0, Lorg/telegram/ui/PhotoViewer$6;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$6;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1424
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$7;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1440
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1444
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setBackgroundColor(I)V

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$8;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$9;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setBackgroundColor(I)V

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$10;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$11;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    new-instance v9, Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1497
    .local v9, "rotateButton":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1498
    const v0, 0x7f0202ab

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1499
    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    new-instance v0, Lorg/telegram/ui/PhotoViewer$12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$12;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1513
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1516
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1523
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1524
    .local v7, "manager":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 1526
    .local v10, "rotation":I
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02026c

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 1528
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 1530
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const v1, -0xc33511

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setColor(I)V

    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 1532
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x2d

    const/high16 v1, 0x42340000    # 45.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v10, v4, :cond_5

    const/4 v4, 0x1

    if-ne v10, v4, :cond_6

    :cond_5
    const/high16 v4, 0x42680000    # 58.0f

    :goto_1
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$13;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .line 1545
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$14;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    .line 1574
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x3c380000    # -400.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 1578
    new-instance v0, Lorg/telegram/ui/PhotoViewer$15;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$15;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 1584
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1585
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1586
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/16 v3, 0x6e

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    new-instance v6, Lorg/telegram/ui/PhotoViewer$16;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoViewer$16;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$17;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1693
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$18;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    goto/16 :goto_0

    .line 1532
    :cond_6
    const/high16 v4, 0x42880000    # 68.0f

    goto/16 :goto_1
.end method

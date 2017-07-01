.class public Lorg/telegram/ui/LocationActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    }
.end annotation


# static fields
.field private static final map_list_menu_hybrid:I = 0x4

.field private static final map_list_menu_map:I = 0x2

.field private static final map_list_menu_satellite:I = 0x3

.field private static final share:I = 0x1


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkPermission:Z

.field private circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

.field private delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

.field private distanceTextView:Landroid/widget/TextView;

.field private emptyTextLayout:Landroid/widget/LinearLayout;

.field private firstWas:Z

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private listView:Landroid/widget/ListView;

.field private locationButton:Landroid/widget/ImageView;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private mapViewClip:Landroid/widget/FrameLayout;

.field private markerImageView:Landroid/widget/ImageView;

.field private markerTop:I

.field private markerXImageView:Landroid/widget/ImageView;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private myLocation:Landroid/location/Location;

.field private nameTextView:Landroid/widget/TextView;

.field private overScrollHeight:I

.field private searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

.field private searchListView:Landroid/widget/ListView;

.field private searchWas:Z

.field private searching:Z

.field private userLocation:Landroid/location/Location;

.field private userLocationMoved:Z

.field private wasResults:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    .line 112
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 113
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    .line 117
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->showPermissionAlert(Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->wasResults:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->wasResults:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/LocationActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LocationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LocationActivity;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LocationActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    return-object v0
.end method

.method private fixLayoutInternal(Z)V
    .locals 7
    .param p1, "resume"    # Z

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v4, 0x0

    .line 740
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 741
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    add-int v0, v3, v5

    .line 742
    .local v0, "height":I
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 743
    .local v2, "viewHeight":I
    if-nez v2, :cond_2

    .line 784
    .end local v0    # "height":I
    .end local v2    # "viewHeight":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 741
    goto :goto_0

    .line 746
    .restart local v0    # "height":I
    .restart local v2    # "viewHeight":I
    :cond_2
    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 748
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 749
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 750
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 752
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 753
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 754
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 756
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 757
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 760
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/MapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 761
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_4

    .line 762
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 763
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_3

    .line 764
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 766
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->notifyDataSetChanged()V

    .line 770
    if-eqz p1, :cond_5

    .line 771
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float/2addr v5, v6

    const/high16 v6, 0x42cc0000    # 102.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 772
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    .line 773
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/LocationActivity$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LocationActivity$19;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 781
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    goto/16 :goto_1
.end method

.method private getLastLocation()Landroid/location/Location;
    .locals 6

    .prologue
    .line 787
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 788
    .local v2, "lm":Landroid/location/LocationManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 789
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 790
    .local v1, "l":Landroid/location/Location;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 791
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 792
    if-eqz v1, :cond_1

    .line 796
    :cond_0
    return-object v1

    .line 790
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private positionMarker(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v8, 0x1

    .line 841
    if-nez p1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    .line 845
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_3

    .line 846
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 847
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {p1, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 848
    .local v0, "distance":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_2

    .line 849
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "%d %s"

    new-array v5, v5, [Ljava/lang/Object;

    float-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "MetersAway"

    const v7, 0x7f0702fe

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "%.2f %s"

    new-array v5, v5, [Ljava/lang/Object;

    div-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "KMetersAway"

    const v7, 0x7f070297

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 854
    .end local v0    # "distance":F
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_0

    .line 855
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 856
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v3, :cond_4

    .line 857
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V

    .line 858
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    .line 860
    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v3, :cond_0

    .line 861
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 862
    iget-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    if-eqz v3, :cond_5

    .line 863
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 864
    .local v2, "position":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0

    .line 866
    .end local v2    # "position":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_5
    iput-boolean v8, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    .line 867
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 868
    .restart local v2    # "position":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0
.end method

.method private showPermissionAlert(Z)V
    .locals 3
    .param p1, "byButton"    # Z

    .prologue
    .line 649
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 652
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 653
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 654
    if-eqz p1, :cond_1

    .line 655
    const-string/jumbo v1, "PermissionNoLocationPosition"

    const v2, 0x7f0703d2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 659
    :goto_1
    const-string/jumbo v1, "PermissionOpenSettings"

    const v2, 0x7f0703d3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LocationActivity$18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LocationActivity$18;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 676
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/LocationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 657
    :cond_1
    const-string/jumbo v1, "PermissionNoLocation"

    const v2, 0x7f0703d1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private updateClipView(I)V
    .locals 9
    .param p1, "firstVisibleItem"    # I

    .prologue
    const/4 v7, 0x4

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "height":I
    const/4 v3, 0x0

    .line 702
    .local v3, "top":I
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 704
    if-nez p1, :cond_0

    .line 705
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 706
    iget v6, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    if-gez v3, :cond_3

    move v4, v3

    :goto_0
    add-int v1, v6, v4

    .line 708
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 709
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 710
    if-gtz v1, :cond_4

    .line 711
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 712
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    .line 713
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 722
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 723
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    neg-int v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/MapView;->setTranslationY(F)V

    .line 724
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    neg-int v6, v3

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 725
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    neg-int v6, v3

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 727
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v4, :cond_2

    .line 728
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 729
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_2

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v6, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    if-eq v4, v6, :cond_2

    .line 730
    iget v4, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 731
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v5, v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 732
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void

    :cond_3
    move v4, v5

    .line 706
    goto/16 :goto_0

    .line 716
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 717
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    .line 718
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateSearchInterface()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->notifyDataSetChanged()V

    .line 957
    :cond_0
    return-void
.end method

.method private updateUserData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 800
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v6, :cond_3

    .line 801
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 802
    .local v2, "fromId":I
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 803
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v6, :cond_4

    .line 804
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    neg-int v2, v6

    .line 809
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    .line 810
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 811
    .local v4, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v0, 0x0

    .line 812
    .local v0, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    if-lez v2, :cond_5

    .line 813
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 814
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_2

    .line 815
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_1

    .line 816
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 818
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 819
    .restart local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 831
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_1
    if-eqz v0, :cond_7

    .line 832
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v4, v8, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 833
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    .end local v2    # "fromId":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_3
    :goto_2
    return-void

    .line 806
    .restart local v2    # "fromId":I
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    goto :goto_0

    .line 822
    .restart local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-int v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 823
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_2

    .line 824
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_6

    .line 825
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 827
    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 828
    .restart local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    .line 835
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 165
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/LocationActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$1;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v17

    .line 200
    .local v17, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_8

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 209
    :cond_1
    :goto_1
    const/4 v2, 0x1

    const v3, 0x7f02026d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 250
    :goto_2
    const/4 v2, 0x0

    const v3, 0x7f02013e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v15

    .line 251
    .local v15, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    const/4 v2, 0x2

    const-string/jumbo v3, "Map"

    const v4, 0x7f0702df

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 252
    const/4 v2, 0x3

    const-string/jumbo v3, "Satellite"

    const v4, 0x7f07042b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 253
    const/4 v2, 0x4

    const-string/jumbo v3, "Hybrid"

    const v4, 0x7f07026f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 254
    new-instance v2, Lorg/telegram/ui/LocationActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LocationActivity$3;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    check-cast v13, Landroid/widget/FrameLayout;

    .line 269
    .local v13, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const v3, 0x7f020122

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const v3, 0x7f0201f6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 274
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 275
    .local v9, "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 276
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$4;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 287
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1a

    .line 288
    new-instance v2, Lcom/google/android/gms/maps/MapView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 289
    new-instance v2, Lorg/telegram/ui/Components/MapPlaceholderDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;-><init>()V

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 292
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_3
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 299
    .local v10, "bottomView":Landroid/widget/FrameLayout;
    const v2, 0x7f0201b5

    invoke-virtual {v10, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 300
    const/4 v2, -0x1

    const/16 v3, 0x3c

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v2, Lorg/telegram/ui/LocationActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/LocationActivity$5;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v10, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v21, v0

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x5

    :goto_4
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    :goto_5
    const/high16 v6, 0x41400000    # 12.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_b

    const/high16 v7, 0x41400000    # 12.0f

    :goto_6
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x5

    :goto_8
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_e

    const/high16 v5, 0x41400000    # 12.0f

    :goto_9
    const/high16 v6, 0x41200000    # 10.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_f

    const/high16 v7, 0x42900000    # 72.0f

    :goto_a
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const v3, -0xd07337

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    :goto_b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    :goto_c
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_12

    const/high16 v5, 0x41400000    # 12.0f

    :goto_d
    const/high16 v6, 0x42040000    # 33.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_13

    const/high16 v7, 0x42900000    # 72.0f

    :goto_e
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "network"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_3

    .line 341
    new-instance v16, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 343
    .local v16, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    const v4, 0x7f0201bb

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v18

    .line 348
    .local v18, "position":Lcom/google/android/gms/maps/CameraUpdate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 351
    .end local v16    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v18    # "position":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_3
    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 352
    .local v19, "routeButton":Landroid/widget/ImageView;
    const v2, 0x7f020121

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 353
    const v2, 0x7f0201f7

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 355
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 356
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 357
    .restart local v9    # "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 358
    const/4 v2, 0x0

    new-array v2, v2, [I

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 359
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 360
    new-instance v2, Lorg/telegram/ui/LocationActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/LocationActivity$6;-><init>(Lorg/telegram/ui/LocationActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 368
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_4
    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x3

    :goto_10
    or-int/lit8 v4, v4, 0x50

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_15

    const/high16 v5, 0x41600000    # 14.0f

    :goto_11
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    :goto_12
    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v2, Lorg/telegram/ui/LocationActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/LocationActivity$7;-><init>(Lorg/telegram/ui/LocationActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_17

    const/4 v4, 0x3

    :goto_13
    or-int/lit8 v4, v4, 0x50

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_18

    const/high16 v5, 0x41600000    # 14.0f

    :goto_14
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_19

    const/4 v7, 0x0

    :goto_15
    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$8;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    .end local v10    # "bottomView":Landroid/widget/FrameLayout;
    .end local v19    # "routeButton":Landroid/widget/ImageView;
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_5

    .line 629
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 633
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lorg/telegram/ui/LocationActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$17;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 642
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LocationActivity;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    .line 645
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 168
    .end local v13    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v15    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v17    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v17    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ChatLocation"

    const v4, 0x7f070161

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 211
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ShareLocation"

    const v4, 0x7f070474

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    const/4 v2, 0x0

    const v3, 0x7f020141

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LocationActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$2;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v15

    .line 247
    .restart local v15    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "Search"

    const v4, 0x7f070435

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 294
    .restart local v13    # "frameLayout":Landroid/widget/FrameLayout;
    :catch_0
    move-exception v11

    .line 295
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 316
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "bottomView":Landroid/widget/FrameLayout;
    :cond_9
    const/4 v4, 0x3

    goto/16 :goto_4

    :cond_a
    const/high16 v5, 0x41400000    # 12.0f

    goto/16 :goto_5

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 325
    :cond_c
    const/4 v2, 0x3

    goto/16 :goto_7

    .line 326
    :cond_d
    const/4 v4, 0x3

    goto/16 :goto_8

    :cond_e
    const/high16 v5, 0x42900000    # 72.0f

    goto/16 :goto_9

    :cond_f
    const/high16 v7, 0x41400000    # 12.0f

    goto/16 :goto_a

    .line 334
    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_b

    .line 335
    :cond_11
    const/4 v4, 0x3

    goto/16 :goto_c

    :cond_12
    const/high16 v5, 0x42900000    # 72.0f

    goto/16 :goto_d

    :cond_13
    const/high16 v7, 0x41400000    # 12.0f

    goto/16 :goto_e

    .line 344
    .restart local v16    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :catch_1
    move-exception v11

    .line 345
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 368
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v16    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v19    # "routeButton":Landroid/widget/ImageView;
    :cond_14
    const/4 v4, 0x5

    goto/16 :goto_10

    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_11

    :cond_16
    const/high16 v7, 0x41600000    # 14.0f

    goto/16 :goto_12

    .line 392
    :cond_17
    const/4 v4, 0x5

    goto/16 :goto_13

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_14

    :cond_19
    const/high16 v7, 0x41600000    # 14.0f

    goto/16 :goto_15

    .line 411
    .end local v10    # "bottomView":Landroid/widget/FrameLayout;
    .end local v19    # "routeButton":Landroid/widget/ImageView;
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LocationActivity;->searching:Z

    .line 413
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/MapPlaceholderDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v2, :cond_1b

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->destroy()V

    .line 418
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v2, :cond_1c

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->destroy()V

    .line 422
    :cond_1c
    new-instance v2, Landroid/widget/ListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$9;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$10;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    new-instance v3, Lorg/telegram/ui/LocationActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$11;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setDelegate(Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance v2, Lorg/telegram/ui/LocationActivity$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LocationActivity$12;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 517
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 522
    :goto_18
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 528
    :goto_19
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 529
    .local v20, "shadow":Landroid/view/View;
    const v2, 0x7f02012a

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    const v3, 0x7f0201bb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    const/16 v4, 0x18

    const/16 v5, 0x2a

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    const v3, 0x7f020238

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1e

    const/16 v2, 0x38

    :goto_1a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1f

    const/high16 v3, 0x42600000    # 56.0f

    :goto_1b
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_20

    const/4 v4, 0x3

    :goto_1c
    or-int/lit8 v4, v4, 0x50

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_21

    const/high16 v5, 0x41600000    # 14.0f

    :goto_1d
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_22

    const/4 v7, 0x0

    :goto_1e
    const/high16 v8, 0x41600000    # 14.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$13;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 567
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/LocationActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$14;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 579
    .local v12, "emptyTextView":Landroid/widget/TextView;
    const v2, -0x7f7f80

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 580
    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v12, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 581
    const/16 v2, 0x11

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 582
    const-string/jumbo v2, "NoResult"

    const v3, 0x7f070344

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 586
    .local v14, "frameLayoutEmpty":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyTextLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    new-instance v2, Landroid/widget/ListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$15;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Landroid/widget/ListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$16;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1d

    .line 619
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "network"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const-wide v4, 0x4034a8c9539b8887L    # 20.659322

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const-wide v4, -0x3fd9300000000000L    # -11.40625

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 624
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_16

    .line 518
    .end local v12    # "emptyTextView":Landroid/widget/TextView;
    .end local v14    # "frameLayoutEmpty":Landroid/widget/FrameLayout;
    .end local v20    # "shadow":Landroid/view/View;
    :catch_2
    move-exception v11

    .line 519
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 524
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 525
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 541
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v20    # "shadow":Landroid/view/View;
    :cond_1e
    const/16 v2, 0x3c

    goto/16 :goto_1a

    :cond_1f
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_1b

    :cond_20
    const/4 v4, 0x5

    goto/16 :goto_1c

    :cond_21
    const/4 v5, 0x0

    goto/16 :goto_1d

    :cond_22
    const/high16 v7, 0x41600000    # 14.0f

    goto/16 :goto_1e

    .line 630
    .end local v20    # "shadow":Landroid/view/View;
    :catch_4
    move-exception v11

    .line 631
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 880
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v2, :cond_2

    .line 881
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 882
    .local v1, "mask":I
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 883
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateUserData()V

    .line 896
    .end local v1    # "mask":I
    :cond_1
    :goto_0
    return-void

    .line 885
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v2, :cond_3

    .line 886
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->removeSelfFromStack()V

    goto :goto_0

    .line 887
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    if-ne p1, v2, :cond_1

    .line 888
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1

    .line 890
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->swipeBackEnabled:Z

    .line 132
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 143
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 144
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 145
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->destroy()V

    .line 156
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->destroy()V

    .line 159
    :cond_2
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 943
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    .line 947
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 900
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 901
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v1, :cond_0

    .line 903
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 912
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 913
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->classGuid:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 914
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v2, :cond_0

    .line 916
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1

    .line 923
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 928
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateUserData()V

    .line 929
    invoke-direct {p0, v4}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    .line 930
    iget-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 931
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 932
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 933
    iput-boolean v5, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    .line 934
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 935
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v2, v5

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 939
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 924
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 9
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/16 v8, 0x33

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 681
    if-eqz p1, :cond_1

    .line 683
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 684
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 685
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 691
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    iget v4, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6, v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 692
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    .line 697
    :cond_1
    :goto_1
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-static {v6, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    .prologue
    .line 950
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    .line 951
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 875
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 876
    return-void
.end method

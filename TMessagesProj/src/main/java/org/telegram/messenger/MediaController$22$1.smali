.class Lorg/telegram/messenger/MediaController$22$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController$22;

.field final synthetic val$albumsSorted:Ljava/util/ArrayList;

.field final synthetic val$allPhotosAlbumFinal:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field final synthetic val$cameraAlbumIdFinal:Ljava/lang/Integer;

.field final synthetic val$cameraAlbumVideoIdFinal:Ljava/lang/Integer;

.field final synthetic val$videoAlbumsSorted:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$22;Lorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 3278
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$22$1;->this$0:Lorg/telegram/messenger/MediaController$22;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$22$1;->val$allPhotosAlbumFinal:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$22$1;->val$albumsSorted:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$22$1;->val$cameraAlbumIdFinal:Ljava/lang/Integer;

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$22$1;->val$videoAlbumsSorted:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/MediaController$22$1;->val$cameraAlbumVideoIdFinal:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3281
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$22$1;->val$allPhotosAlbumFinal:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sput-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3282
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$22$1;->this$0:Lorg/telegram/messenger/MediaController$22;

    iget v4, v4, Lorg/telegram/messenger/MediaController$22;->val$guid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$22$1;->val$albumsSorted:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$22$1;->val$cameraAlbumIdFinal:Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$22$1;->val$videoAlbumsSorted:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$22$1;->val$cameraAlbumVideoIdFinal:Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3283
    return-void
.end method

.class public Lorg/telegram/messenger/MediaController$PhotoEntry;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/CharSequence;

.field public dateTaken:J

.field public imageId:I

.field public imagePath:Ljava/lang/String;

.field public isVideo:Z

.field public orientation:I

.field public path:Ljava/lang/String;

.field public thumbPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;IZ)V
    .locals 1
    .param p1, "bucketId"    # I
    .param p2, "imageId"    # I
    .param p3, "dateTaken"    # J
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "orientation"    # I
    .param p7, "isVideo"    # Z

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    .line 177
    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    .line 178
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 179
    iput-object p5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 180
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    .line 181
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    .line 182
    return-void
.end method

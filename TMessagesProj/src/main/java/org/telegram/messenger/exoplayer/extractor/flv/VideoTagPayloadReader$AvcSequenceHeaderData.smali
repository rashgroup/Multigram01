.class final Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
.super Ljava/lang/Object;
.source "VideoTagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvcSequenceHeaderData"
.end annotation


# instance fields
.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "pixelWidthAspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->initializationData:Ljava/util/List;

    .line 191
    iput p2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->nalUnitLengthFieldLength:I

    .line 192
    iput p5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->pixelWidthAspectRatio:F

    .line 193
    iput p3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->width:I

    .line 194
    iput p4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->height:I

    .line 195
    return-void
.end method

.class final Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExposedTrack"
.end annotation


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private final defaultVariantIndex:I

.field private final variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/hls/Variant;)V
    .locals 3
    .param p1, "fixedVariant"    # Lorg/telegram/messenger/exoplayer/hls/Variant;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/hls/Variant;

    aput-object p1, v0, v2

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    .line 879
    iput v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    .line 880
    iput v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 881
    iput v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 882
    return-void
.end method

.method public constructor <init>([Lorg/telegram/messenger/exoplayer/hls/Variant;III)V
    .locals 0
    .param p1, "adaptiveVariants"    # [Lorg/telegram/messenger/exoplayer/hls/Variant;
    .param p2, "defaultVariantIndex"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    .line 887
    iput p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    .line 888
    iput p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 889
    iput p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 890
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/hls/Variant;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 869
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 869
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 869
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 869
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    return v0
.end method

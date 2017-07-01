.class public final Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    }
.end annotation


# static fields
.field private static final FLAG_SIDELOADED:I = 0x4

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private final encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private endOfMdatPosition:J

.field private final extendedTypeScratch:[B

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer/extractor/mp4/Track;)V

    .line 128
    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer/extractor/mp4/Track;)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "sideloadedTrack"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    .line 137
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 138
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 139
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 140
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 141
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 142
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 143
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 145
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 146
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I
    .locals 12
    .param p1, "trackBundle"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .prologue
    const/4 v10, 0x0

    .line 943
    iget-object v7, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    .line 944
    .local v7, "trackFragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    iget-object v3, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 945
    .local v3, "sampleEncryptionData":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v2, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 946
    .local v2, "sampleDescriptionIndex":I
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v9, v2

    .line 948
    .local v0, "encryptionBox":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 949
    .local v8, "vectorSize":I
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v11, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v6, v9, v11

    .line 953
    .local v6, "subsampleEncryption":Z
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    if-eqz v6, :cond_0

    const/16 v9, 0x80

    :goto_0
    or-int/2addr v9, v8

    int-to-byte v9, v9

    aput-byte v9, v11, v10

    .line 954
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 955
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .line 956
    .local v1, "output":Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 958
    invoke-interface {v1, v3, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 960
    if-nez v6, :cond_1

    .line 961
    add-int/lit8 v9, v8, 0x1

    .line 968
    :goto_1
    return v9

    .end local v1    # "output":Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    :cond_0
    move v9, v10

    .line 953
    goto :goto_0

    .line 964
    .restart local v1    # "output":Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 965
    .local v4, "subsampleCount":I
    const/4 v9, -0x2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 966
    mul-int/lit8 v9, v4, 0x6

    add-int/lit8 v5, v9, 0x2

    .line 967
    .local v5, "subsampleDataLength":I
    invoke-interface {v1, v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 968
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v5

    goto :goto_1
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 205
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 206
    return-void
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v1, 0x0

    .line 916
    .local v1, "nextTrackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 918
    .local v2, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 919
    .local v5, "trackBundlesSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 920
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 921
    .local v4, "trackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget v8, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v9, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget v9, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ne v8, v9, :cond_1

    .line 919
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    :cond_1
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v6, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 925
    .local v6, "trunOffset":J
    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    .line 926
    move-object v1, v4

    .line 927
    move-wide v2, v6

    goto :goto_1

    .line 931
    .end local v4    # "trackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v6    # "trunOffset":J
    :cond_2
    return-object v1
.end method

.method private onContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .param p1, "container"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 309
    iget v0, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_1

    .line 310
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    .line 312
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private onLeafAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;J)V
    .locals 4
    .param p1, "leaf"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v1, v2, :cond_0

    .line 302
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    move-result-object v0

    .line 303
    .local v0, "segmentIndex":Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 3
    .param p1, "moof"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 393
    return-void
.end method

.method private onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 26
    .param p1, "moov"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    const/16 v22, 0x1

    :goto_0
    const-string/jumbo v23, "Unexpected moov box."

    invoke-static/range {v22 .. v23}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 320
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 321
    .local v12, "moovLeafChildren":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 323
    .local v13, "moovLeafChildrenSize":I
    const/4 v7, 0x0

    .line 324
    .local v7, "drmInitData":Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_4

    .line 325
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 326
    .local v5, "child":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v0, v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 327
    if-nez v7, :cond_0

    .line 328
    new-instance v7, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    .end local v7    # "drmInitData":Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;
    invoke-direct {v7}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    .line 330
    .restart local v7    # "drmInitData":Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;
    :cond_0
    iget-object v0, v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v16, v0

    .line 331
    .local v16, "psshData":[B
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v21

    .line 332
    .local v21, "uuid":Ljava/util/UUID;
    if-nez v21, :cond_3

    .line 333
    const-string/jumbo v22, "FragmentedMp4Extractor"

    const-string/jumbo v23, "Skipped pssh atom (failed to extract uuid)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v16    # "psshData":[B
    .end local v21    # "uuid":Ljava/util/UUID;
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 319
    .end local v5    # "child":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v7    # "drmInitData":Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;
    .end local v10    # "i":I
    .end local v12    # "moovLeafChildren":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;>;"
    .end local v13    # "moovLeafChildrenSize":I
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 335
    .restart local v5    # "child":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v7    # "drmInitData":Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;
    .restart local v10    # "i":I
    .restart local v12    # "moovLeafChildren":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;>;"
    .restart local v13    # "moovLeafChildrenSize":I
    .restart local v16    # "psshData":[B
    .restart local v21    # "uuid":Ljava/util/UUID;
    :cond_3
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v22

    new-instance v23, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v24, "video/mp4"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V

    goto :goto_2

    .line 340
    .end local v5    # "child":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v16    # "psshData":[B
    .end local v21    # "uuid":Ljava/util/UUID;
    :cond_4
    if-eqz v7, :cond_5

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V

    .line 345
    :cond_5
    sget v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v14

    .line 346
    .local v14, "mvex":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 347
    .local v6, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    const-wide/16 v8, -0x1

    .line 348
    .local v8, "duration":J
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v15

    .line 349
    .local v15, "mvexChildrenSize":I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_8

    .line 350
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 351
    .local v4, "atom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 352
    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v20

    .line 353
    .local v20, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    .end local v20    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 354
    :cond_7
    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mehd:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 355
    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v8

    goto :goto_4

    .line 360
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_8
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 361
    .local v19, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v11

    .line 362
    .local v11, "moovContainerChildrenSize":I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v11, :cond_a

    .line 363
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 364
    .local v4, "atom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 365
    sget v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v0, v8, v9, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-result-object v17

    .line 367
    .local v17, "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    if-eqz v17, :cond_9

    .line 368
    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    .end local v17    # "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 372
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_a
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 374
    .local v18, "trackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-nez v22, :cond_c

    .line 376
    const/4 v10, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v10, v0, :cond_b

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v22, v0

    new-instance v24, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 379
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 385
    :goto_7
    const/4 v10, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v10, v0, :cond_e

    .line 386
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    .line 387
    .restart local v17    # "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;)V

    .line 385
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 381
    .end local v17    # "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/16 v22, 0x1

    :goto_9
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_7

    :cond_d
    const/16 v22, 0x0

    goto :goto_9

    .line 389
    :cond_e
    return-void
.end method

.method private static parseMehd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mehd"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 414
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 415
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 416
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 417
    .local v1, "version":I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseMoof(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 5
    .param p0, "moof"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 423
    .local v2, "moofContainerChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 424
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 425
    .local v0, "child":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-ne v3, v4, :cond_0

    .line 426
    invoke-static {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "child":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_1
    return-void
.end method

.method private static parseSaio(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 8
    .param p0, "saio"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 523
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 524
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 525
    .local v2, "fullAtom":I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 526
    .local v1, "flags":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v5, :cond_0

    .line 527
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 530
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 531
    .local v0, "entryCount":I
    if-eq v0, v5, :cond_1

    .line 533
    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected saio entry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 536
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 537
    .local v3, "version":I
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 539
    return-void

    .line 537
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    goto :goto_0
.end method

.method private static parseSaiz(Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 13
    .param p0, "encryptionBox"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 486
    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 487
    .local v9, "vectorSize":I
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 488
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 489
    .local v2, "fullAtom":I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 490
    .local v1, "flags":I
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 491
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 493
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 495
    .local v0, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 496
    .local v4, "sampleCount":I
    iget v10, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v4, v10, :cond_1

    .line 497
    new-instance v10, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Length mismatch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 500
    :cond_1
    const/4 v8, 0x0

    .line 501
    .local v8, "totalSize":I
    if-nez v0, :cond_3

    .line 502
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 503
    .local v5, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 504
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 505
    .local v6, "sampleInfoSize":I
    add-int/2addr v8, v6

    .line 506
    if-le v6, v9, :cond_2

    const/4 v10, 0x1

    :goto_1
    aput-boolean v10, v5, v3

    .line 503
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 509
    .end local v3    # "i":I
    .end local v5    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v6    # "sampleInfoSize":I
    :cond_3
    if-le v0, v9, :cond_5

    const/4 v7, 0x1

    .line 510
    .local v7, "subsampleEncryption":Z
    :goto_2
    mul-int v10, v0, v4

    add-int/2addr v8, v10

    .line 511
    iget-object v10, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 513
    .end local v7    # "subsampleEncryption":Z
    :cond_4
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 514
    return-void

    .line 509
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 7
    .param p0, "senc"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 702
    add-int/lit8 v5, p1, 0x8

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 703
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 704
    .local v1, "fullAtom":I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 706
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 708
    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v5, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 711
    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 712
    .local v3, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 713
    .local v2, "sampleCount":I
    iget v5, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v2, v5, :cond_2

    .line 714
    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Length mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "sampleCount":I
    .end local v3    # "subsampleEncryption":Z
    :cond_1
    move v3, v4

    .line 711
    goto :goto_0

    .line 717
    .restart local v2    # "sampleCount":I
    .restart local v3    # "subsampleEncryption":Z
    :cond_2
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v4, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 718
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 719
    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    .line 720
    return-void
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 1
    .param p0, "senc"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    .line 698
    return-void
.end method

.method private static parseSidx(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;
    .locals 29
    .param p0, "atom"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 727
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 729
    .local v14, "fullAtom":I
    invoke-static {v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v27

    .line 731
    .local v27, "version":I
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 734
    .local v8, "timescale":J
    move-wide/from16 v16, p1

    .line 735
    .local v16, "offset":J
    if-nez v27, :cond_0

    .line 736
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 737
    .local v12, "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    add-long v16, v16, v6

    .line 743
    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 745
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    .line 746
    .local v19, "referenceCount":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 747
    .local v22, "sizes":[I
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 748
    .local v18, "offsets":[J
    move/from16 v0, v19

    new-array v10, v0, [J

    .line 749
    .local v10, "durationsUs":[J
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v23, v0

    .line 751
    .local v23, "timesUs":[J
    move-wide v4, v12

    .line 752
    .local v4, "time":J
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 753
    .local v24, "timeUs":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    .line 754
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 756
    .local v11, "firstInt":I
    const/high16 v6, -0x80000000

    and-int v26, v6, v11

    .line 757
    .local v26, "type":I
    if-eqz v26, :cond_1

    .line 758
    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v7, "Unhandled indirect reference"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 739
    .end local v4    # "time":J
    .end local v10    # "durationsUs":[J
    .end local v11    # "firstInt":I
    .end local v12    # "earliestPresentationTime":J
    .end local v15    # "i":I
    .end local v18    # "offsets":[J
    .end local v19    # "referenceCount":I
    .end local v22    # "sizes":[I
    .end local v23    # "timesUs":[J
    .end local v24    # "timeUs":J
    .end local v26    # "type":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    .line 740
    .restart local v12    # "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    add-long v16, v16, v6

    goto :goto_0

    .line 760
    .restart local v4    # "time":J
    .restart local v10    # "durationsUs":[J
    .restart local v11    # "firstInt":I
    .restart local v15    # "i":I
    .restart local v18    # "offsets":[J
    .restart local v19    # "referenceCount":I
    .restart local v22    # "sizes":[I
    .restart local v23    # "timesUs":[J
    .restart local v24    # "timeUs":J
    .restart local v26    # "type":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v20

    .line 762
    .local v20, "referenceDuration":J
    const v6, 0x7fffffff

    and-int/2addr v6, v11

    aput v6, v22, v15

    .line 763
    aput-wide v16, v18, v15

    .line 767
    aput-wide v24, v23, v15

    .line 768
    add-long v4, v4, v20

    .line 769
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 770
    aget-wide v6, v23, v15

    sub-long v6, v24, v6

    aput-wide v6, v10, v15

    .line 772
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 773
    aget v6, v22, v15

    int-to-long v6, v6

    add-long v16, v16, v6

    .line 753
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 776
    .end local v11    # "firstInt":I
    .end local v20    # "referenceDuration":J
    .end local v26    # "type":I
    :cond_2
    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v6, v0, v1, v10, v2}, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v6
.end method

.method private static parseTfdt(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 4
    .param p0, "tfdt"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 589
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 590
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 591
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 592
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseTfhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 13
    .param p0, "tfhd"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 554
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 555
    .local v8, "fullAtom":I
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 556
    .local v0, "atomFlags":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 557
    .local v10, "trackId":I
    and-int/lit8 v11, p2, 0x4

    if-nez v11, :cond_0

    .end local v10    # "trackId":I
    :goto_0
    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 558
    .local v9, "trackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v9, :cond_1

    .line 559
    const/4 v9, 0x0

    .line 579
    .end local v9    # "trackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :goto_1
    return-object v9

    .line 557
    .restart local v10    # "trackId":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 561
    .end local v10    # "trackId":I
    .restart local v9    # "trackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_1
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_2

    .line 562
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    .line 563
    .local v2, "baseDataPosition":J
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 564
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 567
    .end local v2    # "baseDataPosition":J
    :cond_2
    iget-object v7, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 568
    .local v7, "defaultSampleValues":Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;
    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 571
    .local v1, "defaultSampleDescriptionIndex":I
    :goto_2
    and-int/lit8 v11, v0, 0x8

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 573
    .local v4, "defaultSampleDuration":I
    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 575
    .local v6, "defaultSampleSize":I
    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 577
    .local v5, "defaultSampleFlags":I
    :goto_5
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    new-instance v12, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v12, v1, v4, v6, v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v12, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    goto :goto_1

    .line 568
    .end local v1    # "defaultSampleDescriptionIndex":I
    .end local v4    # "defaultSampleDuration":I
    .end local v5    # "defaultSampleFlags":I
    .end local v6    # "defaultSampleSize":I
    :cond_3
    iget v1, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    goto :goto_2

    .line 571
    .restart local v1    # "defaultSampleDescriptionIndex":I
    :cond_4
    iget v4, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    goto :goto_3

    .line 573
    .restart local v4    # "defaultSampleDuration":I
    :cond_5
    iget v6, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    goto :goto_4

    .line 575
    .restart local v6    # "defaultSampleSize":I
    :cond_6
    iget v5, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_5
.end method

.method private static parseTraf(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 20
    .param p0, "traf"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getChildAtomOfTypeCount(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 437
    new-instance v18, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v19, "Trun count in traf != 1 (unsupported)."

    invoke-direct/range {v18 .. v19}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 440
    :cond_0
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    .line 441
    .local v14, "tfhd":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v15

    .line 442
    .local v15, "trackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v15, :cond_2

    .line 482
    :cond_1
    return-void

    .line 446
    :cond_2
    iget-object v8, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    .line 447
    .local v8, "fragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    iget-wide v6, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 448
    .local v6, "decodeTime":J
    invoke-virtual {v15}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 450
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    .line 451
    .local v13, "tfdtAtom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v13, :cond_3

    and-int/lit8 v18, p2, 0x2

    if-nez v18, :cond_3

    .line 452
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    .line 455
    :cond_3
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v17

    .line 456
    .local v17, "trun":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v15, v6, v7, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    .line 458
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 459
    .local v11, "saiz":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_4

    .line 460
    iget-object v0, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v18, v0

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v19, v0

    aget-object v16, v18, v19

    .line 462
    .local v16, "trackEncryptionBox":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    iget-object v0, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    .line 465
    .end local v16    # "trackEncryptionBox":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    :cond_4
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    .line 466
    .local v10, "saio":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v10, :cond_5

    .line 467
    iget-object v0, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    .line 470
    :cond_5
    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 471
    .local v12, "senc":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_6

    .line 472
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    .line 475
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    .line 476
    .local v5, "childrenSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v5, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 478
    .local v4, "atom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v18, v0

    sget v19, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 479
    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v8, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;[B)V

    .line 476
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private static parseTrex(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "trex"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 400
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 401
    .local v4, "trackId":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 402
    .local v0, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 403
    .local v1, "defaultSampleDuration":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 404
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 406
    .local v2, "defaultSampleFlags":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v0, v1, v3, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 35
    .param p0, "trackBundle"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "decodeTime"    # J
    .param p3, "flags"    # I
    .param p4, "trun"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 606
    const/16 v4, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 607
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 608
    .local v15, "fullAtom":I
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v8

    .line 610
    .local v8, "atomFlags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v30, v0

    .line 611
    .local v30, "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    .line 612
    .local v14, "fragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    iget-object v9, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 614
    .local v9, "defaultSampleValues":Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    .line 615
    .local v19, "sampleCount":I
    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_0

    .line 616
    iget-wide v4, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v4, v4, v32

    iput-wide v4, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 619
    :cond_0
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    .line 620
    .local v13, "firstSampleFlagsPresent":Z
    :goto_0
    iget v12, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    .line 621
    .local v12, "firstSampleFlags":I
    if-eqz v13, :cond_1

    .line 622
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 625
    :cond_1
    and-int/lit16 v4, v8, 0x100

    if-eqz v4, :cond_5

    const/16 v22, 0x1

    .line 626
    .local v22, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v4, v8, 0x200

    if-eqz v4, :cond_6

    const/16 v29, 0x1

    .line 627
    .local v29, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_7

    const/16 v24, 0x1

    .line 628
    .local v24, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_8

    const/16 v18, 0x1

    .line 633
    .local v18, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v10, 0x0

    .line 637
    .local v10, "edtsOffset":J
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_2

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v32, 0x0

    cmp-long v4, v4, v32

    if-nez v4, :cond_2

    .line 639
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v5, 0x0

    aget-wide v2, v4, v5

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v30

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 642
    :cond_2
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->initTables(I)V

    .line 643
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v28, v0

    .line 644
    .local v28, "sampleSizeTable":[I
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    move-object/from16 v17, v0

    .line 645
    .local v17, "sampleCompositionTimeOffsetTable":[I
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v20, v0

    .line 646
    .local v20, "sampleDecodingTimeTable":[J
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v25, v0

    .line 648
    .local v25, "sampleIsSyncFrameTable":[Z
    move-object/from16 v0, v30

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    .line 649
    .local v6, "timescale":J
    move-wide/from16 v2, p1

    .line 650
    .local v2, "cumulativeTime":J
    move-object/from16 v0, v30

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->type:I

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-ne v4, v5, :cond_9

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_9

    const/16 v31, 0x1

    .line 652
    .local v31, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_5
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 654
    if-eqz v22, :cond_a

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    .line 656
    .local v21, "sampleDuration":I
    :goto_7
    if-eqz v29, :cond_b

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v27

    .line 657
    .local v27, "sampleSize":I
    :goto_8
    if-nez v16, :cond_c

    if-eqz v13, :cond_c

    move/from16 v23, v12

    .line 659
    .local v23, "sampleFlags":I
    :goto_9
    if-eqz v18, :cond_e

    .line 665
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v26

    .line 666
    .local v26, "sampleOffset":I
    move/from16 v0, v26

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v17, v16

    .line 670
    .end local v26    # "sampleOffset":I
    :goto_a
    const-wide/16 v4, 0x3e8

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v20, v16

    .line 672
    aput v27, v28, v16

    .line 673
    shr-int/lit8 v4, v23, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_f

    if-eqz v31, :cond_3

    if-nez v16, :cond_f

    :cond_3
    const/4 v4, 0x1

    :goto_b
    aput-boolean v4, v25, v16

    .line 675
    move/from16 v0, v21

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 652
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 619
    .end local v2    # "cumulativeTime":J
    .end local v6    # "timescale":J
    .end local v10    # "edtsOffset":J
    .end local v12    # "firstSampleFlags":I
    .end local v13    # "firstSampleFlagsPresent":Z
    .end local v16    # "i":I
    .end local v17    # "sampleCompositionTimeOffsetTable":[I
    .end local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .end local v20    # "sampleDecodingTimeTable":[J
    .end local v21    # "sampleDuration":I
    .end local v22    # "sampleDurationsPresent":Z
    .end local v23    # "sampleFlags":I
    .end local v24    # "sampleFlagsPresent":Z
    .end local v25    # "sampleIsSyncFrameTable":[Z
    .end local v27    # "sampleSize":I
    .end local v28    # "sampleSizeTable":[I
    .end local v29    # "sampleSizesPresent":Z
    .end local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 625
    .restart local v12    # "firstSampleFlags":I
    .restart local v13    # "firstSampleFlagsPresent":Z
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 626
    .restart local v22    # "sampleDurationsPresent":Z
    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 627
    .restart local v29    # "sampleSizesPresent":Z
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 628
    .restart local v24    # "sampleFlagsPresent":Z
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 650
    .restart local v2    # "cumulativeTime":J
    .restart local v6    # "timescale":J
    .restart local v10    # "edtsOffset":J
    .restart local v17    # "sampleCompositionTimeOffsetTable":[I
    .restart local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .restart local v20    # "sampleDecodingTimeTable":[J
    .restart local v25    # "sampleIsSyncFrameTable":[Z
    .restart local v28    # "sampleSizeTable":[I
    :cond_9
    const/16 v31, 0x0

    goto :goto_5

    .line 654
    .restart local v16    # "i":I
    .restart local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_a
    iget v0, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v21, v0

    goto :goto_7

    .line 656
    .restart local v21    # "sampleDuration":I
    :cond_b
    iget v0, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v27, v0

    goto :goto_8

    .line 657
    .restart local v27    # "sampleSize":I
    :cond_c
    if-eqz v24, :cond_d

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v23

    goto :goto_9

    :cond_d
    iget v0, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v23, v0

    goto :goto_9

    .line 668
    .restart local v23    # "sampleFlags":I
    :cond_e
    const/4 v4, 0x0

    aput v4, v17, v16

    goto :goto_a

    .line 673
    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    .line 677
    .end local v21    # "sampleDuration":I
    .end local v23    # "sampleFlags":I
    .end local v27    # "sampleSize":I
    :cond_10
    iput-wide v2, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 678
    return-void
.end method

.method private static parseUuid(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .param p0, "uuid"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 682
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 683
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 686
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private processAtomEnded(J)V
    .locals 3
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 292
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 296
    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 13
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 209
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v8, :cond_1

    .line 211
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-interface {p1, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_0

    .line 212
    const/4 v8, 0x0

    .line 277
    :goto_0
    return v8

    .line 214
    :cond_0
    const/16 v8, 0x8

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 215
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 216
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 217
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 220
    :cond_1
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 222
    const/16 v5, 0x8

    .line 223
    .local v5, "headerBytesRemaining":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    invoke-interface {p1, v8, v9, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 224
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v8, v5

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 225
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 228
    .end local v5    # "headerBytesRemaining":I
    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    sub-long v0, v8, v10

    .line 229
    .local v0, "atomPosition":J
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v8, v9, :cond_3

    .line 231
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 232
    .local v7, "trackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 233
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v4, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    .line 234
    .local v4, "fragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 235
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 239
    .end local v4    # "fragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .end local v6    # "i":I
    .end local v7    # "trackCount":I
    :cond_3
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v8, v9, :cond_5

    .line 240
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 241
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 242
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v8, :cond_4

    .line 243
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v9, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    .line 244
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 246
    :cond_4
    const/4 v8, 0x2

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 247
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 250
    :cond_5
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 251
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    sub-long v2, v8, v10

    .line 252
    .local v2, "endPosition":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v9, v10, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 253
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 254
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 277
    .end local v2    # "endPosition":J
    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 257
    .restart local v2    # "endPosition":J
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 259
    .end local v2    # "endPosition":J
    :cond_7
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 260
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_8

    .line 261
    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 263
    :cond_8
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 264
    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 266
    :cond_9
    new-instance v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v9, v10

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 267
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v10, v10, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    .line 270
    :cond_a
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_b

    .line 271
    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 273
    :cond_b
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 274
    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 281
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int v0, v1, v2

    .line 282
    .local v0, "atomPayloadSize":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 284
    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;J)V

    .line 288
    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 289
    return-void

    .line 286
    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 10
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 780
    const/4 v4, 0x0

    .line 781
    .local v4, "nextTrackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 782
    .local v2, "nextDataOffset":J
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 783
    .local v5, "trackBundlesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 784
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    .line 785
    .local v6, "trackFragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    iget-boolean v7, v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_0

    iget-wide v8, v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v8, v2

    if-gez v7, :cond_0

    .line 787
    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 788
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextTrackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 783
    .restart local v4    # "nextTrackBundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 791
    .end local v6    # "trackFragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    :cond_1
    if-nez v4, :cond_2

    .line 792
    const/4 v7, 0x3

    iput v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 801
    :goto_1
    return-void

    .line 795
    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-int v0, v8

    .line 796
    .local v0, "bytesToSkip":I
    if-gez v0, :cond_3

    .line 797
    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Offset to encryption data was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 799
    :cond_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 800
    iget-object v7, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 24
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 818
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 819
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v7, :cond_3

    .line 820
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 821
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v7, :cond_1

    .line 824
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    move-wide/from16 v20, v0

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    .line 825
    .local v2, "bytesToSkip":I
    if-gez v2, :cond_0

    .line 826
    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Offset to end of mdat was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 828
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 829
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 830
    const/4 v7, 0x0

    .line 907
    .end local v2    # "bytesToSkip":I
    :goto_0
    return v7

    .line 833
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v14, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 835
    .local v14, "nextDataPosition":J
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v20, v14, v20

    move-wide/from16 v0, v20

    long-to-int v2, v0

    .line 836
    .restart local v2    # "bytesToSkip":I
    if-gez v2, :cond_2

    .line 837
    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Offset to sample data was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 839
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 841
    .end local v2    # "bytesToSkip":I
    .end local v14    # "nextDataPosition":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v7, v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 843
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_5

    .line 844
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 845
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 849
    :goto_1
    const/4 v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 850
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 853
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v10, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    .line 854
    .local v10, "fragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v18, v0

    .line 855
    .local v18, "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v3, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .line 856
    .local v3, "output":Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    move/from16 v17, v0

    .line 857
    .local v17, "sampleIndex":I
    move-object/from16 v0, v18

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 860
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v11, v7, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    .line 861
    .local v11, "nalLengthData":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    .line 862
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    .line 863
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    .line 864
    move-object/from16 v0, v18

    iget v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 865
    .local v12, "nalUnitLengthFieldLength":I
    move-object/from16 v0, v18

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v13, v7, 0x4

    .line 869
    .local v13, "nalUnitLengthFieldLengthDiff":I
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_8

    .line 870
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v7, :cond_6

    .line 872
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v13, v12}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 873
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 876
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 877
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-interface {v3, v7, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 878
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 879
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v7, v13

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_2

    .line 847
    .end local v3    # "output":Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .end local v10    # "fragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .end local v11    # "nalLengthData":[B
    .end local v12    # "nalUnitLengthFieldLength":I
    .end local v13    # "nalUnitLengthFieldLengthDiff":I
    .end local v17    # "sampleIndex":I
    .end local v18    # "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    :cond_5
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto/16 :goto_1

    .line 882
    .restart local v3    # "output":Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .restart local v10    # "fragment":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
    .restart local v11    # "nalLengthData":[B
    .restart local v12    # "nalUnitLengthFieldLength":I
    .restart local v13    # "nalUnitLengthFieldLengthDiff":I
    .restart local v17    # "sampleIndex":I
    .restart local v18    # "track":Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 883
    .local v19, "writtenBytes":I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 884
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 888
    .end local v11    # "nalLengthData":[B
    .end local v12    # "nalUnitLengthFieldLength":I
    .end local v13    # "nalUnitLengthFieldLengthDiff":I
    .end local v19    # "writtenBytes":I
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_8

    .line 889
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 890
    .restart local v19    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_3

    .line 894
    .end local v19    # "writtenBytes":I
    :cond_8
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v4, v20, v22

    .line 895
    .local v4, "sampleTimeUs":J
    iget-boolean v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    :goto_4
    iget-object v8, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v8, v8, v17

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_5
    or-int v6, v7, v8

    .line 897
    .local v6, "sampleFlags":I
    iget-object v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v0, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v16, v0

    .line 898
    .local v16, "sampleDescriptionIndex":I
    iget-boolean v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_c

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v7, v7, v16

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 900
    .local v9, "encryptionKey":[B
    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 902
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 903
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v8, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ne v7, v8, :cond_9

    .line 904
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 906
    :cond_9
    const/4 v7, 0x3

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 907
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 895
    .end local v6    # "sampleFlags":I
    .end local v9    # "encryptionKey":[B
    .end local v16    # "sampleDescriptionIndex":I
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 898
    .restart local v6    # "sampleFlags":I
    .restart local v16    # "sampleDescriptionIndex":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_6
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 983
    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 973
    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mehd:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    .prologue
    const/4 v3, 0x0

    .line 155
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    .line 156
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    if-eqz v1, :cond_0

    .line 157
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-interface {p1, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    .line 158
    .local v0, "bundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v2, v3, v3, v3, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;)V

    .line 159
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 162
    .end local v0    # "bundle":Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_0
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 183
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 185
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, -0x1

    goto :goto_1

    .line 190
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public seek()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 167
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 168
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 171
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 172
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->sniffFragmented(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

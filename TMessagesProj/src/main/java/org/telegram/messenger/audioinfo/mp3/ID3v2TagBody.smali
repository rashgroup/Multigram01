.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
.super Ljava/lang/Object;
.source "ID3v2TagBody.java"


# instance fields
.field private final data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

.field private final input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

.field private final tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V
    .locals 6
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .param p5, "tagHeader"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    int-to-long v4, p4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    .line 32
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    .line 33
    iput-object p5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    .line 34
    return-void
.end method


# virtual methods
.method public frameBody(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    .locals 18
    .param p1, "frameHeader"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v6

    .line 54
    .local v6, "dataLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    .line 55
    .local v3, "input":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isUnsynchronization()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v11

    .line 57
    .local v11, "bytes":[B
    const/4 v12, 0x0

    .line 58
    .local v12, "ff":Z
    const/4 v15, 0x0

    .line 59
    .local v15, "len":I
    move-object v9, v11

    .local v9, "arr$":[B
    array-length v0, v9

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move/from16 v16, v15

    .end local v15    # "len":I
    .local v16, "len":I
    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    aget-byte v10, v9, v13

    .line 60
    .local v10, "b":B
    if-eqz v12, :cond_0

    if-eqz v10, :cond_6

    .line 61
    :cond_0
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "len":I
    .restart local v15    # "len":I
    aput-byte v10, v11, v16

    .line 63
    :goto_1
    const/16 v2, 0xff

    if-ne v10, v2, :cond_1

    const/4 v12, 0x1

    .line 59
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    .end local v15    # "len":I
    .restart local v16    # "len":I
    goto :goto_0

    .line 63
    .end local v16    # "len":I
    .restart local v15    # "len":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 65
    .end local v10    # "b":B
    .end local v15    # "len":I
    .restart local v16    # "len":I
    :cond_2
    move/from16 v6, v16

    .line 66
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .end local v3    # "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-direct {v3, v11, v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 68
    .end local v9    # "arr$":[B
    .end local v11    # "bytes":[B
    .end local v12    # "ff":Z
    .end local v13    # "i$":I
    .end local v16    # "len":I
    .end local v17    # "len$":I
    .restart local v3    # "input":Ljava/io/InputStream;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isEncryption()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string/jumbo v4, "Frame encryption is not supported"

    invoke-direct {v2, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isCompression()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getDataLengthIndicator()I

    move-result v6

    .line 73
    new-instance v14, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v14, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "input":Ljava/io/InputStream;
    .local v14, "input":Ljava/io/InputStream;
    move-object v3, v14

    .line 75
    .end local v14    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :cond_5
    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getHeaderSize()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)V

    return-object v2

    .restart local v9    # "arr$":[B
    .restart local v10    # "b":B
    .restart local v11    # "bytes":[B
    .restart local v12    # "ff":Z
    .restart local v13    # "i$":I
    .restart local v16    # "len":I
    .restart local v17    # "len$":I
    :cond_6
    move/from16 v15, v16

    .end local v16    # "len":I
    .restart local v15    # "len":I
    goto :goto_1
.end method

.method public getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingLength()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getRemainingLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id3v2tag[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " left]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

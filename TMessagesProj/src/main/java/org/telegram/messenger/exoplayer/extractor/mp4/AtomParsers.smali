.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    return-void
.end method

.method private static findEsdsPosition(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)I
    .locals 5
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 935
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 936
    .local v0, "childAtomPosition":I
    :goto_0
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2

    .line 937
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 938
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 939
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 940
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 941
    .local v2, "childType":I
    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    .line 946
    .end local v0    # "childAtomPosition":I
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :goto_2
    return v0

    .line 939
    .restart local v0    # "childAtomPosition":I
    .restart local v1    # "childAtomSize":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 944
    .restart local v2    # "childType":I
    :cond_1
    add-int/2addr v0, v1

    .line 945
    goto :goto_0

    .line 946
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 23
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "durationUs"    # J
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "isQuickTime"    # Z
    .param p9, "out"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .param p10, "entryIndex"    # I

    .prologue
    .line 808
    add-int/lit8 v4, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 810
    const/16 v22, 0x0

    .line 811
    .local v22, "quickTimeSoundDescriptionVersion":I
    if-eqz p8, :cond_6

    .line 812
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v22

    .line 814
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 822
    :goto_0
    if-eqz v22, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_7

    .line 823
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 824
    .local v10, "channelCount":I
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v11

    .line 827
    .local v11, "sampleRate":I
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    .line 828
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 845
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 846
    .local v5, "mimeType":Ljava/lang/String;
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 847
    const-string/jumbo v5, "audio/ac3"

    .line 864
    :cond_2
    :goto_2
    const/16 v20, 0x0

    .line 865
    .local v20, "initializationData":[B
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 866
    .local v16, "childAtomPosition":I
    :goto_3
    sub-int v4, v16, p2

    move/from16 v0, p3

    if-ge v4, v0, :cond_19

    .line 867
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 868
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v17

    .line 869
    .local v17, "childAtomSize":I
    if-lez v17, :cond_11

    const/4 v4, 0x1

    :goto_4
    const-string/jumbo v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 870
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    .line 871
    .local v18, "childAtomType":I
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_3

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    .line 872
    :cond_3
    const/16 v19, -0x1

    .line 873
    .local v19, "esdsAtomPosition":I
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_12

    .line 874
    move/from16 v19, v16

    .line 878
    :cond_4
    :goto_5
    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_13

    .line 879
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v21

    .line 881
    .local v21, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v5    # "mimeType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 882
    .restart local v5    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    .end local v20    # "initializationData":[B
    check-cast v20, [B

    .line 883
    .restart local v20    # "initializationData":[B
    const-string/jumbo v4, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 886
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v15

    .line 888
    .local v15, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 889
    iget-object v4, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 915
    .end local v15    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v19    # "esdsAtomPosition":I
    .end local v21    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_5
    :goto_6
    add-int v16, v16, v17

    .line 916
    goto :goto_3

    .line 816
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v10    # "channelCount":I
    .end local v11    # "sampleRate":I
    .end local v16    # "childAtomPosition":I
    .end local v17    # "childAtomSize":I
    .end local v18    # "childAtomType":I
    .end local v20    # "initializationData":[B
    :cond_6
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    .line 830
    :cond_7
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_15

    .line 831
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 833
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v11, v6

    .line 834
    .restart local v11    # "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 838
    .restart local v10    # "channelCount":I
    const/16 v4, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    .line 848
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_8
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    .line 849
    const-string/jumbo v5, "audio/eac3"

    goto/16 :goto_2

    .line 850
    :cond_9
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 851
    const-string/jumbo v5, "audio/vnd.dts"

    goto/16 :goto_2

    .line 852
    :cond_a
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    .line 853
    :cond_b
    const-string/jumbo v5, "audio/vnd.dts.hd"

    goto/16 :goto_2

    .line 854
    :cond_c
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 855
    const-string/jumbo v5, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    .line 856
    :cond_d
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_e

    .line 857
    const-string/jumbo v5, "audio/3gpp"

    goto/16 :goto_2

    .line 858
    :cond_e
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    .line 859
    const-string/jumbo v5, "audio/amr-wb"

    goto/16 :goto_2

    .line 860
    :cond_f
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_10

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 861
    :cond_10
    const-string/jumbo v5, "audio/raw"

    goto/16 :goto_2

    .line 869
    .restart local v16    # "childAtomPosition":I
    .restart local v17    # "childAtomSize":I
    .restart local v20    # "initializationData":[B
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 875
    .restart local v18    # "childAtomType":I
    .restart local v19    # "esdsAtomPosition":I
    :cond_12
    if-eqz p8, :cond_4

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_wave:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_4

    .line 876
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->findEsdsPosition(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)I

    move-result v19

    goto/16 :goto_5

    .line 891
    :cond_13
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_5

    .line 892
    move-object/from16 v0, p9

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v6

    aput-object v6, v4, p10

    goto/16 :goto_6

    .line 895
    .end local v19    # "esdsAtomPosition":I
    :cond_14
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_16

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_16

    .line 898
    add-int/lit8 v4, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 899
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v4, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 931
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v10    # "channelCount":I
    .end local v11    # "sampleRate":I
    .end local v16    # "childAtomPosition":I
    .end local v17    # "childAtomSize":I
    .end local v18    # "childAtomType":I
    .end local v20    # "initializationData":[B
    :cond_15
    :goto_7
    return-void

    .line 902
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v10    # "channelCount":I
    .restart local v11    # "sampleRate":I
    .restart local v16    # "childAtomPosition":I
    .restart local v17    # "childAtomSize":I
    .restart local v18    # "childAtomType":I
    .restart local v20    # "initializationData":[B
    :cond_16
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_17

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_17

    .line 903
    add-int/lit8 v4, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 904
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v4, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_7

    .line 907
    :cond_17
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_18

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_18

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_18

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    :cond_18
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ddts:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_5

    .line 910
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v12, 0x0

    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-static/range {v4 .. v13}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_7

    .line 919
    .end local v17    # "childAtomSize":I
    .end local v18    # "childAtomType":I
    :cond_19
    if-eqz v5, :cond_15

    .line 924
    const-string/jumbo v4, "audio/raw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v14, 0x2

    .line 927
    .local v14, "pcmEncoding":I
    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    if-nez v20, :cond_1b

    const/4 v12, 0x0

    :goto_9
    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-static/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_7

    .line 924
    .end local v14    # "pcmEncoding":I
    :cond_1a
    const/4 v14, -0x1

    goto :goto_8

    .line 927
    .restart local v14    # "pcmEncoding":I
    :cond_1b
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_9
.end method

.method private static parseAvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    .locals 8
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 650
    add-int/lit8 v7, p1, 0x8

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 652
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    add-int/lit8 v2, v7, 0x1

    .line 653
    .local v2, "nalUnitLengthFieldLength":I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    .line 654
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 656
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/high16 v5, 0x3f800000    # 1.0f

    .line 658
    .local v5, "pixelWidthAspectRatio":F
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v4, v7, 0x1f

    .line 659
    .local v4, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 660
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 663
    .local v3, "numPictureParameterSets":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 664
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 667
    :cond_2
    if-lez v4, :cond_3

    .line 669
    new-instance v6, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 671
    .local v6, "spsDataBitArray":Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;
    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 672
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v7

    iget v5, v7, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 675
    .end local v6    # "spsDataBitArray":Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;
    :cond_3
    new-instance v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    invoke-direct {v7, v0, v2, v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;-><init>(Ljava/util/List;IF)V

    return-object v7
.end method

.method private static parseEdts(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 13
    .param p0, "edtsAtom"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 729
    if-eqz p0, :cond_0

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .local v2, "elst":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v2, :cond_1

    .line 730
    .end local v2    # "elst":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_0
    invoke-static {v10, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 750
    :goto_0
    return-object v9

    .line 732
    .restart local v2    # "elst":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 733
    .local v3, "elstData":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 734
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 735
    .local v5, "fullAtom":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    .line 736
    .local v8, "version":I
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 737
    .local v4, "entryCount":I
    new-array v0, v4, [J

    .line 738
    .local v0, "editListDurations":[J
    new-array v1, v4, [J

    .line 739
    .local v1, "editListMediaTimes":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_5

    .line 740
    if-ne v8, v12, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    :goto_2
    aput-wide v10, v0, v6

    .line 742
    if-ne v8, v12, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    :goto_3
    aput-wide v10, v1, v6

    .line 743
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 744
    .local v7, "mediaRateInteger":I
    if-eq v7, v12, :cond_4

    .line 746
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Unsupported media rate."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 740
    .end local v7    # "mediaRateInteger":I
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    goto :goto_2

    .line 742
    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v10, v9

    goto :goto_3

    .line 748
    .restart local v7    # "mediaRateInteger":I
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 739
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 750
    .end local v7    # "mediaRateInteger":I
    :cond_5
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 951
    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 953
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 954
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    .line 955
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 957
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 958
    .local v0, "flags":I
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_0

    .line 959
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 961
    :cond_0
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_1

    .line 962
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 964
    :cond_1
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_2

    .line 965
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 969
    :cond_2
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 970
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    .line 973
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 975
    .local v4, "objectTypeIndication":I
    sparse-switch v4, :sswitch_data_0

    .line 1009
    const/4 v3, 0x0

    .line 1013
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1016
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1017
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v2

    .line 1018
    .local v2, "initializationDataSize":I
    new-array v1, v2, [B

    .line 1019
    .local v1, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 1020
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .end local v1    # "initializationData":[B
    .end local v2    # "initializationDataSize":I
    :goto_1
    return-object v5

    .line 977
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v3, "audio/mpeg"

    .line 978
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 980
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v3, "video/mp4v-es"

    .line 981
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 983
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "video/avc"

    .line 984
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 986
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "video/hevc"

    .line 987
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 992
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v3, "audio/mp4a-latm"

    .line 993
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 995
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v3, "audio/ac3"

    .line 996
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 998
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v3, "audio/eac3"

    .line 999
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1002
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v3, "audio/vnd.dts"

    .line 1003
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 1006
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v3, "audio/vnd.dts.hd"

    .line 1007
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 975
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 1025
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1026
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1027
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 1028
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1029
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 1031
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 1
    .param p0, "hdlr"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 502
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 503
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 14
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    add-int/lit8 v11, p1, 0x8

    add-int/lit8 v11, v11, 0x15

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 682
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    and-int/lit8 v7, v11, 0x3

    .line 685
    .local v7, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 686
    .local v9, "numberOfArrays":I
    const/4 v2, 0x0

    .line 687
    .local v2, "csdLength":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 688
    .local v3, "csdStartPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 689
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 690
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 691
    .local v10, "numberOfNalUnits":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v10, :cond_0

    .line 692
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 693
    .local v8, "nalUnitLength":I
    add-int/lit8 v11, v8, 0x4

    add-int/2addr v2, v11

    .line 694
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 691
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 688
    .end local v8    # "nalUnitLength":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 699
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_1
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 700
    new-array v0, v2, [B

    .line 701
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 702
    .local v1, "bufferPosition":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_3

    .line 703
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 704
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 705
    .restart local v10    # "numberOfNalUnits":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    if-ge v6, v10, :cond_2

    .line 706
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 707
    .restart local v8    # "nalUnitLength":I
    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v12, 0x0

    sget-object v13, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v13, v13

    invoke-static {v11, v12, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v1, v11

    .line 710
    iget-object v11, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    add-int/2addr v1, v8

    .line 712
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 705
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 702
    .end local v8    # "nalUnitLength":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 716
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v5, 0x0

    .line 717
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11

    .line 716
    .end local v5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4
.end method

.method private static parseIlst(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 10
    .param p0, "ilst"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v9, 0x4

    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_6

    .line 386
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 387
    .local v6, "position":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int v0, v6, v8

    .line 388
    .local v0, "endPosition":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 389
    .local v7, "type":I
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_DASHES:I

    if-ne v7, v8, :cond_5

    .line 390
    const/4 v3, 0x0

    .line 391
    .local v3, "lastCommentMean":Ljava/lang/String;
    const/4 v4, 0x0

    .line 392
    .local v4, "lastCommentName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 393
    .local v2, "lastCommentData":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v8

    if-ge v8, v0, :cond_4

    .line 394
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int/lit8 v5, v8, -0xc

    .line 395
    .local v5, "length":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 396
    .local v1, "key":I
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 397
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v1, v8, :cond_1

    .line 398
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 399
    :cond_1
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_name:I

    if-ne v1, v8, :cond_2

    .line 400
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 401
    :cond_2
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v8, :cond_3

    .line 402
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 403
    add-int/lit8 v8, v5, -0x4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 405
    :cond_3
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 408
    .end local v1    # "key":I
    .end local v5    # "length":I
    :cond_4
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v8, "com.apple.iTunes"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 410
    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v8

    .line 416
    .end local v0    # "endPosition":I
    .end local v2    # "lastCommentData":Ljava/lang/String;
    .end local v3    # "lastCommentMean":Ljava/lang/String;
    .end local v4    # "lastCommentName":Ljava/lang/String;
    .end local v6    # "position":I
    .end local v7    # "type":I
    :goto_2
    return-object v8

    .line 413
    .restart local v0    # "endPosition":I
    .restart local v6    # "position":I
    .restart local v7    # "type":I
    :cond_5
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 416
    .end local v0    # "endPosition":I
    .end local v6    # "position":I
    .end local v7    # "type":I
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static parseMdhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 8
    .param p0, "mdhd"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 514
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 515
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 516
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 517
    .local v3, "version":I
    if-nez v3, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 518
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 519
    .local v4, "timescale":J
    if-nez v3, :cond_0

    const/4 v7, 0x4

    :cond_0
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 520
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 521
    .local v2, "languageCode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v2, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "language":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 517
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "languageCode":I
    .end local v4    # "timescale":J
    :cond_1
    const/16 v6, 0x10

    goto :goto_0
.end method

.method private static parseMetaAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 6
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 366
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 367
    new-instance v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    .line 368
    .local v2, "ilst":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    .line 369
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    add-int/lit8 v3, v4, -0x8

    .line 370
    .local v3, "payloadSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 371
    .local v0, "atomType":I
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v0, v4, :cond_0

    .line 372
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 373
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 374
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseIlst(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v1

    .line 375
    .local v1, "gaplessInfo":Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    if-eqz v1, :cond_0

    .line 381
    .end local v0    # "atomType":I
    .end local v1    # "gaplessInfo":Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .end local v3    # "payloadSize":I
    :goto_1
    return-object v1

    .line 379
    .restart local v0    # "atomType":I
    .restart local v3    # "payloadSize":I
    :cond_0
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 381
    .end local v0    # "atomType":I
    .end local v3    # "payloadSize":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static parseMvhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mvhd"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v2, 0x8

    .line 426
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 428
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 429
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 431
    .local v1, "version":I
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 433
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    .line 431
    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 778
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 779
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 780
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 781
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseSchiFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 9
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 786
    add-int/lit8 v2, p1, 0x8

    .line 787
    .local v2, "childPosition":I
    :goto_0
    sub-int v8, v2, p1

    if-ge v8, p2, :cond_2

    .line 788
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 789
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 790
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 791
    .local v1, "childAtomType":I
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v1, v8, :cond_1

    .line 792
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 793
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 794
    .local v6, "firstInt":I
    shr-int/lit8 v8, v6, 0x8

    if-ne v8, v4, :cond_0

    .line 795
    .local v4, "defaultIsEncrypted":Z
    :goto_1
    and-int/lit16 v3, v6, 0xff

    .line 796
    .local v3, "defaultInitVectorSize":I
    const/16 v8, 0x10

    new-array v5, v8, [B

    .line 797
    .local v5, "defaultKeyId":[B
    array-length v8, v5

    invoke-virtual {p0, v5, v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 798
    new-instance v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v7, v4, v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    .line 802
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "defaultInitVectorSize":I
    .end local v4    # "defaultIsEncrypted":Z
    .end local v5    # "defaultKeyId":[B
    .end local v6    # "firstInt":I
    :goto_2
    return-object v7

    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    .restart local v6    # "firstInt":I
    :cond_0
    move v4, v7

    .line 794
    goto :goto_1

    .line 800
    .end local v6    # "firstInt":I
    :cond_1
    add-int/2addr v2, v0

    .line 801
    goto :goto_0

    .line 802
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 5
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 755
    add-int/lit8 v2, p1, 0x8

    .line 757
    .local v2, "childPosition":I
    const/4 v3, 0x0

    .line 758
    .local v3, "trackEncryptionBox":Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    :goto_0
    sub-int v4, v2, p1

    if-ge v4, p2, :cond_3

    .line 759
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 760
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 761
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 762
    .local v1, "childAtomType":I
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v1, v4, :cond_1

    .line 763
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    .line 771
    :cond_0
    :goto_1
    add-int/2addr v2, v0

    .line 772
    goto :goto_0

    .line 764
    :cond_1
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v1, v4, :cond_2

    .line 765
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 766
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    .line 767
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1

    .line 768
    :cond_2
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v1, v4, :cond_0

    .line 769
    invoke-static {p0, v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    goto :goto_1

    .line 774
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_3
    return-object v3
.end method

.method public static parseStbl(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;
    .locals 74
    .param p0, "track"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 96
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v65, v0

    .line 99
    .local v65, "stsz":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    const/16 v20, 0x0

    .line 100
    .local v20, "chunkOffsetsAreLongs":Z
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 101
    .local v21, "chunkOffsetsAtom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v21, :cond_0

    .line 102
    const/16 v20, 0x1

    .line 103
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 105
    :cond_0
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v19, v0

    .line 107
    .local v19, "chunkOffsets":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v62, v0

    .line 109
    .local v62, "stsc":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v66, v0

    .line 111
    .local v66, "stts":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v64

    .line 112
    .local v64, "stssAtom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v64, :cond_1

    move-object/from16 v0, v64

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v63, v0

    .line 114
    .local v63, "stss":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :goto_0
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v27

    .line 115
    .local v27, "cttsAtom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v27, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    .line 118
    .local v26, "ctts":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :goto_1
    const/16 v4, 0xc

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-virtual/range {v65 .. v65}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v35

    .line 120
    .local v35, "fixedSampleSize":I
    invoke-virtual/range {v65 .. v65}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v59

    .line 121
    .local v59, "sampleCount":I
    if-nez v59, :cond_3

    .line 122
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    const/4 v12, 0x0

    new-array v5, v12, [J

    const/4 v12, 0x0

    new-array v6, v12, [I

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-array v8, v12, [J

    const/4 v12, 0x0

    new-array v9, v12, [I

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    .line 332
    :goto_2
    return-object v4

    .line 112
    .end local v26    # "ctts":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .end local v27    # "cttsAtom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v35    # "fixedSampleSize":I
    .end local v59    # "sampleCount":I
    .end local v63    # "stss":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :cond_1
    const/16 v63, 0x0

    goto :goto_0

    .line 115
    .restart local v27    # "cttsAtom":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v63    # "stss":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :cond_2
    const/16 v26, 0x0

    goto :goto_1

    .line 126
    .restart local v26    # "ctts":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .restart local v35    # "fixedSampleSize":I
    .restart local v59    # "sampleCount":I
    :cond_3
    new-instance v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v62

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V

    .line 129
    .local v18, "chunkIterator":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    const/16 v4, 0xc

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 130
    invoke-virtual/range {v66 .. v66}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v57, v4, -0x1

    .line 131
    .local v57, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v66 .. v66}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v53

    .line 132
    .local v53, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v66 .. v66}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v67

    .line 135
    .local v67, "timestampDeltaInTimeUnits":I
    const/16 v54, 0x0

    .line 136
    .local v54, "remainingSamplesAtTimestampOffset":I
    const/16 v58, 0x0

    .line 137
    .local v58, "remainingTimestampOffsetChanges":I
    const/16 v70, 0x0

    .line 138
    .local v70, "timestampOffset":I
    if-eqz v26, :cond_4

    .line 139
    const/16 v4, 0xc

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 140
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v58

    .line 143
    :cond_4
    const/16 v45, -0x1

    .line 144
    .local v45, "nextSynchronizationSampleIndex":I
    const/16 v56, 0x0

    .line 145
    .local v56, "remainingSynchronizationSamples":I
    if-eqz v63, :cond_5

    .line 146
    const/16 v4, 0xc

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 147
    invoke-virtual/range {v63 .. v63}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v56

    .line 148
    invoke-virtual/range {v63 .. v63}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v45, v4, -0x1

    .line 152
    :cond_5
    if-eqz v35, :cond_6

    const-string/jumbo v4, "audio/raw"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v12, v12, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v57, :cond_6

    if-nez v58, :cond_6

    if-nez v56, :cond_6

    const/16 v40, 0x1

    .line 161
    .local v40, "isRechunkable":Z
    :goto_3
    const/4 v7, 0x0

    .line 165
    .local v7, "maximumSize":I
    if-nez v40, :cond_15

    .line 166
    move/from16 v0, v59

    new-array v5, v0, [J

    .line 167
    .local v5, "offsets":[J
    move/from16 v0, v59

    new-array v6, v0, [I

    .line 168
    .local v6, "sizes":[I
    move/from16 v0, v59

    new-array v8, v0, [J

    .line 169
    .local v8, "timestamps":[J
    move/from16 v0, v59

    new-array v9, v0, [I

    .line 170
    .local v9, "flags":[I
    const-wide/16 v72, 0x0

    .line 171
    .local v72, "timestampTimeUnits":J
    const-wide/16 v46, 0x0

    .line 172
    .local v46, "offset":J
    const/16 v55, 0x0

    .line 174
    .local v55, "remainingSamplesInChunk":I
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_4
    move/from16 v0, v39

    move/from16 v1, v59

    if-ge v0, v1, :cond_f

    .line 176
    :goto_5
    if-nez v55, :cond_7

    .line 177
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 178
    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v46, v0

    .line 179
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v55, v0

    goto :goto_5

    .line 152
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v7    # "maximumSize":I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    .end local v39    # "i":I
    .end local v40    # "isRechunkable":Z
    .end local v46    # "offset":J
    .end local v55    # "remainingSamplesInChunk":I
    .end local v72    # "timestampTimeUnits":J
    :cond_6
    const/16 v40, 0x0

    goto :goto_3

    .line 183
    .restart local v5    # "offsets":[J
    .restart local v6    # "sizes":[I
    .restart local v7    # "maximumSize":I
    .restart local v8    # "timestamps":[J
    .restart local v9    # "flags":[I
    .restart local v39    # "i":I
    .restart local v40    # "isRechunkable":Z
    .restart local v46    # "offset":J
    .restart local v55    # "remainingSamplesInChunk":I
    .restart local v72    # "timestampTimeUnits":J
    :cond_7
    if-eqz v26, :cond_9

    .line 184
    :goto_6
    if-nez v54, :cond_8

    if-lez v58, :cond_8

    .line 185
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v54

    .line 191
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v70

    .line 192
    add-int/lit8 v58, v58, -0x1

    goto :goto_6

    .line 194
    :cond_8
    add-int/lit8 v54, v54, -0x1

    .line 197
    :cond_9
    aput-wide v46, v5, v39

    .line 198
    if-nez v35, :cond_d

    invoke-virtual/range {v65 .. v65}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    :goto_7
    aput v4, v6, v39

    .line 199
    aget v4, v6, v39

    if-le v4, v7, :cond_a

    .line 200
    aget v7, v6, v39

    .line 202
    :cond_a
    move/from16 v0, v70

    int-to-long v12, v0

    add-long v12, v12, v72

    aput-wide v12, v8, v39

    .line 205
    if-nez v63, :cond_e

    const/4 v4, 0x1

    :goto_8
    aput v4, v9, v39

    .line 206
    move/from16 v0, v39

    move/from16 v1, v45

    if-ne v0, v1, :cond_b

    .line 207
    const/4 v4, 0x1

    aput v4, v9, v39

    .line 208
    add-int/lit8 v56, v56, -0x1

    .line 209
    if-lez v56, :cond_b

    .line 210
    invoke-virtual/range {v63 .. v63}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v45, v4, -0x1

    .line 215
    :cond_b
    move/from16 v0, v67

    int-to-long v12, v0

    add-long v72, v72, v12

    .line 216
    add-int/lit8 v53, v53, -0x1

    .line 217
    if-nez v53, :cond_c

    if-lez v57, :cond_c

    .line 218
    invoke-virtual/range {v66 .. v66}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v53

    .line 219
    invoke-virtual/range {v66 .. v66}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v67

    .line 220
    add-int/lit8 v57, v57, -0x1

    .line 223
    :cond_c
    aget v4, v6, v39

    int-to-long v12, v4

    add-long v46, v46, v12

    .line 224
    add-int/lit8 v55, v55, -0x1

    .line 174
    add-int/lit8 v39, v39, 0x1

    goto :goto_4

    :cond_d
    move/from16 v4, v35

    .line 198
    goto :goto_7

    .line 205
    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    .line 228
    :cond_f
    if-nez v56, :cond_10

    const/4 v4, 0x1

    :goto_9
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 229
    if-nez v53, :cond_11

    const/4 v4, 0x1

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 230
    if-nez v55, :cond_12

    const/4 v4, 0x1

    :goto_b
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 231
    if-nez v57, :cond_13

    const/4 v4, 0x1

    :goto_c
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 232
    if-nez v58, :cond_14

    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 249
    .end local v39    # "i":I
    .end local v46    # "offset":J
    .end local v55    # "remainingSamplesInChunk":I
    .end local v72    # "timestampTimeUnits":J
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-nez v4, :cond_17

    .line 250
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 251
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_2

    .line 228
    .restart local v39    # "i":I
    .restart local v46    # "offset":J
    .restart local v55    # "remainingSamplesInChunk":I
    .restart local v72    # "timestampTimeUnits":J
    :cond_10
    const/4 v4, 0x0

    goto :goto_9

    .line 229
    :cond_11
    const/4 v4, 0x0

    goto :goto_a

    .line 230
    :cond_12
    const/4 v4, 0x0

    goto :goto_b

    .line 231
    :cond_13
    const/4 v4, 0x0

    goto :goto_c

    .line 232
    :cond_14
    const/4 v4, 0x0

    goto :goto_d

    .line 234
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    .end local v39    # "i":I
    .end local v46    # "offset":J
    .end local v55    # "remainingSamplesInChunk":I
    .end local v72    # "timestampTimeUnits":J
    :cond_15
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [J

    move-object/from16 v22, v0

    .line 235
    .local v22, "chunkOffsetsBytes":[J
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 236
    .local v23, "chunkSampleCounts":[I
    :goto_f
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 237
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v12, v22, v4

    .line 238
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v12, v23, v4

    goto :goto_f

    .line 240
    :cond_16
    move/from16 v0, v67

    int-to-long v12, v0

    move/from16 v0, v35

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v12, v13}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v52

    .line 242
    .local v52, "rechunkedResults":Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    move-object/from16 v0, v52

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 243
    .restart local v5    # "offsets":[J
    move-object/from16 v0, v52

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 244
    .restart local v6    # "sizes":[I
    move-object/from16 v0, v52

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 245
    move-object/from16 v0, v52

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 246
    .restart local v8    # "timestamps":[J
    move-object/from16 v0, v52

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .restart local v9    # "flags":[I
    goto :goto_e

    .line 259
    .end local v22    # "chunkOffsetsBytes":[J
    .end local v23    # "chunkSampleCounts":[I
    .end local v52    # "rechunkedResults":Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-nez v4, :cond_19

    .line 263
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_10
    array-length v4, v8

    move/from16 v0, v39

    if-ge v0, v4, :cond_18

    .line 264
    aget-wide v12, v8, v39

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    sub-long v10, v12, v14

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aput-wide v12, v8, v39

    .line 263
    add-int/lit8 v39, v39, 0x1

    goto :goto_10

    .line 267
    :cond_18
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_2

    .line 271
    .end local v39    # "i":I
    :cond_19
    const/16 v31, 0x0

    .line 272
    .local v31, "editedSampleCount":I
    const/16 v44, 0x0

    .line 273
    .local v44, "nextSampleIndex":I
    const/16 v24, 0x0

    .line 274
    .local v24, "copyMetadata":Z
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_1c

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v42, v4, v39

    .line 276
    .local v42, "mediaTime":J
    const-wide/16 v12, -0x1

    cmp-long v4, v42, v12

    if-eqz v4, :cond_1a

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v39

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 279
    .local v10, "duration":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v42

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v61

    .line 280
    .local v61, "startIndex":I
    add-long v12, v42, v10

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v8, v12, v13, v4, v14}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v34

    .line 281
    .local v34, "endIndex":I
    sub-int v4, v34, v61

    add-int v31, v31, v4

    .line 282
    move/from16 v0, v44

    move/from16 v1, v61

    if-eq v0, v1, :cond_1b

    const/4 v4, 0x1

    :goto_12
    or-int v24, v24, v4

    .line 283
    move/from16 v44, v34

    .line 274
    .end local v10    # "duration":J
    .end local v34    # "endIndex":I
    .end local v61    # "startIndex":I
    :cond_1a
    add-int/lit8 v39, v39, 0x1

    goto :goto_11

    .line 282
    .restart local v10    # "duration":J
    .restart local v34    # "endIndex":I
    .restart local v61    # "startIndex":I
    :cond_1b
    const/4 v4, 0x0

    goto :goto_12

    .line 286
    .end local v10    # "duration":J
    .end local v34    # "endIndex":I
    .end local v42    # "mediaTime":J
    .end local v61    # "startIndex":I
    :cond_1c
    move/from16 v0, v31

    move/from16 v1, v59

    if-eq v0, v1, :cond_1f

    const/4 v4, 0x1

    :goto_13
    or-int v24, v24, v4

    .line 289
    if-eqz v24, :cond_20

    move/from16 v0, v31

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 290
    .local v30, "editedOffsets":[J
    :goto_14
    if-eqz v24, :cond_21

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .line 291
    .local v32, "editedSizes":[I
    :goto_15
    if-eqz v24, :cond_22

    const/16 v29, 0x0

    .line 292
    .local v29, "editedMaximumSize":I
    :goto_16
    if-eqz v24, :cond_23

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 293
    .local v28, "editedFlags":[I
    :goto_17
    move/from16 v0, v31

    new-array v0, v0, [J

    move-object/from16 v33, v0

    .line 294
    .local v33, "editedTimestamps":[J
    const-wide/16 v48, 0x0

    .line 295
    .local v48, "pts":J
    const/16 v60, 0x0

    .line 296
    .local v60, "sampleIndex":I
    const/16 v39, 0x0

    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_25

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v42, v4, v39

    .line 298
    .restart local v42    # "mediaTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v39

    .line 299
    .restart local v10    # "duration":J
    const-wide/16 v12, -0x1

    cmp-long v4, v42, v12

    if-eqz v4, :cond_24

    .line 300
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v36, v42, v12

    .line 302
    .local v36, "endMediaTime":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v42

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v61

    .line 303
    .restart local v61    # "startIndex":I
    const/4 v4, 0x1

    const/4 v12, 0x0

    move-wide/from16 v0, v36

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v34

    .line 304
    .restart local v34    # "endIndex":I
    if-eqz v24, :cond_1d

    .line 305
    sub-int v25, v34, v61

    .line 306
    .local v25, "count":I
    move/from16 v0, v61

    move-object/from16 v1, v30

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    move/from16 v0, v61

    move-object/from16 v1, v32

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    move/from16 v0, v61

    move-object/from16 v1, v28

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    .end local v25    # "count":I
    :cond_1d
    move/from16 v41, v61

    .local v41, "j":I
    :goto_19
    move/from16 v0, v41

    move/from16 v1, v34

    if-ge v0, v1, :cond_24

    .line 311
    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    move-wide/from16 v12, v48

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v50

    .line 312
    .local v50, "ptsUs":J
    aget-wide v12, v8, v41

    sub-long v12, v12, v42

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v68

    .line 314
    .local v68, "timeInSegmentUs":J
    add-long v12, v50, v68

    aput-wide v12, v33, v60

    .line 315
    if-eqz v24, :cond_1e

    aget v4, v32, v60

    move/from16 v0, v29

    if-le v4, v0, :cond_1e

    .line 316
    aget v29, v6, v41

    .line 318
    :cond_1e
    add-int/lit8 v60, v60, 0x1

    .line 310
    add-int/lit8 v41, v41, 0x1

    goto :goto_19

    .line 286
    .end local v10    # "duration":J
    .end local v28    # "editedFlags":[I
    .end local v29    # "editedMaximumSize":I
    .end local v30    # "editedOffsets":[J
    .end local v32    # "editedSizes":[I
    .end local v33    # "editedTimestamps":[J
    .end local v34    # "endIndex":I
    .end local v36    # "endMediaTime":J
    .end local v41    # "j":I
    .end local v42    # "mediaTime":J
    .end local v48    # "pts":J
    .end local v50    # "ptsUs":J
    .end local v60    # "sampleIndex":I
    .end local v61    # "startIndex":I
    .end local v68    # "timeInSegmentUs":J
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_13

    :cond_20
    move-object/from16 v30, v5

    .line 289
    goto/16 :goto_14

    .restart local v30    # "editedOffsets":[J
    :cond_21
    move-object/from16 v32, v6

    .line 290
    goto/16 :goto_15

    .restart local v32    # "editedSizes":[I
    :cond_22
    move/from16 v29, v7

    .line 291
    goto/16 :goto_16

    .restart local v29    # "editedMaximumSize":I
    :cond_23
    move-object/from16 v28, v9

    .line 292
    goto/16 :goto_17

    .line 321
    .restart local v10    # "duration":J
    .restart local v28    # "editedFlags":[I
    .restart local v33    # "editedTimestamps":[J
    .restart local v42    # "mediaTime":J
    .restart local v48    # "pts":J
    .restart local v60    # "sampleIndex":I
    :cond_24
    add-long v48, v48, v10

    .line 296
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_18

    .line 324
    .end local v10    # "duration":J
    .end local v42    # "mediaTime":J
    :cond_25
    const/16 v38, 0x0

    .line 325
    .local v38, "hasSyncSample":Z
    const/16 v39, 0x0

    :goto_1a
    move-object/from16 v0, v28

    array-length v4, v0

    move/from16 v0, v39

    if-ge v0, v4, :cond_27

    if-nez v38, :cond_27

    .line 326
    aget v4, v28, v39

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    :goto_1b
    or-int v38, v38, v4

    .line 325
    add-int/lit8 v39, v39, 0x1

    goto :goto_1a

    .line 326
    :cond_26
    const/4 v4, 0x0

    goto :goto_1b

    .line 328
    :cond_27
    if-nez v38, :cond_28

    .line 329
    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v12, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v4, v12}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 332
    :cond_28
    new-instance v12, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v13, v30

    move-object/from16 v14, v32

    move/from16 v15, v29

    move-object/from16 v16, v33

    move-object/from16 v17, v28

    invoke-direct/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    move-object v4, v12

    goto/16 :goto_2
.end method

.method private static parseStsd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .locals 24
    .param p0, "stsd"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "durationUs"    # J
    .param p4, "rotationDegrees"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z

    .prologue
    .line 540
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v22

    .line 542
    .local v22, "numberOfEntries":I
    new-instance v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v22

    invoke-direct {v9, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 543
    .local v9, "out":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v10, v0, :cond_9

    .line 544
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 545
    .local v3, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 546
    .local v4, "childAtomSize":I
    if-lez v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v5, "childAtomSize should be positive"

    invoke-static {v2, v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 548
    .local v12, "childAtomType":I
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v12, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v12, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v12, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v12, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v12, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v12, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-ne v12, v2, :cond_3

    :cond_0
    move-object/from16 v2, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    .line 552
    invoke-static/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIJILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    .line 576
    :cond_1
    :goto_2
    add-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 543
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 546
    .end local v12    # "childAtomType":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 554
    .restart local v12    # "childAtomType":I
    :cond_3
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v12, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v12, v2, :cond_5

    :cond_4
    move-object/from16 v11, p0

    move v13, v3

    move v14, v4

    move/from16 v15, p1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    move/from16 v19, p6

    move-object/from16 v20, v9

    move/from16 v21, v10

    .line 560
    invoke-static/range {v11 .. v21}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    .line 562
    :cond_5
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v12, v2, :cond_6

    .line 563
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_2

    .line 565
    :cond_6
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v12, v2, :cond_7

    .line 566
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_2

    .line 568
    :cond_7
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v12, v2, :cond_8

    .line 569
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_2

    .line 571
    :cond_8
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v12, v2, :cond_1

    .line 572
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_2

    .line 578
    .end local v3    # "childStartPosition":I
    .end local v4    # "childAtomSize":I
    .end local v12    # "childAtomType":I
    :cond_9
    return-object v9
.end method

.method private static parseTkhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    .locals 20
    .param p0, "tkhd"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 442
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 444
    .local v12, "fullAtom":I
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v16

    .line 446
    .local v16, "version":I
    if-nez v16, :cond_2

    const/16 v17, 0x8

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 449
    .local v15, "trackId":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 450
    const/4 v10, 0x1

    .line 451
    .local v10, "durationUnknown":Z
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 452
    .local v9, "durationPosition":I
    if-nez v16, :cond_3

    const/4 v8, 0x4

    .line 453
    .local v8, "durationByteCount":I
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v17, v0

    add-int v18, v9, v13

    aget-byte v17, v17, v18

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 455
    const/4 v10, 0x0

    .line 460
    :cond_0
    if-eqz v10, :cond_5

    .line 461
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 462
    const-wide/16 v6, -0x1

    .line 472
    .local v6, "duration":J
    :cond_1
    :goto_3
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 474
    .local v2, "a00":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 475
    .local v3, "a01":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 477
    .local v4, "a10":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 480
    .local v5, "a11":I
    const/high16 v11, 0x10000

    .line 481
    .local v11, "fixedOne":I
    if-nez v2, :cond_7

    if-ne v3, v11, :cond_7

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    if-nez v5, :cond_7

    .line 482
    const/16 v14, 0x5a

    .line 492
    .local v14, "rotationDegrees":I
    :goto_4
    new-instance v17, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6, v7, v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v17

    .line 446
    .end local v2    # "a00":I
    .end local v3    # "a01":I
    .end local v4    # "a10":I
    .end local v5    # "a11":I
    .end local v6    # "duration":J
    .end local v8    # "durationByteCount":I
    .end local v9    # "durationPosition":I
    .end local v10    # "durationUnknown":Z
    .end local v11    # "fixedOne":I
    .end local v13    # "i":I
    .end local v14    # "rotationDegrees":I
    .end local v15    # "trackId":I
    :cond_2
    const/16 v17, 0x10

    goto :goto_0

    .line 452
    .restart local v9    # "durationPosition":I
    .restart local v10    # "durationUnknown":Z
    .restart local v15    # "trackId":I
    :cond_3
    const/16 v8, 0x8

    goto :goto_1

    .line 453
    .restart local v8    # "durationByteCount":I
    .restart local v13    # "i":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 464
    :cond_5
    if-nez v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 465
    .restart local v6    # "duration":J
    :goto_5
    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-nez v17, :cond_1

    .line 468
    const-wide/16 v6, -0x1

    goto :goto_3

    .line 464
    .end local v6    # "duration":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_5

    .line 483
    .restart local v2    # "a00":I
    .restart local v3    # "a01":I
    .restart local v4    # "a10":I
    .restart local v5    # "a11":I
    .restart local v6    # "duration":J
    .restart local v11    # "fixedOne":I
    :cond_7
    if-nez v2, :cond_8

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    if-ne v4, v11, :cond_8

    if-nez v5, :cond_8

    .line 484
    const/16 v14, 0x10e

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 485
    .end local v14    # "rotationDegrees":I
    :cond_8
    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    if-nez v3, :cond_9

    if-nez v4, :cond_9

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 486
    const/16 v14, 0xb4

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 489
    .end local v14    # "rotationDegrees":I
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "rotationDegrees":I
    goto :goto_4
.end method

.method public static parseTrak(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    .locals 34
    .param p0, "trak"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "isQuickTime"    # Z

    .prologue
    .line 54
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v29

    .line 55
    .local v29, "mdia":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v15

    .line 56
    .local v15, "trackType":I
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_text:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    if-eq v15, v2, :cond_0

    .line 58
    const/4 v13, 0x0

    .line 79
    :goto_0
    return-object v13

    .line 61
    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v32

    .line 62
    .local v32, "tkhdData":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 63
    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$000(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide p2

    .line 65
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    .line 67
    .local v6, "movieTimescale":J
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 68
    const-wide/16 v10, -0x1

    .line 72
    .local v10, "durationUs":J
    :goto_1
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v30

    .line 75
    .local v30, "stbl":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v28

    .line 76
    .local v28, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$200(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v12

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move-result-object v31

    .line 78
    .local v31, "stsdData":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEdts(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v27

    .line 79
    .local v27, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v2, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    .line 70
    .end local v10    # "durationUs":J
    .end local v27    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .end local v28    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v30    # "stbl":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v31    # "stsdData":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    :cond_2
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .restart local v10    # "durationUs":J
    goto :goto_1

    .line 79
    .restart local v27    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .restart local v28    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v30    # "stbl":Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .restart local v31    # "stsdData":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    :cond_3
    new-instance v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v23, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v24, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer/MediaFormat;[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0
.end method

.method public static parseUdta(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 6
    .param p0, "udtaAtom"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p1, "isQuickTime"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 344
    if-eqz p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-object v3

    .line 349
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 350
    .local v2, "udtaData":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 351
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 352
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 353
    .local v0, "atomSize":I
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 354
    .local v1, "atomType":I
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v1, v4, :cond_2

    .line 355
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 356
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 357
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMetaAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v3

    goto :goto_0

    .line 359
    :cond_2
    add-int/lit8 v4, v0, -0x8

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method private static parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIJILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 22
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "trackId"    # I
    .param p4, "durationUs"    # J
    .param p6, "rotationDegrees"    # I
    .param p7, "out"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I

    .prologue
    .line 583
    add-int/lit8 v2, p1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 585
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 587
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 588
    .local v9, "height":I
    const/16 v20, 0x0

    .line 589
    .local v20, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v12, 0x3f800000    # 1.0f

    .line 590
    .local v12, "pixelWidthHeightRatio":F
    const/16 v2, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 592
    const/4 v10, 0x0

    .line 593
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 594
    .local v16, "childPosition":I
    const/4 v3, 0x0

    .line 595
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    sub-int v2, v16, p1

    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    .line 596
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v17

    .line 598
    .local v17, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 599
    .local v14, "childAtomSize":I
    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    sub-int v2, v2, p1

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 640
    .end local v14    # "childAtomSize":I
    .end local v17    # "childStartPosition":I
    :cond_0
    if-nez v3, :cond_d

    .line 647
    :goto_1
    return-void

    .line 603
    .restart local v14    # "childAtomSize":I
    .restart local v17    # "childStartPosition":I
    :cond_1
    if-lez v14, :cond_3

    const/4 v2, 0x1

    :goto_2
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 605
    .local v15, "childAtomType":I
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v15, v2, :cond_5

    .line 606
    if-nez v3, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 607
    const-string/jumbo v3, "video/avc"

    .line 608
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    move-result-object v13

    .line 609
    .local v13, "avcCData":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    iget-object v10, v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->initializationData:Ljava/util/List;

    .line 610
    iget v2, v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 611
    if-nez v20, :cond_2

    .line 612
    iget v12, v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->pixelWidthAspectRatio:F

    .line 636
    .end local v13    # "avcCData":Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    :cond_2
    :goto_4
    add-int v16, v16, v14

    .line 637
    goto :goto_0

    .line 603
    .end local v15    # "childAtomType":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 606
    .restart local v15    # "childAtomType":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 614
    :cond_5
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v15, v2, :cond_7

    .line 615
    if-nez v3, :cond_6

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 616
    const-string/jumbo v3, "video/hevc"

    .line 617
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v18

    .line 618
    .local v18, "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v10, Ljava/util/List;

    .line 619
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p7

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    goto :goto_4

    .line 615
    .end local v18    # "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    .line 620
    :cond_7
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v15, v2, :cond_9

    .line 621
    if-nez v3, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 622
    const-string/jumbo v3, "video/3gpp"

    goto :goto_4

    .line 621
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 623
    :cond_9
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v15, v2, :cond_b

    .line 624
    if-nez v3, :cond_a

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 625
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v19

    .line 627
    .local v19, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v3    # "mimeType":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 628
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 629
    goto :goto_4

    .line 624
    .end local v19    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    .line 629
    :cond_b
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v15, v2, :cond_c

    .line 630
    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    aput-object v4, v2, p8

    goto :goto_4

    .line 632
    :cond_c
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v15, v2, :cond_2

    .line 633
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)F

    move-result v12

    .line 634
    const/16 v20, 0x1

    goto/16 :goto_4

    .line 644
    .end local v14    # "childAtomSize":I
    .end local v15    # "childAtomType":I
    .end local v17    # "childStartPosition":I
    :cond_d
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-wide/from16 v6, p4

    move/from16 v11, p6

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p7

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_1
.end method

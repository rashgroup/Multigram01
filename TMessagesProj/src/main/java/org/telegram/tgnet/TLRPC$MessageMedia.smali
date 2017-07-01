.class public Lorg/telegram/tgnet/TLRPC$MessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

.field public bytes:[B

.field public caption:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public first_name:Ljava/lang/String;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public last_name:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public provider:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public user_id:I

.field public venue_id:Ljava/lang/String;

.field public video_unused:Lorg/telegram/tgnet/TLRPC$Video;

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19826
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    const/4 v8, 0x1

    .line 19845
    const/4 v3, 0x0

    .line 19846
    .local v3, "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    sparse-switch p1, :sswitch_data_0

    .line 19890
    :goto_0
    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 19891
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "can\'t parse magic %x in MessageMedia"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 19848
    :sswitch_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    .line 19849
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19851
    :sswitch_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;-><init>()V

    .line 19852
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19854
    :sswitch_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;-><init>()V

    .line 19855
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19857
    :sswitch_3
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;-><init>()V

    .line 19858
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19860
    :sswitch_4
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    .line 19861
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19863
    :sswitch_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 19864
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19866
    :sswitch_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;-><init>()V

    .line 19867
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19869
    :sswitch_7
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;-><init>()V

    .line 19870
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19872
    :sswitch_8
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 19873
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19875
    :sswitch_9
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    .line 19876
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19878
    :sswitch_a
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 19879
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19881
    :sswitch_b
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    .line 19882
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19884
    :sswitch_c
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 19885
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19887
    :sswitch_d
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_0

    .line 19893
    :cond_0
    if-eqz v3, :cond_1

    .line 19894
    invoke-virtual {v3, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19895
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    if-eqz v4, :cond_4

    .line 19896
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 19897
    .local v2, "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    if-eqz v4, :cond_2

    .line 19898
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 19899
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 19900
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 19904
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 19905
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 19906
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 19907
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 19908
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 19912
    :goto_2
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 19913
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 19914
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 19915
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 19916
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 19917
    .local v1, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 19918
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 19919
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 19920
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19921
    move-object v3, v2

    .line 19922
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 19923
    const-string/jumbo v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 19957
    .end local v1    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_1
    :goto_3
    return-object v3

    .line 19902
    .restart local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    .line 19910
    :cond_3
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "video/mp4"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_2

    .line 19925
    .end local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_4
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    if-eqz v4, :cond_1

    .line 19926
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 19927
    .restart local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    if-eqz v4, :cond_5

    .line 19928
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 19929
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 19930
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 19934
    :goto_4
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Audio;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 19935
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Audio;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 19936
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 19937
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 19938
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 19942
    :goto_5
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 19943
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 19944
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 19945
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 19946
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 19947
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 19948
    .local v0, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Audio;->duration:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 19949
    iput-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 19950
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19951
    move-object v3, v2

    .line 19952
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 19953
    const-string/jumbo v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    goto/16 :goto_3

    .line 19932
    .end local v0    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_4

    .line 19940
    :cond_6
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "audio/ogg"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_5

    .line 19846
    nop

    :sswitch_data_0
    .sparse-switch
        -0x607b0b62 -> :sswitch_3
        -0x5d2dbd70 -> :sswitch_6
        -0x5cd22a00 -> :sswitch_d
        -0x39497d00 -> :sswitch_1
        -0x373ba5d6 -> :sswitch_2
        -0xc1fd158 -> :sswitch_8
        0x29632a36 -> :sswitch_0
        0x2fda2204 -> :sswitch_7
        0x3d8ce53d -> :sswitch_a
        0x3ded6320 -> :sswitch_4
        0x56e0d474 -> :sswitch_c
        0x5bcf1675 -> :sswitch_b
        0x5e7d2f39 -> :sswitch_9
        0x7912b71f -> :sswitch_5
    .end sparse-switch
.end method

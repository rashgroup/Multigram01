.class Lorg/telegram/ui/PhotoPickerActivity$9$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$9;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 748
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget v10, v10, Lorg/telegram/ui/PhotoPickerActivity$9;->val$token:I

    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I
    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$2100(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 795
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v10, :cond_8

    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, "added":Z
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;

    .line 754
    .local v6, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget v11, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->next_offset:I

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I
    invoke-static {v10, v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$1102(Lorg/telegram/ui/PhotoPickerActivity;I)I

    .line 755
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_7

    .line 756
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$FoundGif;

    .line 757
    .local v5, "gif":Lorg/telegram/tgnet/TLRPC$FoundGif;
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 755
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 760
    :cond_1
    const/4 v1, 0x1

    .line 761
    new-instance v4, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v4}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 762
    .local v4, "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    iput-object v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 763
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v10, :cond_6

    .line 764
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_3
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 765
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 766
    .local v2, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v10, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v10, :cond_2

    instance-of v10, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v10, :cond_5

    .line 767
    :cond_2
    iget v10, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 768
    iget v10, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 776
    .end local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v3    # "b":I
    :cond_3
    :goto_4
    iput v9, v4, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 777
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->content_url:Ljava/lang/String;

    iput-object v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 778
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->thumb_url:Ljava/lang/String;

    iput-object v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 779
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$9;->val$query:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 780
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 781
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v10, :cond_4

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v10, :cond_4

    .line 782
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I
    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v11

    invoke-static {v10, v11, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 783
    .local v7, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_4

    .line 784
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v7, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 787
    .end local v7    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    iput v8, v4, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 788
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, v4, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 764
    .restart local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v3    # "b":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 773
    .end local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v3    # "b":I
    :cond_6
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->w:I

    iput v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 774
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$FoundGif;->h:I

    iput v10, v4, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    goto :goto_4

    .line 791
    .end local v4    # "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v5    # "gif":Lorg/telegram/tgnet/TLRPC$FoundGif;
    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    if-nez v1, :cond_9

    :goto_5
    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v10, v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 793
    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v6    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v8, v8, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 794
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$9$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$9;

    iget-object v8, v8, Lorg/telegram/ui/PhotoPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)V

    goto/16 :goto_0

    .restart local v0    # "a":I
    .restart local v1    # "added":Z
    .restart local v6    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_9
    move v8, v9

    .line 791
    goto :goto_5
.end method

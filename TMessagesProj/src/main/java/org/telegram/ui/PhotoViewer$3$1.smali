.class Lorg/telegram/ui/PhotoViewer$3$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$3;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$3;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1160
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3400(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1161
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v13

    if-ltz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3400(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3400(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1165
    .local v9, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1166
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v2, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    const/4 v11, 0x0

    .line 1171
    .local v11, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 1172
    .local v5, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    long-to-int v13, v14

    if-nez v13, :cond_2

    iget-object v13, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_2

    .line 1173
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .restart local v11    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v13, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    const/16 v16, 0x20

    shr-long v14, v14, v16

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    .line 1178
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v14, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v13, v2, v11, v5, v14}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    goto/16 :goto_0

    .line 1180
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v9    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1181
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v13

    if-ltz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 1184
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1185
    .local v10, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3700(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1186
    .local v4, "currentLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    instance-of v13, v10, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v13, :cond_4

    .line 1187
    const/4 v10, 0x0

    .line 1189
    :cond_4
    const/4 v3, 0x0

    .line 1190
    .local v3, "current":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 1191
    if-eqz v10, :cond_7

    .line 1192
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1193
    .local v12, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v14

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v13, v14, :cond_5

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v13

    iget-wide v0, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_5

    .line 1194
    const/4 v3, 0x1

    .line 1202
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_6
    :goto_1
    if-eqz v3, :cond_8

    .line 1203
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 1198
    :cond_7
    iget v13, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v14

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v13, v14, :cond_6

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v13

    iget-wide v0, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    .line 1199
    const/4 v3, 0x1

    goto :goto_1

    .line 1205
    :cond_8
    if-eqz v10, :cond_0

    .line 1206
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    .line 1207
    .local v8, "inputPhoto":Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;
    iget-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;->id:J

    .line 1208
    iget-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;->access_hash:J

    .line 1209
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    .line 1210
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v14

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhoto(IJ)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3700(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1212
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1213
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v14, v14, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1214
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3700(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1215
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 1217
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v7

    .line 1218
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v7, v13, :cond_a

    .line 1219
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .line 1221
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v14, -0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v13, v14}, Lorg/telegram/ui/PhotoViewer;->access$3502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 1222
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$3$1;->this$1:Lorg/telegram/ui/PhotoViewer$3;

    iget-object v13, v13, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v14, 0x1

    # invokes: Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V
    invoke-static {v13, v7, v14}, Lorg/telegram/ui/PhotoViewer;->access$4000(Lorg/telegram/ui/PhotoViewer;IZ)V

    goto/16 :goto_0
.end method

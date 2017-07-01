.class Lorg/telegram/messenger/MessagesController$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$config:Lorg/telegram/tgnet/TLRPC$TL_config;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 288
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 289
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 290
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    .line 291
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v7, v8}, Lorg/telegram/messenger/MessagesController;->access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 292
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 293
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    .line 295
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "mainconfig"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 296
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 297
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "maxGroupCount"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string/jumbo v7, "maxMegagroupCount"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string/jumbo v7, "groupBigSize"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string/jumbo v7, "maxEditTime"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string/jumbo v7, "ratingDecay"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 305
    .local v0, "data":Lorg/telegram/tgnet/SerializedData;
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 306
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    .line 307
    .local v1, "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    invoke-virtual {v1, v0}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v1    # "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "disabledFeatures"

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    return-void

    .line 309
    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 311
    const-string/jumbo v7, "disabledFeatures"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

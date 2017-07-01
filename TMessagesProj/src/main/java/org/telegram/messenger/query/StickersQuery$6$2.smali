.class Lorg/telegram/messenger/query/StickersQuery$6$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$6;

.field final synthetic val$allStickersNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsByIdNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsByNameNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsNew:Ljava/util/ArrayList;

.field final synthetic val$stickersByEmojiNew:Ljava/util/HashMap;

.field final synthetic val$stickersByIdNew:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$6;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickersByIdNew:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickerSetsByNameNew:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$allStickersNew:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickersByEmojiNew:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickersByIdNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->stickersById:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 426
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$202(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 427
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickerSetsByNameNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$802(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 428
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$902(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 429
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$allStickersNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 430
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->val$stickersByEmojiNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 431
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$hash:I

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadHash:I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$502(I)I

    .line 432
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$date:I

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadDate:I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1202(I)I

    .line 433
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 434
    return-void
.end method

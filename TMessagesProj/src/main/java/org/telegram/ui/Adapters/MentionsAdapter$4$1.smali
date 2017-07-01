.class Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 427
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->val$query:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 431
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 433
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I
    invoke-static {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1302(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    .line 434
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v7, :cond_0

    .line 435
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    .line 436
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->next_offset:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1402(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_3

    .line 438
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1502(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 439
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 441
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 442
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 443
    .local v4, "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v7, :cond_5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v7, :cond_5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v7, :cond_5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v7, :cond_5

    .line 444
    :cond_4
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 445
    add-int/lit8 v0, v0, -0x1

    .line 447
    :cond_5
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->query_id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    .line 448
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    .end local v4    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_6
    const/4 v1, 0x0

    .line 451
    .local v1, "added":Z
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->val$offset:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_b

    .line 452
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1702(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 453
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->gallery:Z

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1802(Lorg/telegram/ui/Adapters/MentionsAdapter;Z)Z

    .line 461
    :cond_8
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;
    invoke-static {v7, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 462
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;
    invoke-static {v7, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2002(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 463
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;
    invoke-static {v7, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 464
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;
    invoke-static {v7, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 465
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;
    invoke-static {v7, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2302(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 466
    if-eqz v1, :cond_f

    .line 467
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1600(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v7

    if-eqz v7, :cond_c

    move v2, v5

    .line 468
    .local v2, "hasTop":Z
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_d

    move v7, v5

    :goto_4
    add-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemChanged(I)V

    .line 469
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_e

    move v7, v5

    :goto_5
    add-int/2addr v7, v9

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemRangeInserted(II)V

    .line 473
    .end local v2    # "hasTop":Z
    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1600(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v8

    if-eqz v8, :cond_a

    :cond_9
    move v6, v5

    :cond_a
    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    .line 455
    :cond_b
    const/4 v1, 0x1

    .line 456
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 457
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 458
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const-string/jumbo v8, ""

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1402(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    move v2, v6

    .line 467
    goto/16 :goto_3

    .restart local v2    # "hasTop":Z
    :cond_d
    move v7, v6

    .line 468
    goto :goto_4

    :cond_e
    move v7, v6

    .line 469
    goto :goto_5

    .line 471
    .end local v2    # "hasTop":Z
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$4$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_6
.end method

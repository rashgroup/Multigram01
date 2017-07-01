.class Lorg/telegram/ui/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->onFragmentCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$4;->val$userId:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$4;->val$userId:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUser(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 495
    return-void
.end method

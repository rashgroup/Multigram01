.class Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;
.super Ljava/lang/Object;
.source "StickersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity$ListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/StickersActivity$ListAdapter$1;

.field final synthetic val$options:[I

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter$1;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/StickersActivity$ListAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;->val$options:[I

    iput-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/StickersActivity$ListAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;->val$options:[I

    aget v1, v1, p2

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    # invokes: Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$700(Lorg/telegram/ui/StickersActivity$ListAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 329
    return-void
.end method

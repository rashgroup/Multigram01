.class Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$2;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$2;->this$3:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$2;->this$3:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$400(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    .line 325
    return-void
.end method

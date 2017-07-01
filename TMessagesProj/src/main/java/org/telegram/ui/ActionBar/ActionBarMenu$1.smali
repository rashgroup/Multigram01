.class Lorg/telegram/ui/ActionBar/ActionBarMenu$1;
.super Ljava/lang/Object;
.source "ActionBarMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemResource(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    .line 47
    return-void
.end method

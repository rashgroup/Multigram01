.class public Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
.super Ljava/lang/Object;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 846
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needFocus"    # Z

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 850
    return-void
.end method


# virtual methods
.method public create()Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object v0
.end method

.method public setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 900
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2102(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 901
    return-object p0
.end method

.method public setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 895
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2002(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 896
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 866
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1702(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)Landroid/view/View;

    .line 867
    return-object p0
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "delegate"    # Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;

    .prologue
    .line 890
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 891
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 853
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1502(Lorg/telegram/ui/ActionBar/BottomSheet;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1302(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 855
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "icons"    # [I
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 859
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1502(Lorg/telegram/ui/ActionBar/BottomSheet;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1602(Lorg/telegram/ui/ActionBar/BottomSheet;[I)[I

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1302(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 862
    return-object p0
.end method

.method public setTag(I)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 885
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->tag:I
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1902(Lorg/telegram/ui/ActionBar/BottomSheet;I)I

    .line 886
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 871
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1802(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 872
    return-object p0
.end method

.method public setUseFullWidth(Z)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 905
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$602(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object v0
.end method

.method public show()Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object v0
.end method

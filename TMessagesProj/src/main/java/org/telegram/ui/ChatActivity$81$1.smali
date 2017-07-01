.class Lorg/telegram/ui/ChatActivity$81$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$81;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$81;

.field final synthetic val$originalAdapter:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$81;Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 7892
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$81$1;->this$1:Lorg/telegram/ui/ChatActivity$81;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 7950
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 7895
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 7900
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 7905
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 7910
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 7915
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 7916
    check-cast v0, Landroid/widget/TextView;

    .line 7917
    .local v0, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7918
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 7923
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 7928
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 7933
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 7955
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 7938
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7940
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 7944
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$81$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7946
    return-void
.end method

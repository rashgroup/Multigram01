.class Lorg/telegram/ui/CountrySelectActivity$4;
.super Ljava/lang/Object;
.source "CountrySelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CountrySelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searching:Z
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$000(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searchWas:Z
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$200(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$100(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->getItem(I)Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    move-result-object v0

    .line 191
    .local v0, "country":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    :goto_0
    if-gez p3, :cond_2

    .line 198
    .end local v0    # "country":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    :cond_0
    :goto_1
    return-void

    .line 184
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountryAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Adapters/CountryAdapter;->getSectionForPosition(I)I

    move-result v2

    .line 185
    .local v2, "section":I
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountryAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Adapters/CountryAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    .line 186
    .local v1, "row":I
    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    .line 189
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountryAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Adapters/CountryAdapter;->getItem(II)Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    move-result-object v0

    .restart local v0    # "country":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    goto :goto_0

    .line 194
    .end local v1    # "row":I
    .end local v2    # "section":I
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/CountrySelectActivity;->finishFragment()V

    .line 195
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->delegate:Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$4;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->delegate:Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;->didSelectCountry(Ljava/lang/String;)V

    goto :goto_1
.end method

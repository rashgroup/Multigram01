.class public Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToolsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2817
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 2818
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->mContext:Landroid/content/Context;

    .line 2819
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 2823
    const/16 v0, 0xe

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2828
    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 2839
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;

    .line 2840
    .local v0, "holder":Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 2841
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202a7

    const-string/jumbo v4, "Enhance"

    const v5, 0x7f0701e0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    .line 2875
    :cond_0
    :goto_0
    return-void

    .line 2842
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 2843
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202aa

    const-string/jumbo v4, "Highlights"

    const v5, 0x7f070268

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto :goto_0

    .line 2844
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_3

    .line 2845
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202a3

    const-string/jumbo v4, "Contrast"

    const v5, 0x7f07017c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto :goto_0

    .line 2846
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_4

    .line 2847
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202a2

    const-string/jumbo v4, "Exposure"

    const v5, 0x7f0701ec

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto :goto_0

    .line 2848
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 2849
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202b0

    const-string/jumbo v4, "Warmth"

    const v5, 0x7f0704fe

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_0

    .line 2850
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_6

    .line 2851
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202ac

    const-string/jumbo v4, "Saturation"

    const v5, 0x7f07042c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_0

    .line 2852
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_7

    .line 2853
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202af

    const-string/jumbo v4, "Vignette"

    const v5, 0x7f0704fc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_0

    .line 2854
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_8

    .line 2855
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202ad

    const-string/jumbo v4, "Shadows"

    const v5, 0x7f07046f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_0

    .line 2856
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_9

    .line 2857
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202a9

    const-string/jumbo v4, "Grain"

    const v5, 0x7f070253

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_0

    .line 2858
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_a

    .line 2859
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202a6

    const-string/jumbo v4, "Sharpen"

    const v5, 0x7f07047f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_0

    .line 2860
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_d

    .line 2861
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v4, 0x7f0202ae

    const-string/jumbo v3, "Tint"

    const v5, 0x7f0704c3

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I
    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I
    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const-string/jumbo v3, "\u25c6"

    :goto_1
    invoke-virtual {v2, v4, v5, v3}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v3, ""

    goto :goto_1

    .line 2862
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_e

    .line 2863
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202a8

    const-string/jumbo v4, "Fade"

    const v5, 0x7f0701ee

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_0

    .line 2864
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_10

    .line 2865
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v4, 0x7f0202a5

    const-string/jumbo v3, "Curves"

    const v5, 0x7f07018d

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, ""

    :goto_2
    invoke-virtual {v2, v4, v5, v3}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v3, "\u25c6"

    goto :goto_2

    .line 2866
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 2867
    const-string/jumbo v1, ""

    .line 2868
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 2869
    const-string/jumbo v1, "R"

    .line 2873
    :cond_11
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f0202a1

    const-string/jumbo v4, "Blur"

    const v5, 0x7f0700d9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2870
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 2871
    const-string/jumbo v1, "L"

    goto :goto_3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 2833
    new-instance v0, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;-><init>(Landroid/content/Context;)V

    .line 2834
    .local v0, "view":Lorg/telegram/ui/Cells/PhotoEditToolCell;
    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;Landroid/view/View;)V

    return-object v1
.end method

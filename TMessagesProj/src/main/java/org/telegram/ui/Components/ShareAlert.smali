.class public Lorg/telegram/ui/Components/ShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;,
        Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$Holder;
    }
.end annotation


# instance fields
.field private captionCheck:Lorg/telegram/ui/Components/Switch;

.field private captionContainer:Landroid/widget/LinearLayout;

.field private captionTextView:Landroid/widget/TextView;

.field private checkAllCheck:Lorg/telegram/ui/Components/Switch;

.field private checkAllContainer:Landroid/widget/LinearLayout;

.field private checkAllTextView:Landroid/widget/TextView;

.field private copyLinkOnEnd:Z

.field private doneButton:Landroid/widget/LinearLayout;

.field private doneButtonBadgeTextView:Landroid/widget/TextView;

.field private doneButtonTextView:Landroid/widget/TextView;

.field private exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

.field private forwardType:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private isPublicChannel:Z

.field private layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

.field private loadingLink:Z

.field private nameTextView:Landroid/widget/EditText;

.field private qouteCheck:Lorg/telegram/ui/Components/Switch;

.field private qouteContainer:Landroid/widget/LinearLayout;

.field private qouteTextView:Landroid/widget/TextView;

.field private scrollOffsetY:I

.field private searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private selectedDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field private sendingMessageObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private shadow:Landroid/view/View;

.field private shadow2:Landroid/view/View;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

.field private tabDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field private topBeforeSwitch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "publicChannel"    # Z
    .param p4, "chatActivityEnterView"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z",
            "Lorg/telegram/ui/Components/ChatActivityEnterView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "messageObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    .line 97
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ShareAlert;->forwardType:I

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->tabDialogs:Ljava/util/ArrayList;

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020271

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObject:Ljava/util/ArrayList;

    .line 117
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .line 118
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    .line 122
    if-eqz p4, :cond_1

    .line 123
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 124
    .local v9, "caption":Ljava/lang/CharSequence;
    const-string/jumbo v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showSendButton()V

    .line 130
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObject:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 131
    .local v13, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz p3, :cond_0

    .line 132
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    .line 133
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 134
    .local v15, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 135
    iget-object v2, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 136
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$1;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    invoke-virtual {v2, v15, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 127
    .end local v9    # "caption":Ljava/lang/CharSequence;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "object":Lorg/telegram/messenger/MessageObject;
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;
    :cond_1
    const-string/jumbo v9, ""

    .restart local v9    # "caption":Ljava/lang/CharSequence;
    goto :goto_0

    .line 157
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$2;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    sget v3, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingLeft:I

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingLeft:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 215
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$3;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 225
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "forward_type"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ShareAlert;->forwardType:I

    .line 227
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/high16 v3, 0x2f000000

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x35

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v3, v0, v1, v9}, Lorg/telegram/ui/Components/ShareAlert$4;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const v3, 0x7f020074

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/4 v2, -0x2

    const/16 v3, 0x17

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllContainer:Landroid/widget/LinearLayout;

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x32

    const/16 v5, 0x30

    const/16 v6, 0x13

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$5;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllTextView:Landroid/widget/TextView;

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "ToAll"

    const v4, 0x7f07063b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance v2, Lorg/telegram/ui/Components/Switch;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllCheck:Lorg/telegram/ui/Components/Switch;

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->checkAllCheck:Lorg/telegram/ui/Components/Switch;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$6;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteContainer:Landroid/widget/LinearLayout;

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v2, 0x32

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteTextView:Landroid/widget/TextView;

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "WithQoute"

    const v4, 0x7f07063e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v2, Lorg/telegram/ui/Components/Switch;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$8;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 388
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainer:Landroid/widget/LinearLayout;

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v2, 0x32

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$9;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionTextView:Landroid/widget/TextView;

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Caption"

    const v4, 0x7f0700f4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->captionTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v2, Lorg/telegram/ui/Components/Switch;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 424
    const-string/jumbo v2, "multi_forward_tabs"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 425
    .local v12, "multiForwardTabs":Z
    const/16 v16, 0x30

    .line 426
    .local v16, "SuperMargin":I
    if-eqz v12, :cond_4

    .line 427
    const/16 v16, 0x60

    .line 431
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ShareAlert;->forwardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 442
    :goto_3
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 443
    .local v11, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f020268

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 445
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x13

    const/high16 v5, 0x43160000    # 150.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "ShareSendTo"

    const v4, 0x7f070476

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    :goto_4
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/high16 v5, 0x43460000    # 198.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x42c00000    # 96.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$11;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 502
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareAlert;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$12;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    move/from16 v0, v16

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const v3, -0xa0909

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$13;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$14;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 556
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "NoChats"

    const v4, 0x7f070332

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    move/from16 v0, v16

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    const v3, 0x7f020129

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    if-eqz v12, :cond_3

    .line 570
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    const v3, 0x7f020129

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42c00000    # 96.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount()V

    .line 586
    return-void

    .line 429
    .end local v11    # "imageView":Landroid/widget/ImageView;
    :cond_4
    const/16 v16, 0x30

    goto/16 :goto_2

    .line 434
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ShareAlert;->forwardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    goto/16 :goto_3

    .line 438
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    goto/16 :goto_3

    .line 452
    .restart local v11    # "imageView":Landroid/widget/ImageView;
    :cond_7
    const/4 v2, 0x3

    goto/16 :goto_4
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->forwardType:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->forwardType:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/Switch;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->checkAllCheck:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->tabDialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/Switch;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->qouteCheck:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/Switch;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLayout()V

    return-void
.end method

.method private copyLink(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-nez v3, :cond_0

    .line 636
    :goto_0
    return-void

    .line 629
    :cond_0
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 630
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v3, "label"

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 631
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 632
    const-string/jumbo v3, "LinkCopied"

    const v4, 0x7f0702c6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getCurrentTop()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ShareAlert$Holder;

    .line 592
    .local v1, "holder":Lorg/telegram/ui/Components/ShareAlert$Holder;
    if-eqz v1, :cond_1

    .line 593
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_0
    sub-int v2, v3, v2

    .line 596
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "holder":Lorg/telegram/ui/Components/ShareAlert$Holder;
    :goto_0
    return v2

    :cond_1
    const/16 v2, -0x3e8

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 606
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ShareAlert$Holder;

    .line 611
    .local v1, "holder":Lorg/telegram/ui/Components/ShareAlert$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 612
    .local v3, "top":I
    if-lez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 613
    .local v2, "newOffset":I
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_0

    .line 614
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 615
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 616
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->slidingTabView:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->setTranslationY(F)V

    .line 617
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 618
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 619
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTranslationY(F)V

    .line 620
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedCount()V
    .locals 7

    .prologue
    const v6, 0x7f07044a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Send"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const v1, -0xc57331

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "CopyLink"

    const v2, 0x7f070186

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const v1, -0xc13e07

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Send"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

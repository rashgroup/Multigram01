.class Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachBotButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private checkingForLongPress:Z

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private pendingCheckForLongPress:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

.field private pressCount:I

.field private pressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x31

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v3, 0x0

    .line 199
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 200
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 167
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForLongPress:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    .line 169
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressCount:I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForTap:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

    .line 202
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 204
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x36

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v4, 0x40e00000    # 7.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v8, 0x42820000    # 65.0f

    move v9, v7

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForLongPress:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
    .param p1, "x1"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForLongPress:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 160
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressCount:I

    return v0
.end method

.method static synthetic access$104(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 160
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->onLongPress()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method private onLongPress()V
    .locals 7

    .prologue
    .line 224
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    const-string/jumbo v1, "ChatHintsDelete"

    const v2, 0x7f070160

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 230
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForLongPress:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForLongPress:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForTap:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForTap:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 220
    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 221
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 260
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressed:Z

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->invalidate()V

    .line 262
    const/4 v0, 0x1

    .line 278
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 285
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->cancelCheckLongPress()V

    .line 289
    :cond_2
    return v0

    .line 263
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressed:Z

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 265
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 266
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressed:Z

    .line 267
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->playSoundEffect(I)V

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V
    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 271
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V
    invoke-static {v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    .line 272
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->invalidate()V

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 274
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressed:Z

    .line 275
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->invalidate()V

    goto :goto_0

    .line 281
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->startCheckLongPress()V

    goto :goto_1
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 244
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->nameTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 248
    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 251
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->requestLayout()V

    goto :goto_0
.end method

.method protected startCheckLongPress()V
    .locals 4

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForTap:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/ui/Components/ChatAttachAlert$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForTap:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

    .line 300
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pendingCheckForTap:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

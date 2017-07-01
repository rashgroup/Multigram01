.class public Lorg/telegram/ui/Cells/DialogCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "DialogCell.java"


# static fields
.field private static backPaint:Landroid/graphics/Paint;

.field private static botDrawable:Landroid/graphics/drawable/Drawable;

.field private static broadcastDrawable:Landroid/graphics/drawable/Drawable;

.field private static checkDrawable:Landroid/graphics/drawable/Drawable;

.field private static clockDrawable:Landroid/graphics/drawable/Drawable;

.field private static countDrawable:Landroid/graphics/drawable/Drawable;

.field private static countDrawableGrey:Landroid/graphics/drawable/Drawable;

.field private static countPaint:Landroid/text/TextPaint;

.field private static errorDrawable:Landroid/graphics/drawable/Drawable;

.field private static groupDrawable:Landroid/graphics/drawable/Drawable;

.field private static halfCheckDrawable:Landroid/graphics/drawable/Drawable;

.field private static linePaint:Landroid/graphics/Paint;

.field private static lockDrawable:Landroid/graphics/drawable/Drawable;

.field private static messagePaint:Landroid/text/TextPaint;

.field private static messagePrintingPaint:Landroid/text/TextPaint;

.field private static muteDrawable:Landroid/graphics/drawable/Drawable;

.field private static nameEncryptedPaint:Landroid/text/TextPaint;

.field private static namePaint:Landroid/text/TextPaint;

.field private static statusDrawable:Landroid/graphics/drawable/Drawable;

.field private static statusPaint:Landroid/text/TextPaint;

.field private static superGroupDrawable:Landroid/graphics/drawable/Drawable;

.field private static timePaint:Landroid/text/TextPaint;

.field private static verifiedDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private avatarTop:I

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private checkDrawLeft:I

.field private checkDrawTop:I

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentDialogId:J

.field private currentEditDate:I

.field private currentObject:Lorg/telegram/tgnet/TLObject;

.field private dialogMuted:Z

.field private dialogsType:I

.field private draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field private drawCheck1:Z

.field private drawCheck2:Z

.field private drawClock:Z

.field private drawCount:Z

.field private drawError:Z

.field private drawNameBot:Z

.field private drawNameBroadcast:Z

.field private drawNameGroup:Z

.field private drawNameLock:Z

.field private drawNameSuperGroup:Z

.field private drawVerified:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private errorLeft:I

.field private errorTop:I

.field private halfCheckDrawLeft:I

.field private index:I

.field private isDialogCell:Z

.field private isSelected:Z

.field private lastMessageDate:I

.field private lastPrintString:Ljava/lang/CharSequence;

.field private lastSendState:I

.field private lastUnreadState:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageTop:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field private statusLayout:Landroid/text/StaticLayout;

.field statusString:Ljava/lang/String;

.field private statusWidth:I

.field private timeLayout:Landroid/text/StaticLayout;

.field private timeLeft:I

.field private timeTop:I

.field private unreadCount:I

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 155
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 99
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 100
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 101
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 118
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    .line 124
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusString:Ljava/lang/String;

    .line 131
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 134
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 139
    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    .line 143
    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 150
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarTop:I

    .line 157
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->namePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->namePaint:Landroid/text/TextPaint;

    .line 159
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->namePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 160
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->namePaint:Landroid/text/TextPaint;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 161
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->namePaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 163
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->nameEncryptedPaint:Landroid/text/TextPaint;

    .line 164
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->nameEncryptedPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 165
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->nameEncryptedPaint:Landroid/text/TextPaint;

    const v1, -0xff59f2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 166
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->nameEncryptedPaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 168
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    .line 169
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 170
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    const v1, -0x707071

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 171
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    const v1, -0x707071

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    .line 173
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->linePaint:Landroid/graphics/Paint;

    .line 176
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->linePaint:Landroid/graphics/Paint;

    const v1, -0x232324

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->backPaint:Landroid/graphics/Paint;

    .line 179
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->backPaint:Landroid/graphics/Paint;

    const/high16 v1, 0xf000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    .line 182
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 183
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    const v1, -0xb27c4d

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 185
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 187
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->timePaint:Landroid/text/TextPaint;

    .line 188
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->timePaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 189
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->timePaint:Landroid/text/TextPaint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 191
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->timePaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 194
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->statusPaint:Landroid/text/TextPaint;

    .line 195
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->statusPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 196
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->statusPaint:Landroid/text/TextPaint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 197
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->statusPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 199
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->countPaint:Landroid/text/TextPaint;

    .line 200
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->countPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 201
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->countPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 202
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->countPaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->groupDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->muteDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->botDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->superGroupDrawable:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    :cond_0
    const v0, 0x7f0201ab

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->setBackgroundResource(I)V

    .line 223
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 225
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 227
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->updateColors()V

    .line 228
    return-void
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lorg/telegram/ui/Apogram/DialogsLoader;

    invoke-direct {v0}, Lorg/telegram/ui/Apogram/DialogsLoader;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/Apogram/DialogsLoader;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 790
    :goto_0
    return-object v0

    .line 785
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 786
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 787
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 788
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 790
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStatus(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x42340000    # 45.0f

    const/4 v2, 0x0

    .line 1108
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "mainconfig"

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1109
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "contact_status"

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1111
    .local v1, "contactStatus":Z
    const/4 v4, 0x0

    .line 1112
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 1113
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_5

    .line 1114
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 1118
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    .line 1119
    if-eqz v4, :cond_1

    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .line 1120
    .local v2, "isBot":Z
    :cond_1
    if-nez v2, :cond_4

    .line 1142
    if-eqz v1, :cond_4

    sget-object v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 1144
    const/high16 v7, 0x42380000    # 46.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 1145
    .local v6, "y":I
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_6

    .line 1146
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v7

    sget-object v8, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v5, v7, v8

    .line 1150
    .local v5, "x":I
    :goto_1
    sget-object v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v5

    sget-object v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1152
    if-eqz v4, :cond_2

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_2

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    if-gt v7, v8, :cond_3

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1153
    :cond_3
    sget-object v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    const v8, -0xd61ef8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1159
    :goto_2
    sget-object v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1180
    .end local v2    # "isBot":Z
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_4
    return-void

    .line 1115
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_0

    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    goto/16 :goto_0

    .line 1148
    .restart local v2    # "isBot":Z
    .restart local v6    # "y":I
    :cond_6
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .restart local v5    # "x":I
    goto :goto_1

    .line 1154
    :cond_7
    if-eqz v4, :cond_8

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_8

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eqz v7, :cond_8

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_8

    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-eqz v7, :cond_9

    .line 1155
    :cond_8
    sget-object v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 1157
    :cond_9
    sget-object v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    const v8, -0x333334

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2
.end method

.method private updateColors()V
    .locals 9

    .prologue
    .line 1059
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "ApoTheme"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1061
    .local v4, "themePreferences":Landroid/content/SharedPreferences;
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->namePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1063
    iget-boolean v6, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v6, :cond_0

    .line 1064
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->nameEncryptedPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogSNameColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1065
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogSNameColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1068
    :cond_0
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogMessageColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1069
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogMessageColor(Landroid/content/SharedPreferences;)I

    move-result v7

    iput v7, v6, Landroid/text/TextPaint;->linkColor:I

    .line 1071
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->linePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogDividerColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1073
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->timePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogDateColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1080
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->countPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogCountTextColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1082
    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogTikColor(Landroid/content/SharedPreferences;)I

    move-result v5

    .line 1083
    .local v5, "tickColor":I
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v5}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1084
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v5}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1086
    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 1087
    .local v3, "nameColor":I
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1088
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1089
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1090
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1092
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogMessageColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1094
    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogCountColor(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1095
    .local v0, "countColor":I
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v0}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1097
    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogMuteCountColor(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 1098
    .local v2, "muteCountColor":I
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v2}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1100
    const-string/jumbo v6, "theme_dialog_file_color"

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getThemeColor()I

    move-result v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1101
    .local v1, "fColor":I
    sget-object v6, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1103
    iget-object v6, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getAvatarRadius(Landroid/content/SharedPreferences;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1104
    iget-object v6, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getAvatarRadius(Landroid/content/SharedPreferences;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    .line 1105
    return-void
.end method


# virtual methods
.method public buildLayout()V
    .locals 42

    .prologue
    .line 295
    const-string/jumbo v34, ""

    .line 296
    .local v34, "nameString":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 297
    .local v3, "timeString":Ljava/lang/String;
    const/16 v21, 0x0

    .line 298
    .local v21, "countString":Ljava/lang/String;
    const-string/jumbo v31, ""

    .line 299
    .local v31, "messageString":Ljava/lang/CharSequence;
    const/16 v35, 0x0

    .line 300
    .local v35, "printingString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_0

    .line 301
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "printingString":Ljava/lang/CharSequence;
    check-cast v35, Ljava/lang/CharSequence;

    .line 303
    .restart local v35    # "printingString":Ljava/lang/CharSequence;
    :cond_0
    sget-object v23, Lorg/telegram/ui/Cells/DialogCell;->namePaint:Landroid/text/TextPaint;

    .line 304
    .local v23, "currentNamePaint":Landroid/text/TextPaint;
    sget-object v22, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    .line 305
    .local v22, "currentMessagePaint":Landroid/text/TextPaint;
    const/16 v19, 0x1

    .line 307
    .local v19, "checkMessage":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameSuperGroup:Z

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    .line 313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_16

    .line 316
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 317
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 318
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_15

    .line 319
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 320
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 372
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    move/from16 v28, v0

    .line 373
    .local v28, "lastDate":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v28, v0

    .line 377
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_24

    .line 378
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-eqz v2, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    move/from16 v0, v28

    if-le v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v2, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v2, :cond_7

    .line 382
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 388
    :cond_7
    :goto_1
    if-eqz v35, :cond_25

    .line 389
    move-object/from16 v31, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 390
    sget-object v22, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    .line 506
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_3d

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    .line 514
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_3f

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 516
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 517
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 518
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 554
    :cond_a
    :goto_4
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->timePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v5, v14

    .line 555
    .local v5, "timeWidth":I
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->timePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 556
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_46

    .line 557
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    .line 562
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_47

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v8, v23

    .line 582
    .end local v23    # "currentNamePaint":Landroid/text/TextPaint;
    .local v8, "currentNamePaint":Landroid/text/TextPaint;
    :goto_6
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 583
    const-string/jumbo v2, "HiddenName"

    const v4, 0x7f070262

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    .line 588
    :cond_b
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_4c

    .line 589
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v9, v2, v5

    .line 594
    .local v9, "nameWidth":I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v2, :cond_4d

    .line 595
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    .line 606
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v2, :cond_52

    .line 607
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 608
    .local v38, "w":I
    sub-int v9, v9, v38

    .line 609
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_51

    .line 610
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 638
    .end local v38    # "w":I
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_56

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v2, :cond_56

    .line 639
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v38, v2, v4

    .line 640
    .restart local v38    # "w":I
    sub-int v9, v9, v38

    .line 641
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_e

    .line 642
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 652
    .end local v38    # "w":I
    :cond_e
    :goto_a
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 653
    const/16 v2, 0xa

    const/16 v4, 0x20

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v8, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 655
    .local v7, "nameStringFinal":Ljava/lang/CharSequence;
    :try_start_0
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_b
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->statusPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->statusString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->statusWidth:I

    .line 663
    :try_start_1
    new-instance v10, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->statusString:Ljava/lang/String;

    sget-object v12, Lorg/telegram/ui/Cells/DialogCell;->statusPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->statusWidth:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->statusLayout:Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 669
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v32, v2, v4

    .line 671
    .local v32, "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_58

    .line 672
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 673
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_57

    const/high16 v2, 0x41500000    # 13.0f

    :goto_d
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 678
    .local v18, "avatarLeft":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarTop:I

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v10, 0x42500000    # 52.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    move/from16 v0, v18

    invoke-virtual {v2, v0, v4, v6, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 679
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v2, :cond_5b

    .line 680
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 681
    .restart local v38    # "w":I
    sub-int v13, v32, v38

    .line 682
    .end local v32    # "messageWidth":I
    .local v13, "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_5a

    .line 683
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 704
    .end local v38    # "w":I
    :goto_f
    if-eqz v19, :cond_11

    .line 705
    if-nez v31, :cond_f

    .line 706
    const-string/jumbo v31, ""

    .line 708
    :cond_f
    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    .line 709
    .local v30, "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_10

    .line 710
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 712
    :cond_10
    const/16 v2, 0xa

    const/16 v4, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v30

    .line 713
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v31

    .line 715
    .end local v30    # "mess":Ljava/lang/String;
    :cond_11
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 716
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v13, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 718
    .local v11, "messageStringFinal":Ljava/lang/CharSequence;
    :try_start_2
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, v22

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 725
    :goto_10
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5f

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_13

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v29

    .line 728
    .local v29, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 729
    .local v40, "widthpx":D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_5e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v2, :cond_5e

    .line 730
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 734
    :cond_12
    :goto_11
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-nez v2, :cond_13

    .line 735
    int-to-double v14, v9

    cmpg-double v2, v40, v14

    if-gez v2, :cond_13

    .line 736
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 740
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v29

    .line 742
    .restart local v29    # "left":F
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-nez v2, :cond_14

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 744
    .restart local v40    # "widthpx":D
    int-to-double v14, v13

    cmpg-double v2, v40, v14

    if-gez v2, :cond_14

    .line 745
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 772
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    :cond_14
    :goto_12
    return-void

    .line 322
    .end local v5    # "timeWidth":I
    .end local v7    # "nameStringFinal":Ljava/lang/CharSequence;
    .end local v8    # "currentNamePaint":Landroid/text/TextPaint;
    .end local v9    # "nameWidth":I
    .end local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    .end local v13    # "messageWidth":I
    .end local v18    # "avatarLeft":I
    .end local v28    # "lastDate":I
    .restart local v23    # "currentNamePaint":Landroid/text/TextPaint;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 323
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_0

    .line 326
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_20

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ltz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_18

    .line 328
    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    .line 329
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 338
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 340
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1d

    .line 341
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 343
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_1b

    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_14
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_0

    .line 331
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ltz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_1a

    .line 332
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameSuperGroup:Z

    .line 333
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    goto :goto_13

    .line 335
    :cond_1a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 336
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    goto :goto_13

    .line 343
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameSuperGroup:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_14

    :cond_1c
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_14

    .line 346
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_1e

    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_15
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 347
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_0

    .line 346
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameSuperGroup:Z

    if-eqz v2, :cond_1f

    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_15

    :cond_1f
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_15

    .line 350
    :cond_20
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_22

    .line 351
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 355
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_21

    .line 357
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    .line 358
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 359
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_23

    .line 360
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 361
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 367
    :cond_21
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    goto/16 :goto_0

    .line 353
    :cond_22
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_16

    .line 363
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 364
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_17

    .line 385
    .restart local v28    # "lastDate":I
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto/16 :goto_1

    .line 392
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_28

    .line 395
    const/16 v19, 0x0

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 397
    const-string/jumbo v2, "Draft"

    const v4, 0x7f0705a3

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 398
    .local v24, "draftString":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .line 399
    .local v36, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x22b4c7

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v10, 0x21

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 400
    move-object/from16 v31, v36

    .line 401
    goto/16 :goto_2

    .line 402
    .end local v24    # "draftString":Ljava/lang/String;
    .end local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 403
    .restart local v30    # "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_27

    .line 404
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 406
    :cond_27
    const-string/jumbo v2, "Draft"

    const v4, 0x7f0705a3

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 407
    .restart local v24    # "draftString":Ljava/lang/String;
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v24, v4, v6

    const/4 v6, 0x1

    const/16 v10, 0xa

    const/16 v12, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .line 408
    .restart local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x22b4c7

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x21

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 409
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v31

    .line 410
    goto/16 :goto_2

    .line 412
    .end local v24    # "draftString":Ljava/lang/String;
    .end local v30    # "mess":Ljava/lang/String;
    .end local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_2f

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_8

    .line 414
    sget-object v22, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v2, :cond_29

    .line 416
    const-string/jumbo v2, "EncryptionProcessing"

    const v4, 0x7f0701de

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 417
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v2, :cond_2b

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 419
    const-string/jumbo v2, "AwaitingEncryption"

    const v4, 0x7f0700cd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v12, v6, v10

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 421
    :cond_2a
    const-string/jumbo v2, "AwaitingEncryption"

    const v4, 0x7f0700cd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v6, v10

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 423
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v2, :cond_2c

    .line 424
    const-string/jumbo v2, "EncryptionRejected"

    const v4, 0x7f0701df

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 425
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_8

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v2, v4, :cond_2e

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 428
    const-string/jumbo v2, "EncryptedChatStartedOutgoing"

    const v4, 0x7f0701d3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v12, v6, v10

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 430
    :cond_2d
    const-string/jumbo v2, "EncryptedChatStartedOutgoing"

    const v4, 0x7f0701d3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v6, v10

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 433
    :cond_2e
    const-string/jumbo v2, "EncryptedChatStartedIncoming"

    const v4, 0x7f0701d2

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 438
    :cond_2f
    const/16 v27, 0x0

    .line 439
    .local v27, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v26, 0x0

    .line 440
    .local v26, "fromChat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 441
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v27

    .line 445
    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v2, :cond_31

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    .line 447
    sget-object v22, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 443
    :cond_30
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v26

    goto :goto_18

    .line 449
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v2, :cond_3b

    if-nez v26, :cond_3b

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 452
    const-string/jumbo v2, "FromYou"

    const v4, 0x7f07024b

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    .line 460
    .local v33, "name":Ljava/lang/String;
    :goto_19
    const/16 v19, 0x0

    .line 463
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "ApoTheme"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 464
    .local v37, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "theme_dialog_file_color"

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getThemeColor()I

    move-result v4

    move-object/from16 v0, v37

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 466
    .local v20, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_37

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    .line 468
    .restart local v30    # "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_32

    .line 469
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 471
    :cond_32
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    const/16 v10, 0xa

    const/16 v12, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .line 486
    .end local v30    # "mess":Ljava/lang/String;
    .restart local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_1a
    invoke-virtual/range {v36 .. v36}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 488
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move/from16 v0, v20

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x21

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 490
    :cond_33
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v31

    .line 491
    goto/16 :goto_2

    .line 453
    .end local v20    # "color":I
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v37    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_34
    if-eqz v27, :cond_35

    .line 454
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\n"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_19

    .line 455
    .end local v33    # "name":Ljava/lang/String;
    :cond_35
    if-eqz v26, :cond_36

    .line 456
    move-object/from16 v0, v26

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const-string/jumbo v4, "\n"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_19

    .line 458
    .end local v33    # "name":Ljava/lang/String;
    :cond_36
    const-string/jumbo v33, "DELETED"

    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_19

    .line 472
    .restart local v20    # "color":I
    .restart local v37    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 473
    sget-object v22, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    .line 474
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v10, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .line 476
    .restart local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move/from16 v0, v20

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v36 .. v36}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v10, 0x21

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1a

    .line 477
    .end local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 479
    .restart local v30    # "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_39

    .line 480
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 482
    :cond_39
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    const/16 v10, 0xa

    const/16 v12, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .line 483
    .restart local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_1a

    .line 484
    .end local v30    # "mess":Ljava/lang/String;
    .end local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_3a
    const-string/jumbo v2, ""

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .restart local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_1a

    .line 492
    .end local v20    # "color":I
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v37    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3c

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    goto/16 :goto_2

    .line 495
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 497
    sget-object v22, Lorg/telegram/ui/Cells/DialogCell;->messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 508
    .end local v26    # "fromChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v27    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v2, :cond_3e

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 510
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_9

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 521
    :cond_3f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-eqz v2, :cond_40

    .line 522
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 523
    const-string/jumbo v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 528
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v2, :cond_45

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 530
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 532
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_4

    .line 525
    :cond_40
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_1b

    .line 534
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 536
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 538
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_4

    .line 540
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_44

    :cond_43
    const/4 v2, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 542
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_4

    .line 541
    :cond_44
    const/4 v2, 0x0

    goto :goto_1c

    .line 547
    :cond_45
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 548
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 549
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 550
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_4

    .line 559
    .restart local v5    # "timeWidth":I
    :cond_46
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto/16 :goto_5

    .line 564
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_63

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0x309

    if-eq v2, v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0x14d

    if-eq v2, v4, :cond_4b

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4b

    .line 566
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_49

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v2, :cond_48

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 567
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v34

    .line 578
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_63

    .line 579
    sget-object v8, Lorg/telegram/ui/Cells/DialogCell;->nameEncryptedPaint:Landroid/text/TextPaint;

    .end local v23    # "currentNamePaint":Landroid/text/TextPaint;
    .restart local v8    # "currentNamePaint":Landroid/text/TextPaint;
    goto/16 :goto_6

    .line 569
    .end local v8    # "currentNamePaint":Landroid/text/TextPaint;
    .restart local v23    # "currentNamePaint":Landroid/text/TextPaint;
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 570
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    goto :goto_1d

    .line 572
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v34

    goto :goto_1d

    .line 576
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v34

    goto :goto_1d

    .line 591
    .end local v23    # "currentNamePaint":Landroid/text/TextPaint;
    .restart local v8    # "currentNamePaint":Landroid/text/TextPaint;
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v2, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v9, v2, v5

    .line 592
    .restart local v9    # "nameWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_7

    .line 596
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_4e

    .line 597
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_8

    .line 599
    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameSuperGroup:Z

    if-eqz v2, :cond_4f

    .line 600
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_8

    .line 601
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    if-eqz v2, :cond_50

    .line 602
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_8

    .line 603
    :cond_50
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-eqz v2, :cond_c

    .line 604
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_8

    .line 612
    .restart local v38    # "w":I
    :cond_51
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 613
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_9

    .line 615
    .end local v38    # "w":I
    :cond_52
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v2, :cond_d

    .line 616
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 617
    .restart local v38    # "w":I
    sub-int v9, v9, v38

    .line 618
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v2, :cond_54

    .line 619
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v9, v2

    .line 620
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_53

    .line 621
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 622
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto/16 :goto_9

    .line 624
    :cond_53
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v4, v4, v38

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_9

    .line 629
    :cond_54
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_55

    .line 630
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto/16 :goto_9

    .line 632
    :cond_55
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 633
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_9

    .line 644
    .end local v38    # "w":I
    :cond_56
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_e

    .line 645
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v38, v2, v4

    .line 646
    .restart local v38    # "w":I
    sub-int v9, v9, v38

    .line 647
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_e

    .line 648
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_a

    .line 656
    .end local v38    # "w":I
    .restart local v7    # "nameStringFinal":Ljava/lang/CharSequence;
    :catch_0
    move-exception v25

    .line 657
    .local v25, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 664
    .end local v25    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v25

    .line 665
    .restart local v25    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 673
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v32    # "messageWidth":I
    :cond_57
    const/high16 v2, 0x41100000    # 9.0f

    goto/16 :goto_d

    .line 675
    :cond_58
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 676
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_59

    const/high16 v2, 0x42820000    # 65.0f

    :goto_1e
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v18, v4, v2

    .restart local v18    # "avatarLeft":I
    goto/16 :goto_e

    .end local v18    # "avatarLeft":I
    :cond_59
    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_1e

    .line 685
    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    .restart local v18    # "avatarLeft":I
    .restart local v38    # "w":I
    :cond_5a
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 686
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto/16 :goto_f

    .line 688
    .end local v13    # "messageWidth":I
    .end local v38    # "w":I
    .restart local v32    # "messageWidth":I
    :cond_5b
    if-eqz v21, :cond_5d

    .line 689
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/Cells/DialogCell;->countPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    .line 690
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v12, Lorg/telegram/ui/Cells/DialogCell;->countPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, v21

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 691
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 692
    .restart local v38    # "w":I
    sub-int v13, v32, v38

    .line 693
    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_5c

    .line 694
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 699
    :goto_1f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_f

    .line 696
    :cond_5c
    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 697
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto :goto_1f

    .line 701
    .end local v13    # "messageWidth":I
    .end local v38    # "w":I
    .restart local v32    # "messageWidth":I
    :cond_5d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move/from16 v13, v32

    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    goto/16 :goto_f

    .line 719
    .restart local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    :catch_2
    move-exception v25

    .line 720
    .restart local v25    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 731
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v29    # "left":F
    .restart local v40    # "widthpx":D
    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_12

    .line 732
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    sget-object v2, Lorg/telegram/ui/Cells/DialogCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto/16 :goto_11

    .line 750
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_62

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_62

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v29

    .line 752
    .restart local v29    # "left":F
    int-to-float v2, v9

    cmpl-float v2, v29, v2

    if-nez v2, :cond_60

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 754
    .restart local v40    # "widthpx":D
    int-to-double v14, v9

    cmpg-double v2, v40, v14

    if-gez v2, :cond_60

    .line 755
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 758
    .end local v40    # "widthpx":D
    :cond_60
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v2, :cond_61

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_62

    .line 759
    :cond_61
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v2, v2

    add-float v2, v2, v29

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 762
    .end local v29    # "left":F
    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v29

    .line 764
    .restart local v29    # "left":F
    int-to-float v2, v13

    cmpl-float v2, v29, v2

    if-nez v2, :cond_14

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 766
    .restart local v40    # "widthpx":D
    int-to-double v14, v13

    cmpg-double v2, v40, v14

    if-gez v2, :cond_14

    .line 767
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto/16 :goto_12

    .end local v7    # "nameStringFinal":Ljava/lang/CharSequence;
    .end local v8    # "currentNamePaint":Landroid/text/TextPaint;
    .end local v9    # "nameWidth":I
    .end local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    .end local v13    # "messageWidth":I
    .end local v18    # "avatarLeft":I
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    .restart local v23    # "currentNamePaint":Landroid/text/TextPaint;
    :cond_63
    move-object/from16 v8, v23

    .end local v23    # "currentNamePaint":Landroid/text/TextPaint;
    .restart local v8    # "currentNamePaint":Landroid/text/TextPaint;
    goto/16 :goto_6
.end method

.method public checkCurrentDialogIndex()V
    .locals 8

    .prologue
    .line 794
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 795
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 796
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v1

    .line 797
    .local v1, "newDraftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 798
    .local v2, "newMessageObject":Lorg/telegram/messenger/MessageObject;
    iget-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ne v3, v4, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    if-ne v3, v4, :cond_3

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eq v1, v3, :cond_4

    .line 804
    :cond_3
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 805
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 808
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v1    # "newDraftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .end local v2    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_4
    return-void
.end method

.method public getDialogId()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onAttachedToWindow()V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 266
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 260
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x41840000    # 16.5f

    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v6, 0x40b00000    # 5.5f

    const/4 v1, 0x0

    .line 948
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v0, :cond_1

    .line 953
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/DialogCell;->backPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 956
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_9

    .line 957
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 958
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 974
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    .line 975
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 976
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 978
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 981
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 982
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 984
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    .line 987
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 988
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 990
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 997
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v0, :cond_d

    .line 998
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 999
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1012
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v0, :cond_f

    .line 1013
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1014
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1020
    :cond_6
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v0, :cond_10

    .line 1021
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1022
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1037
    :cond_7
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_8

    .line 1038
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_12

    .line 1039
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/DialogCell;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1045
    :cond_8
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1048
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->setStatus(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 959
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v0, :cond_a

    .line 960
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->groupDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 961
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 963
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameSuperGroup:Z

    if-eqz v0, :cond_b

    .line 964
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->superGroupDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 965
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 966
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    if-eqz v0, :cond_c

    .line 967
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 968
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 969
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-eqz v0, :cond_2

    .line 970
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->botDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 971
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 991
    :catch_0
    move-exception v8

    .line 992
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1000
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v0, :cond_5

    .line 1001
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v0, :cond_e

    .line 1002
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1003
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1004
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1005
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 1007
    :cond_e
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1008
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 1015
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_6

    .line 1016
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1017
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 1023
    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v0, :cond_7

    .line 1024
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_11

    .line 1025
    sget-object v3, Lorg/telegram/ui/Cells/DialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v4, v0, v2

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v6, v0, v2

    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1026
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1031
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1032
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1034
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 1028
    :cond_11
    sget-object v3, Lorg/telegram/ui/Cells/DialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v4, v0, v2

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v6, v0, v2

    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1029
    sget-object v0, Lorg/telegram/ui/Cells/DialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1041
    :cond_12
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/DialogCell;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 275
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 276
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->setMeasuredDimension(II)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 291
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;I)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "date"    # I

    .prologue
    const/4 v1, 0x0

    .line 239
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 240
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 241
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 242
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 243
    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 244
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 245
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 249
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 250
    return-void

    :cond_1
    move v0, v1

    .line 243
    goto :goto_0

    :cond_2
    move v0, v1

    .line 245
    goto :goto_1
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$TL_dialog;II)V
    .locals 2
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "i"    # I
    .param p3, "type"    # I

    .prologue
    .line 231
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 233
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    .line 234
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 236
    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 775
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 776
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 778
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    .line 779
    return-void
.end method

.method public update(I)V
    .locals 14
    .param p1, "mask"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 811
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->updateColors()V

    .line 812
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_0

    .line 813
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 814
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_0

    if-nez p1, :cond_0

    .line 815
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v12, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 817
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 819
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 826
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_0
    if-eqz p1, :cond_f

    .line 827
    const/4 v7, 0x0

    .line 828
    .local v7, "continueUpdate":Z
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_4

    .line 829
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_4

    .line 830
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .line 831
    .local v11, "printString":Ljava/lang/CharSequence;
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    if-eqz v11, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    if-nez v11, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    if-eqz v11, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 832
    :cond_3
    const/4 v7, 0x1

    .line 836
    .end local v11    # "printString":Ljava/lang/CharSequence;
    :cond_4
    if-nez v7, :cond_5

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_5

    .line 838
    const/4 v7, 0x1

    .line 841
    :cond_5
    if-nez v7, :cond_6

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_6

    .line 843
    const/4 v7, 0x1

    .line 847
    :cond_6
    if-nez v7, :cond_7

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_7

    .line 849
    const/4 v7, 0x1

    .line 853
    :cond_7
    if-nez v7, :cond_8

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_8

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_8

    .line 855
    const/4 v7, 0x1

    .line 858
    :cond_8
    if-nez v7, :cond_9

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_9

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_9

    .line 860
    const/4 v7, 0x1

    .line 863
    :cond_9
    if-nez v7, :cond_a

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_a

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v3

    if-eq v0, v3, :cond_e

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 866
    const/4 v7, 0x1

    .line 875
    :cond_a
    :goto_2
    if-nez v7, :cond_b

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_b

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v0, v3, :cond_b

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 878
    const/4 v7, 0x1

    .line 882
    :cond_b
    if-nez v7, :cond_f

    .line 944
    .end local v7    # "continueUpdate":Z
    :goto_3
    return-void

    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_c
    move v0, v5

    .line 816
    goto/16 :goto_0

    :cond_d
    move v0, v5

    .line 818
    goto/16 :goto_1

    .line 867
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v7    # "continueUpdate":Z
    :cond_e
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_a

    .line 868
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 869
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_a

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v3, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-eq v0, v3, :cond_a

    .line 870
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 871
    const/4 v7, 0x1

    goto :goto_2

    .line 887
    .end local v7    # "continueUpdate":Z
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v12, v13}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 888
    iput-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 889
    iput-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 890
    iput-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 892
    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    long-to-int v10, v12

    .line 893
    .local v10, "lower_id":I
    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const/16 v0, 0x20

    shr-long/2addr v12, v0

    long-to-int v9, v12

    .line 894
    .local v9, "high_id":I
    if-eqz v10, :cond_17

    .line 895
    if-ne v9, v2, :cond_15

    .line 896
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 917
    :cond_10
    :goto_5
    const/4 v1, 0x0

    .line 918
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_18

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_11

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 922
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 935
    :cond_12
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 937
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 938
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 943
    :goto_7
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    goto/16 :goto_3

    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v9    # "high_id":I
    .end local v10    # "lower_id":I
    :cond_14
    move v0, v5

    .line 887
    goto :goto_4

    .line 898
    .restart local v9    # "high_id":I
    .restart local v10    # "lower_id":I
    :cond_15
    if-gez v10, :cond_16

    .line 899
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 900
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v0, :cond_10

    .line 901
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 902
    .local v6, "chat2":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_10

    .line 903
    iput-object v6, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_5

    .line 907
    .end local v6    # "chat2":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_5

    .line 911
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_10

    .line 913
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_5

    .line 926
    .restart local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_12

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_19

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 930
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    goto/16 :goto_6

    .line 940
    :cond_1a
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->requestLayout()V

    goto/16 :goto_7
.end method

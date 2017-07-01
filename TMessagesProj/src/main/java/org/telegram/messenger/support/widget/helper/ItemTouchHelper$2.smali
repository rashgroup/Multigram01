.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 307
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$400(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 311
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 312
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 313
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-static {p2, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 314
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 315
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 316
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$500(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V

    .line 317
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 318
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-static {v5, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$600(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 319
    .local v1, "animation":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_1

    .line 320
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 321
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 322
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I
    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$700(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I

    .line 323
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 326
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$800(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 327
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v5, p2, v6, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$900(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 344
    .end local v1    # "animation":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 345
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 347
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 330
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 331
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 332
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v5, v6, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$800(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 333
    :cond_5
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v5, v6, :cond_1

    .line 336
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p2, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 340
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 341
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v5, v0, p2, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1000(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 347
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$800(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 352
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$400(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 358
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 360
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v6, v8, :cond_2

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 364
    .local v0, "action":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p2, v6}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 366
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_3

    .line 367
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v6, v0, p2, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1000(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    .line 369
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 370
    .local v5, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_1

    .line 373
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 391
    :cond_4
    :goto_1
    :pswitch_1
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v7, 0x0

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$800(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 392
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v8, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    goto :goto_0

    .line 376
    :pswitch_2
    if-ltz v1, :cond_1

    .line 377
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v7, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v6, p2, v7, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$900(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 378
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->moveIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    invoke-static {v6, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 379
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$200(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 380
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$200(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 381
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 387
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    # getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 395
    :pswitch_4
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 396
    .local v4, "pointerIndex":I
    invoke-static {p2, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 397
    .local v3, "pointerId":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_1

    .line 400
    if-nez v4, :cond_5

    const/4 v2, 0x1

    .line 401
    .local v2, "newPointerIndex":I
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-static {p2, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 402
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v7, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v6, p2, v7, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$900(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

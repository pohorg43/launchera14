.class public Lcom/android/quickstep/util/ActiveGestureErrorDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyseAndDump(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/quickstep/util/ActiveGestureLog$EventLog;)V
    .registers 9
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/quickstep/util/ActiveGestureLog$EventLog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Error messages for gesture ID: "

    invoke-static {p0, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->logId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object p2, p2, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->eventEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_142

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;

    invoke-virtual {v3}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->getGestureEvent()Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object v3

    if-nez v3, :cond_33

    goto :goto_1f

    :cond_33
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/quickstep/util/ActiveGestureErrorDetector$1;->$SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_2a4

    goto :goto_1f

    :pswitch_42  #0xe
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_RECENTS_ANIMATION_CANCELED set before/without startRecentsAnimation."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_13f

    :pswitch_51  #0xd
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_RECENTS_SCROLLING_FINISHED set before/without calling setOnPageTransitionEndCallback."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_13f

    :pswitch_60  #0xc
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_SCREENSHOT_CAPTURED set before/without STATE_CAPTURE_SCREENSHOT."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_13f

    :pswitch_6f  #0xb
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "STATE_GESTURE_CANCELLED set before/without motion up."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_GESTURE_CANCELLED set before/without STATE_GESTURE_STARTED."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_13f

    :pswitch_8c  #0xa
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "STATE_GESTURE_COMPLETED set before/without motion up."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_GESTURE_COMPLETED set before/without STATE_GESTURE_STARTED."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_13f

    :pswitch_a9  #0x9
    const-string v3, "Launcher destroyed mid-gesture"

    invoke-static {v4, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_13f

    :pswitch_b1  #0x8
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "expecting onTasksAppeared to be called before/without setting end target to new task"

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_13f

    :pswitch_c0  #0x7
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string/jumbo v5, "onTasksAppeared called before/without setting end target to new task"

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string/jumbo v4, "onTasksAppeared was not expected to be called"

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_13f

    :pswitch_de  #0x6
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    goto :goto_f0

    :cond_ef
    move v4, v1

    :goto_f0
    const-string/jumbo v3, "recents view scroller animation aborted after setting end target HOME, but before settling on end target."

    invoke-static {v4, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_13f

    :pswitch_f8  #0x5
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string/jumbo v4, "recents activity screenshot was cleaned up before/without STATE_SCREENSHOT_CAPTURED being set."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_13f

    :pswitch_107  #0x4
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "cancelRecentsAnimation called before/without startRecentsAnimation."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_13f

    :pswitch_115  #0x3
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "finishRecentsAnimation called before/without startRecentsAnimation."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_13f

    :pswitch_123  #0x2
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string/jumbo v4, "onSettledOnEndTarget called before/without setEndTarget."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_13f

    :pswitch_132  #0x1
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "Motion up detected before/without motion down."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    :goto_13f
    or-int/2addr v2, v3

    goto/16 :goto_1f

    :cond_142
    sget-object p2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v4

    const-string v3, "Motion down never detected."

    invoke-static {p2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v3, "Motion up never detected."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_170

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_170

    move v3, v4

    goto :goto_171

    :cond_170
    move v3, v1

    :goto_171
    const-string/jumbo v5, "setEndTarget was called, but onSettledOnEndTarget wasn\'t."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr p2, v3

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_189

    move v3, v4

    goto :goto_18a

    :cond_189
    move v3, v1

    :goto_18a
    const-string/jumbo v5, "setEndTarget was called, but STATE_END_TARGET_ANIMATION_FINISHED was never set."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr p2, v3

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a2

    move v2, v4

    goto :goto_1a3

    :cond_1a2
    move v2, v1

    :goto_1a3
    const-string/jumbo v3, "setEndTarget was called, but STATE_RECENTS_SCROLLING_FINISHED was never set."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c5

    move v2, v4

    goto :goto_1c6

    :cond_1c5
    move v2, v1

    :goto_1c6
    const-string v3, "STATE_END_TARGET_ANIMATION_FINISHED and STATE_RECENTS_SCROLLING_FINISHED were set, but onSettledOnEndTarget wasn\'t called."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e7

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e7

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e7

    move v2, v4

    goto :goto_1e8

    :cond_1e7
    move v2, v1

    :goto_1e8
    const-string/jumbo v3, "startRecentsAnimation was called, but finishRecentsAnimation and cancelRecentsAnimation weren\'t."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20a

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20a

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20a

    move v2, v4

    goto :goto_20b

    :cond_20a
    move v2, v1

    :goto_20b
    const-string v3, "STATE_GESTURE_STARTED was set, but STATE_GESTURE_COMPLETED and STATE_GESTURE_CANCELLED weren\'t."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_224

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_224

    move v2, v4

    goto :goto_225

    :cond_224
    move v2, v1

    :goto_225
    const-string v3, "STATE_CAPTURE_SCREENSHOT was set, but STATE_SCREENSHOT_CAPTURED wasn\'t."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23e

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23e

    move v2, v4

    goto :goto_23f

    :cond_23e
    move v2, v1

    :goto_23f
    const-string/jumbo v3, "setOnPageTransitionEndCallback called, but STATE_RECENTS_SCROLLING_FINISHED wasn\'t set."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_261

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_261

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_261

    move v2, v4

    goto :goto_262

    :cond_261
    move v2, v1

    :goto_262
    const-string v3, "AbsSwipeUpHandler.cancelCurrentAnimation wasn\'t called and STATE_HANDLER_INVALIDATED wasn\'t set."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27b

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    move v2, v4

    goto :goto_27c

    :cond_27b
    move v2, v1

    :goto_27c
    const-string v3, "STATE_RECENTS_ANIMATION_CANCELED was set but the task screenshot wasn\'t cleaned up."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_294

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    move v1, v4

    :cond_294
    const-string/jumbo v0, "onTaskAppeared was expected to be called but wasn\'t."

    invoke-static {v1, p0, v0, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    or-int/2addr p2, v0

    if-nez p2, :cond_2a3

    const-string p2, "\tNo errors detected."

    invoke-static {p0, p2, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2a3
    return-void

    :pswitch_data_2a4
    .packed-switch 0x1
        :pswitch_132  #00000001
        :pswitch_123  #00000002
        :pswitch_115  #00000003
        :pswitch_107  #00000004
        :pswitch_f8  #00000005
        :pswitch_de  #00000006
        :pswitch_c0  #00000007
        :pswitch_b1  #00000008
        :pswitch_a9  #00000009
        :pswitch_8c  #0000000a
        :pswitch_6f  #0000000b
        :pswitch_60  #0000000c
        :pswitch_51  #0000000d
        :pswitch_42  #0000000e
    .end packed-switch
.end method

.method private static printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t- "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

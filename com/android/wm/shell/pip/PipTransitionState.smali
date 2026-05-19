.class public Lcom/android/wm/shell/pip/PipTransitionState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;,
        Lcom/android/wm/shell/pip/PipTransitionState$TransitionState;
    }
.end annotation


# static fields
.field public static final ENTERED_PIP:I = 0x4

.field public static final ENTERING_PIP:I = 0x3

.field public static final ENTRY_SCHEDULED:I = 0x2

.field public static final EXITING_PIP:I = 0x5

.field public static final TASK_APPEARED:I = 0x1

.field public static final UNDEFINED:I


# instance fields
.field private mInSwipePipToHomeTransition:Z

.field private mIsExitingPip:Z

.field private final mOnPipTransitionStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    return-void
.end method

.method public static hasEnteredPip(I)Z
    .registers 2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static isEnteringPip(I)Z
    .registers 2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static isInPip(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private stateToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    const-string p0, "exiting-pip"

    return-object p0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown state: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const-string p0, "entered-pip"

    return-object p0

    :cond_2e
    const-string p0, "entering-pip"

    return-object p0

    :cond_31
    const-string p0, "entry-scheduled"

    return-object p0

    :cond_34
    const-string/jumbo p0, "task-appeared"

    return-object p0

    :cond_38
    const-string/jumbo p0, "undefined"

    return-object p0
.end method


# virtual methods
.method public addOnPipTransitionStateChangedListener(Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getExitingPipState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mIsExitingPip:Z

    return p0
.end method

.method public getInSwipePipToHomeTransition()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    return p0
.end method

.method public getTransitionState()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    return p0
.end method

.method public hasEnteredPip()Z
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->hasEnteredPip(I)Z

    move-result p0

    return p0
.end method

.method public isEnteringPip()Z
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->isEnteringPip(I)Z

    move-result p0

    return p0
.end method

.method public isInPip()Z
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result p0

    return p0
.end method

.method public removeOnPipTransitionStateChangedListener(Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExitingPipState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mIsExitingPip:Z

    return-void
.end method

.method public setInSwipePipToHomeTransition(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    return-void
.end method

.method public setTransitionState(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/PipTransitionState;->setExitingPipState(Z)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTransitionState;->setExitingPipState(Z)V

    :goto_c
    iget v1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-eq v1, p1, :cond_2a

    :goto_10
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;

    iget v2, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-interface {v1, v2, p1}, Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;->onPipTransitionStateChanged(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_28
    iput p1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    :cond_2a
    return-void
.end method

.method public shouldBlockResizeRequest()Z
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_b

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->stateToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "PipTransitionState(mState=%s, mInSwipePipToHomeTransition=%b)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

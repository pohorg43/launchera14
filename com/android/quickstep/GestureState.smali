.class public Lcom/android/quickstep/GestureState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/GestureState$GestureEndTarget;
    }
.end annotation


# static fields
.field public static final DEFAULT_STATE:Lcom/android/quickstep/GestureState;

.field private static FLAG_COUNT:I = 0x0

.field public static final STATE_END_TARGET_ANIMATION_FINISHED:I

.field public static final STATE_END_TARGET_SET:I

.field private static final STATE_NAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_PENDING_APPLY_LOAD_PLAN_DONE_INVALIDATED:I

.field public static final STATE_PENDING_APPLY_LOAD_PLAN_INIT:I

.field public static final STATE_PENDING_APPLY_LOAD_PLAN_SUCCESS:I

.field public static final STATE_RECENTS_ANIMATION_CANCELED:I

.field public static final STATE_RECENTS_ANIMATION_ENDED:I

.field public static final STATE_RECENTS_ANIMATION_FINISHED:I

.field public static final STATE_RECENTS_ANIMATION_INITIALIZED:I

.field public static final STATE_RECENTS_ANIMATION_STARTED:I

.field public static final STATE_RECENTS_ATTACHED_TO_WINDOW_STABLE:I

.field public static final STATE_RECENTS_SCROLLING_FINISHED:I

.field private static final TAG:Ljava/lang/String; = "GestureState"


# instance fields
.field public isThreeFingerGesture:Z

.field private final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field private final mGestureId:I

.field private mHandlingAtomicEvent:Z

.field private final mHomeIntent:Landroid/content/Intent;

.field private mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private mLastStartedSecondTaskId:I

.field private mLastStartedTaskId:I

.field private final mOverviewIntent:Landroid/content/Intent;

.field private mPreviouslyAppearedTaskIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

.field private final mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private mSwipeUpStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/quickstep/GestureState;

    invoke-direct {v0}, Lcom/android/quickstep/GestureState;-><init>()V

    sput-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    const/4 v0, 0x0

    sput v0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    const-string v0, "STATE_END_TARGET_SET"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    const-string v0, "STATE_END_TARGET_ANIMATION_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    const-string v0, "STATE_RECENTS_ANIMATION_INITIALIZED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    const-string v0, "STATE_RECENTS_ANIMATION_STARTED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    const-string v0, "STATE_RECENTS_ANIMATION_CANCELED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    const-string v0, "STATE_RECENTS_ANIMATION_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_FINISHED:I

    const-string v0, "STATE_RECENTS_ANIMATION_ENDED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    const-string v0, "STATE_RECENTS_SCROLLING_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    const-string v0, "STATE_RECENTS_ATTACHED_TO_WINDOW_STABLE"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ATTACHED_TO_WINDOW_STABLE:I

    const-string v0, "STATE_PENDING_APPLY_LOAD_PLAN_INIT"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_INIT:I

    const-string v0, "STATE_PENDING_APPLY_LOAD_PLAN_DONE_INVALIDATED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_DONE_INVALIDATED:I

    const-string v0, "STATE_PENDING_APPLY_LOAD_PLAN_SUCCESS"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v2, Lcom/android/quickstep/MultiStateCallback;

    sget-object v3, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    iput v0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/GestureState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    iget v0, p1, Lcom/android/quickstep/GestureState;->mGestureId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    iget v0, p1, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    iget-boolean v0, p1, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    iput-boolean v0, p0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    iget-object p1, p1, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance p1, Lcom/android/quickstep/MultiStateCallback;

    sget-object v1, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    iput p2, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    return-void
.end method

.method private static getFlagForIndex(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    const/4 v0, 0x1

    shl-int v1, v0, p0

    add-int/2addr p0, v0

    sput p0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    return v1
.end method


# virtual methods
.method public clearPreviouslyNonHandledAppearedTargets()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearStateIfNeed(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->clearState(I)V

    return-void
.end method

.method public consumeRecentsAnimationCanceledSnapshot()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    return-object v0

    :cond_f
    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "GestureState:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  gestureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  runningTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  endTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastAppearedTaskTargetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastStartedTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isRecentsAnimationRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TS;>;T:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TS;>;>()",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TS;TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0
.end method

.method public getGestureId()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    return p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getLastAppearedTaskId()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_8

    :cond_7
    const/4 p0, -0x1

    :goto_8
    return p0
.end method

.method public getLastStartedSecondTaskId()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    return p0
.end method

.method public getLastStartedTaskId()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    return p0
.end method

.method public getOverviewIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getPreviouslyAppearedTaskIds()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    return-object p0
.end method

.method public getPreviouslyNonHandledAppearedTaskIds()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    return-object p0
.end method

.method public getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    return-object p0
.end method

.method public getRunningTaskId()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public getStateCallback()Lcom/android/quickstep/MultiStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    return-object p0
.end method

.method public getSwipeUpStartTimeMs()J
    .registers 3

    iget-wide v0, p0, Lcom/android/quickstep/GestureState;->mSwipeUpStartTimeMs:J

    return-wide v0
.end method

.method public hasState(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    return p0
.end method

.method public isHandlingAtomicEvent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/GestureState;->mHandlingAtomicEvent:Z

    return p0
.end method

.method public isRecentsAnimationRunning()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isRunningAnimationToLauncher()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eqz p0, :cond_10

    iget-boolean p0, p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    :cond_1b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    :cond_1e
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_FINISHED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public runOnceAtState(ILjava/lang/Runnable;)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    return-void
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    return-void
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEndTarget: target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAtomic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    sget-object p1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string/jumbo v0, "setEndTarget "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    if-eqz p2, :cond_46

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :cond_46
    return-void
.end method

.method public setHandlingAtomicEvent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/GestureState;->mHandlingAtomicEvent:Z

    return-void
.end method

.method public setState(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public setSwipeUpStartTimeMs(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/quickstep/GestureState;->mSwipeUpStartTimeMs:J

    return-void
.end method

.method public updateLastAppearedTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 4

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    iget v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "updateLastAppearedTaskTarget(), add="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", taskIds="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GestureState"

    const-string v0, "QuickStep"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public updateLastStartedTaskId(I)V
    .registers 6

    const-string/jumbo v0, "updateLastStartedTaskId(), mLastStartedTaskId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    const-string v2, ", lastStartedTaskId="

    const-string v3, ", callers: "

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "GestureState"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    return-void
.end method

.method public updateLastStartedTaskId(II)V
    .registers 7

    const-string/jumbo v0, "updateLastStartedTaskId(), mLastStartedTaskId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    const-string v2, ", lastStartedTaskId1="

    const-string v3, ", lastStartedTaskId2= "

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "GestureState"

    invoke-static {v0, p2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    iput p2, p0, Lcom/android/quickstep/GestureState;->mLastStartedSecondTaskId:I

    return-void
.end method

.method public updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_35

    const-string p0, "QuickStep"

    const-string v0, "GestureState"

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2f

    :cond_15
    const-string/jumbo v1, "updatePreviouslyAppearedTaskIds(), "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_2f
    :goto_2f
    const-string/jumbo p1, "updatePreviouslyAppearedTaskIds(), null or empty."

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public updatePreviouslyNonHandledAppearedTargets(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    return-void
.end method

.method public updatePreviouslyNonHandledAppearedTargets([Landroid/view/RemoteAnimationTarget;)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/quickstep/GestureState;->mPreviouslyNonHandledAppearedTaskIds:Ljava/util/Set;

    iget v2, v2, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method public updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    const-string/jumbo v0, "updateRunningTask(), "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    return-void
.end method

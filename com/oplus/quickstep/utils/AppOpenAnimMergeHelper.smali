.class public final Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;
.super Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppOpenAnimMergeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppOpenAnimMergeHelper.kt\ncom/oplus/quickstep/utils/AppOpenAnimMergeHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,227:1\n1855#2,2:228\n13309#3,2:230\n13309#3,2:232\n*S KotlinDebug\n*F\n+ 1 AppOpenAnimMergeHelper.kt\ncom/oplus/quickstep/utils/AppOpenAnimMergeHelper\n*L\n128#1:228,2\n133#1:230,2\n137#1:232,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper$Companion;

.field private static final DEFAULT_MAX_LAYER_Z_ORDER:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AppOpenAnimMergeHelper"


# instance fields
.field private mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

.field private final mRecentsAnimForOpenMergeStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field private mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->Companion:Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimForOpenMergeStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RemoteAnimationTargets;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->onRemoteAnimationMerged$lambda$0(Lcom/android/quickstep/RemoteAnimationTargets;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->cleanUpRecentsAnim$lambda$4(Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;)V

    return-void
.end method

.method private static final cleanUpRecentsAnim$lambda$4(Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release mAppOpenTargets, animState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOpenAnimMergeHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v0, v1, :cond_33

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    :cond_33
    return-void
.end method

.method private static final onRemoteAnimationMerged$lambda$0(Lcom/android/quickstep/RemoteAnimationTargets;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    :cond_5
    return-void
.end method

.method private final tryStartRecentsForOpenRemoteMerge(Z)V
    .registers 13

    const-string v0, "tryStartRecentsForOpenRemoteMerge: "

    const-string v1, ", size "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    iget-object v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v1, :cond_17

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOpenAnimMergeHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    goto :goto_2c

    :cond_2b
    move-object v0, v2

    :goto_2c
    if-nez v0, :cond_2f

    return-void

    :cond_2f
    array-length v3, v0

    new-array v6, v3, [Landroid/view/RemoteAnimationTarget;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_35
    if-ge v5, v3, :cond_7a

    aget-object v7, v0, v5

    const-string v8, "oldTarget mode = "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v9, 0x1

    if-eqz v8, :cond_6a

    if-eq v8, v9, :cond_5c

    const/4 v10, 0x2

    if-eq v8, v10, :cond_6a

    invoke-virtual {v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    aput-object v7, v6, v5

    goto :goto_77

    :cond_5c
    if-nez p1, :cond_5f

    move v8, v4

    :cond_5f
    invoke-virtual {v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->changeMode(Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    aput-object v7, v6, v5

    goto :goto_77

    :cond_6a
    if-nez p1, :cond_6d

    move v8, v9

    :cond_6d
    invoke-virtual {v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->changeMode(Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    aput-object v7, v6, v5

    :goto_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_7a
    iget-object v4, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v4, :cond_97

    iget-object v5, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz p0, :cond_86

    iget-object v2, p0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    :cond_86
    invoke-static {v2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v4 .. v9}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_97
    return-void
.end method

.method public static synthetic tryStartRecentsForOpenRemoteMerge$default(Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->tryStartRecentsForOpenRemoteMerge(Z)V

    return-void
.end method


# virtual methods
.method public checkIfRecentsAnimStarted(Lcom/android/quickstep/RecentsAnimationCallbacks;)Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimForOpenMergeStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public cleanUpRecentsAnim()V
    .registers 3

    const-string v0, "AppOpenAnimMergeHelper"

    const-string v1, "cleanUpRecentsAnim"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimForOpenMergeStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz v0, :cond_36

    new-instance v0, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/e;->run()V

    goto :goto_36

    :cond_2d
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_36
    :goto_36
    return-void
.end method

.method public gestureTriggerRecentsAnim(Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 4

    const-string v0, "recentsAnimationCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AppOpenAnimMergeHelper"

    const-string v1, "gestureTriggerRecentsAnim"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimForOpenMergeStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-void
.end method

.method public isRecentsMergeOpenRemote()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onRecentsAnimStart(Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "onRecentsAnimStart, equal = "

    const-string v1, "AppOpenAnimMergeHelper"

    invoke-static {v0, p1, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimForOpenMergeStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_19

    :cond_16
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->cleanUpRecentsAnim()V

    :goto_19
    return-void
.end method

.method public onRemoteAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z
    .registers 13

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteAnimationMerged, info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recentsController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecentsCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppOpenTargets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOpenAnimMergeHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_13d

    iget-object v2, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsCallback:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-nez v2, :cond_45

    goto/16 :goto_13d

    :cond_45
    iget-object v2, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v3, 0x1

    if-eqz v2, :cond_5b

    iget-object v2, v2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v2, :cond_5b

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length v2, v2

    if-ne v4, v2, :cond_5b

    move v2, v3

    goto :goto_5c

    :cond_5b
    move v2, v0

    :goto_5c
    if-nez v2, :cond_87

    iget-object v2, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    const-string v4, "Recreate targets as count not match"

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v4

    new-array v5, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {v2, v4, v5, v5, v3}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    iput-object v2, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    move v2, v3

    goto :goto_88

    :cond_87
    move v2, v0

    :goto_88
    iget-object v4, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz v4, :cond_9a

    iget-object v4, v4, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v4, :cond_9a

    array-length v4, v4

    if-nez v4, :cond_95

    move v4, v3

    goto :goto_96

    :cond_95
    move v4, v0

    :goto_96
    if-ne v4, v3, :cond_9a

    move v4, v3

    goto :goto_9b

    :cond_9a
    move v4, v0

    :goto_9b
    if-eqz v4, :cond_a3

    const-string p0, "onRemoteAnimationMerged: mRecentsCallback is null or mAppOpenTargets is empty"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a3
    new-instance v1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v1, p4}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    iput-object v1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/TransitionInfo$Change;

    invoke-static {p4, p1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p4

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p4

    if-nez v2, :cond_101

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    const-string p3, "info.changes"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ec

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {p2, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_cf

    :cond_ec
    iget-object p1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz p1, :cond_136

    iget-object p1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz p1, :cond_136

    array-length p3, p1

    :goto_f5
    if-ge v0, p3, :cond_136

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, p4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    :cond_101
    iget-object p1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz p1, :cond_136

    iget-object p1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz p1, :cond_136

    array-length v1, p1

    :goto_10a
    if-ge v0, v1, :cond_136

    aget-object v4, p1, v0

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_128

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_128

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    if-ne v3, v5, :cond_128

    if-eqz p3, :cond_128

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    const-string v6, "it.leash"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v5, p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->applyToTaskLeashForInterrupt(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_128
    const/4 v5, 0x2

    iget v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    if-eq v5, v6, :cond_133

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    const/4 v5, 0x6

    invoke-virtual {p2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_133
    add-int/lit8 v0, v0, 0x1

    goto :goto_10a

    :cond_136
    invoke-virtual {p2, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->tryStartRecentsForOpenRemoteMerge(Z)V

    return v3

    :cond_13d
    :goto_13d
    return v0
.end method

.method public releaseOpenRemoteTargets()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz v0, :cond_15

    const-string v0, "AppOpenAnimMergeHelper"

    const-string v1, "releaseOpenRemoteTargets"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    :cond_15
    return-void
.end method

.method public setAppOpenRemoteTargets(Lcom/android/quickstep/RemoteAnimationTargets;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppOpenRemoteTargets, targets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOpenAnimMergeHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;->mAppOpenTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    return-void
.end method

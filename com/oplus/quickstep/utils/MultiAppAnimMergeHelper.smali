.class public final Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;
.super Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultiAppAnimMergeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiAppAnimMergeHelper.kt\ncom/oplus/quickstep/utils/MultiAppAnimMergeHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,107:1\n37#2,2:108\n*S KotlinDebug\n*F\n+ 1 MultiAppAnimMergeHelper.kt\ncom/oplus/quickstep/utils/MultiAppAnimMergeHelper\n*L\n58#1:108,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "MultiAppAnimMergeHelper"


# instance fields
.field private mOnTaskAppearedTarget:Landroid/view/RemoteAnimationTarget;

.field private mPreparingMultiAppOpenAnimCount:I

.field private mRecentsAnimFinished:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->Companion:Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mRecentsAnimFinished:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized multiAppOpenAnimStart()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I

    if-lez v0, :cond_23

    const-string v0, "MultiAppAnimMergeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiAppOpenAnimStart, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepareMultiAppOpenAnim()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "MultiAppAnimMergeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareMultiAppOpenAnim, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecentsAnimFinished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mRecentsAnimFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mRecentsAnimFinished:Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_32

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_2a
    :try_start_2a
    iget v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_32

    monitor-exit p0

    return v1

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .registers 3

    const-string v0, "MultiAppAnimMergeHelper"

    const-string v1, "Reset."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mRecentsAnimFinished:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->setOnTaskAppearedTarget(Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public setOnTaskAppearedTarget(Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnTaskAppearedTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiAppAnimMergeHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mOnTaskAppearedTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method

.method public declared-synchronized setRecentsAnimEndState(ZLjava/lang/String;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mRecentsAnimFinished:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3f

    const/4 v1, 0x1

    if-ne v0, p1, :cond_d

    monitor-exit p0

    return v1

    :cond_d
    if-eqz p1, :cond_1d

    :try_start_f
    iget v0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mPreparingMultiAppOpenAnimCount:I

    if-lez v0, :cond_1d

    const-string p1, "MultiAppAnimMergeHelper"

    const-string p2, "setHasFinishRecent fail: mPreparingMultiAppOpenAnimCount"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_3f

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1d
    :try_start_1d
    const-string v0, "MultiAppAnimMergeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHasFinishRecent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mRecentsAnimFinished:Z
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return v1

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateRecentTargetsIfNeed(Lcom/android/quickstep/RecentsAnimationTargets;)Lcom/android/quickstep/RecentsAnimationTargets;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;->mOnTaskAppearedTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p0, :cond_66

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->changeMode(Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    const-string v2, "changeMode(it, RemoteAni…argetCompat.MODE_CLOSING)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    const-string v2, "apps"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_28
    if-ge v4, v2, :cond_46

    aget-object v5, p0, v4

    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v6

    if-ne v6, v1, :cond_38

    move v6, v1

    goto :goto_39

    :cond_38
    move v6, v3

    :goto_39
    if-nez v6, :cond_43

    const-string v6, "app"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_46
    new-array p0, v3, [Landroid/view/RemoteAnimationTarget;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    new-instance p0, Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    iget-object v4, p1, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/RecentsAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object p0

    :cond_66
    return-object p1
.end method

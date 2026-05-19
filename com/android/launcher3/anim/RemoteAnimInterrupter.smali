.class public final Lcom/android/launcher3/anim/RemoteAnimInterrupter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;,
        Lcom/android/launcher3/anim/RemoteAnimInterrupter$WhenMappings;,
        Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteAnimInterrupter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteAnimInterrupter.kt\ncom/android/launcher3/anim/RemoteAnimInterrupter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,168:1\n13309#2,2:169\n13309#2,2:171\n*S KotlinDebug\n*F\n+ 1 RemoteAnimInterrupter.kt\ncom/android/launcher3/anim/RemoteAnimInterrupter\n*L\n66#1:169,2\n135#1:171,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

.field private static final PROGRESS_DEFAULT:F = -1.0f

.field private static final PROGRESS_END:F = 1.0f

.field private static final PROGRESS_START:F = 0.0f

.field private static final RESET_VIEWS:I = 0x2711

.field private static final RESET_VIEWS_DELAY:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "RemoteAnimInterrupter"


# instance fields
.field private mAnimatingTargetTaskId:I

.field private volatile mClosingAnimProgress:F

.field private mCurrentRectForOpening:Landroid/graphics/RectF;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOpeningWindowAnim:Z

.field private volatile mOpeningAnimProgress:F

.field private mResetViewRunner:Ljava/lang/Runnable;

.field private mSwipeSceneAnimaProgress:F

.field private mViewInfoId:I

.field private mViewPosition:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mClosingAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mSwipeSceneAnimaProgress:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mCurrentRectForOpening:Landroid/graphics/RectF;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewInfoId:I

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mAnimatingTargetTaskId:I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter$mHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter$mHandler$1;-><init>(Lcom/android/launcher3/anim/RemoteAnimInterrupter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMResetViewRunner$p(Lcom/android/launcher3/anim/RemoteAnimInterrupter;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mResetViewRunner:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$setMResetViewRunner$p(Lcom/android/launcher3/anim/RemoteAnimInterrupter;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mResetViewRunner:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final cancelResetView()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mResetViewRunner:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12
    return-void
.end method

.method public final getCurrentOpeningAnimRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mCurrentRectForOpening:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getOpeningWindowProgress()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    return p0
.end method

.method public final getWindowAnimStartProgress([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Z)F
    .registers 10

    const-string v0, "appTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v0, p3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    array-length v3, p1

    :goto_a
    if-ge v2, v3, :cond_17

    aget-object v4, p1, v2

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, v0, :cond_14

    iget v1, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    const-string p1, "RemoteAnimInterrupter"

    const/4 v0, 0x0

    if-eqz p2, :cond_a1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v2, :cond_26

    goto/16 :goto_a1

    :cond_26
    iput-boolean p3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mIsOpeningWindowAnim:Z

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewPosition:Landroid/graphics/Point;

    if-nez v2, :cond_54

    const-string p3, "Null position info"

    invoke-static {p1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mAnimatingTargetTaskId:I

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewInfoId:I

    new-instance p1, Landroid/graphics/Point;

    iget p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {p1, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->reset()V

    return v0

    :cond_54
    iget v2, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mAnimatingTargetTaskId:I

    if-ne v1, v2, :cond_8a

    iget v2, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewInfoId:I

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v3

    if-ne v2, v3, :cond_8a

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewPosition:Landroid/graphics/Point;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_8a

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewPosition:Landroid/graphics/Point;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v2, v3, :cond_8a

    const-string p2, "animation interrupting"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    if-eqz p3, :cond_82

    iget p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mClosingAnimProgress:F

    goto :goto_88

    :cond_82
    iget p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    invoke-static {p0, v0}, Ly4/h;->a(FF)F

    move-result p0

    :goto_88
    sub-float/2addr p1, p0

    return p1

    :cond_8a
    iput v1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mAnimatingTargetTaskId:I

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewInfoId:I

    new-instance p1, Landroid/graphics/Point;

    iget p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {p1, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mViewPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->reset()V

    return v0

    :cond_a1
    :goto_a1
    const-string p2, "Icon info not match"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mIsOpeningWindowAnim:Z

    iput v1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mAnimatingTargetTaskId:I

    invoke-virtual {p0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->reset()V

    return v0
.end method

.method public final varargs isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z
    .registers 11

    const-string/jumbo v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_59

    aget-object v4, p1, v2

    sget-object v5, Lcom/android/launcher3/anim/RemoteAnimInterrupter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_44

    const/4 v8, 0x2

    if-eq v4, v8, :cond_35

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2f

    if-nez v3, :cond_55

    iget v3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mSwipeSceneAnimaProgress:F

    cmpl-float v4, v3, v6

    if-lez v4, :cond_53

    cmpg-float v3, v3, v5

    if-gez v3, :cond_53

    goto :goto_55

    :cond_2f
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_35
    if-nez v3, :cond_55

    iget v3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mClosingAnimProgress:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_53

    iget v3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mClosingAnimProgress:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_53

    goto :goto_55

    :cond_44
    if-nez v3, :cond_55

    iget v3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_53

    iget v3, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_53

    goto :goto_55

    :cond_53
    move v3, v1

    goto :goto_56

    :cond_55
    :goto_55
    move v3, v7

    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_59
    const-string p1, "isInterruptAnimation: isInterrupt="

    const-string v0, ", mOpeningAnimProgress="

    invoke-static {p1, v3, v0}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mClosingAnimProgress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mClosingAnimProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mSwipeSceneAnimaProgress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mSwipeSceneAnimaProgress:F

    const-string v0, "RemoteAnimInterrupter"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return v3
.end method

.method public final reset()V
    .registers 3

    const-string v0, "RemoteAnimInterrupter"

    const-string v1, "Reset params"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mClosingAnimProgress:F

    return-void
.end method

.method public final resetRecentsAnimProgress()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mSwipeSceneAnimaProgress:F

    return-void
.end method

.method public final setDelayResetView(Ljava/lang/Runnable;)V
    .registers 4

    const-string/jumbo v0, "runner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mResetViewRunner:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x2711

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setSwipeSceneAnimaProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mSwipeSceneAnimaProgress:F

    return-void
.end method

.method public final updateClosingWindowAnimProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mClosingAnimProgress:F

    return-void
.end method

.method public final updateCurrentRectF(Landroid/graphics/RectF;)V
    .registers 3

    const-string/jumbo v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mCurrentRectForOpening:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final updateOpeningWindowAnimProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->mOpeningAnimProgress:F

    return-void
.end method

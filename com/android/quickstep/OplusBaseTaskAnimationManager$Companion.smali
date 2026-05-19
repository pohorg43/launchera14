.class public final Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/OplusBaseTaskAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getMLastStartTime$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getMRecentsAnimationCount$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final cleanRecentsAnimaitonCount()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "OplusBaseTaskAnimationManager"

    const-string v0, "cleanRecentsAnimaitonCount()"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$setMRecentsAnimationCount$cp(I)V

    return-void
.end method

.method public final increaseRecentsAnimaiton()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "OplusBaseTaskAnimationManager"

    const-string v0, "increaseRecentsAnimaiton()"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$getMRecentsAnimationCount$cp()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$setMRecentsAnimationCount$cp(I)V

    return-void
.end method

.method public final isRecentsAnimPendingRunning()Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$getMLastStartTime$cp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p0, v0, v2

    if-gez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public final maybeForceCancelRecentsAnimation()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$getMRecentsAnimationCount$cp()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final reduceRecentsAnimaiton()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "OplusBaseTaskAnimationManager"

    const-string/jumbo v0, "reduceRecentsAnimaiton()"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$getMRecentsAnimationCount$cp()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$setMRecentsAnimationCount$cp(I)V

    return-void
.end method

.method public final refreshLastStartTime()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "OplusBaseTaskAnimationManager"

    const-string/jumbo v0, "refreshLastStartTime()"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$setMLastStartTime$cp(J)V

    return-void
.end method

.method public final resetRecentsAnimStartTime()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "OplusBaseTaskAnimationManager"

    const-string/jumbo v0, "resetRecentsAnimStartTime()"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->access$setMLastStartTime$cp(J)V

    return-void
.end method

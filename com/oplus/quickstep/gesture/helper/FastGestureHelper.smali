.class public final Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FAST_GESTURE_TIME_OUT:J = 0x7d0L

.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;

.field private static final JUST_START_APP_THRESHOLD:I = 0x64

.field private static final SECONDS:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "FastGestureHelper"

.field private static lastNormalStartAppsTimeMillis:J

.field private static lastStartAppsTimeMillis:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastStartAppsTimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastNormalStartAppsTimeMillis:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isFastGesture()Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->supportFastGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastStartAppsTimeMillis:J

    sub-long v4, v2, v4

    const-string v0, "isFastGesture: delta = "

    const-string v6, ", currentMillis = "

    invoke-static {v0, v4, v5, v6}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastStartAppsTimeMillis = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastStartAppsTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "FastGestureHelper"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_37

    const/4 v1, 0x1

    :cond_37
    return v1
.end method

.method public static final isJustStartApp()Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastStartAppsTimeMillis:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastNormalStartAppsTimeMillis:J

    sub-long v4, v0, v4

    const-string v6, "isJustStartApp: delta1 = "

    const-string v7, ", delta2 = "

    invoke-static {v6, v2, v3, v7}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", currentMillis = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v6, "FastGestureHelper"

    invoke-static {v1, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    cmp-long v2, v2, v0

    if-lez v2, :cond_37

    cmp-long v0, v4, v0

    if-gtz v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    :goto_38
    return v0
.end method

.method public static final supportFastGesture()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    return v0
.end method

.method public static final updateNormalStartAppsTimeMillis()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastNormalStartAppsTimeMillis:J

    const-string v0, "updateNormalStartAppsTimeMillis: TimeMillis = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastNormalStartAppsTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "FastGestureHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final updateStartAppsTimeMillis()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->supportFastGesture()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastStartAppsTimeMillis:J

    const-string v0, "updateStartAppsTimeMillis: TimeMillis = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->lastStartAppsTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "FastGestureHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

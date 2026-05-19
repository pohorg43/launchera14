.class public final Lcom/android/launcher3/model/RecentTaskTime;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EVENT_RECENT_TASK_TIME_DAILY:Ljava/lang/String; = "recent_task_time_daily_event"

.field public static final INSTANCE:Lcom/android/launcher3/model/RecentTaskTime;

.field public static final KEY_RECENT_TASK_TIME_DAILY:Ljava/lang/String; = "recent_task_time_daily_total"

.field public static final RECENT_TASK_EVENT_TIME:J = 0x3e8L

.field private static accumulatedTime:J

.field private static enterRecentTaskTime:J

.field private static startTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/RecentTaskTime;

    invoke-direct {v0}, Lcom/android/launcher3/model/RecentTaskTime;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/RecentTaskTime;->INSTANCE:Lcom/android/launcher3/model/RecentTaskTime;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccumulatedTime()J
    .registers 3

    sget-wide v0, Lcom/android/launcher3/model/RecentTaskTime;->accumulatedTime:J

    return-wide v0
.end method

.method public final getEnterRecentTaskTime()J
    .registers 3

    sget-wide v0, Lcom/android/launcher3/model/RecentTaskTime;->enterRecentTaskTime:J

    return-wide v0
.end method

.method public final getStartTime()J
    .registers 3

    sget-wide v0, Lcom/android/launcher3/model/RecentTaskTime;->startTime:J

    return-wide v0
.end method

.method public final reset()V
    .registers 3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher3/model/RecentTaskTime;->startTime:J

    sput-wide v0, Lcom/android/launcher3/model/RecentTaskTime;->accumulatedTime:J

    sput-wide v0, Lcom/android/launcher3/model/RecentTaskTime;->enterRecentTaskTime:J

    return-void
.end method

.method public final setAccumulatedTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/launcher3/model/RecentTaskTime;->accumulatedTime:J

    return-void
.end method

.method public final setEnterRecentTaskTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/launcher3/model/RecentTaskTime;->enterRecentTaskTime:J

    return-void
.end method

.method public final setStartTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/launcher3/model/RecentTaskTime;->startTime:J

    return-void
.end method

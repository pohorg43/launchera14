.class public final Lcom/android/launcher3/model/LoaderLogHelper;
.super Lcom/android/common/debug/FileLogHelper;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/model/LoaderLogHelper;

.field private static final LOG_TIMEOUT_FOR_LAYOUT_FINISH_BIND:J = 0xea60L

.field private static final LOG_TIMEOUT_FOR_LAYOUT_LOAD:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LoaderLogHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/LoaderLogHelper;

    invoke-direct {v0}, Lcom/android/launcher3/model/LoaderLogHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/LoaderLogHelper;->INSTANCE:Lcom/android/launcher3/model/LoaderLogHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    new-instance v7, Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    const/4 v1, 0x3

    const-string v2, "Loader"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v7}, Lcom/android/common/debug/FileLogHelper;-><init>(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V

    return-void
.end method

.method public static final onLayoutLoadReady()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/LoaderLogHelper;->INSTANCE:Lcom/android/launcher3/model/LoaderLogHelper;

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper;->isBRFileLog()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper;->isOTAFileLog()Z

    move-result v1

    if-nez v1, :cond_1c

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->startPersistentLog(J)V

    const-string v0, "LoaderLogHelper"

    const-string/jumbo v1, "onLayoutLoadReady"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static final onWorkspaceFinishBind()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "LoaderLogHelper"

    const-string/jumbo v1, "onWorkspaceFinishBind"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/model/LoaderLogHelper;->INSTANCE:Lcom/android/launcher3/model/LoaderLogHelper;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    return-void
.end method

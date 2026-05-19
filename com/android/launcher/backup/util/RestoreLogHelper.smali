.class public final Lcom/android/launcher/backup/util/RestoreLogHelper;
.super Lcom/android/common/debug/FileLogHelper;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/util/RestoreLogHelper;

.field private static final LOG_TIMEOUT_FOR_APP_RESTORE:J = 0x112a880L

.field private static final LOG_TIMEOUT_FOR_APP_RESTORE_END:J = 0x493e0L

.field private static final LOG_TIMEOUT_FOR_LAYOUT_FINISH_BIND:J = 0xea60L

.field private static final LOG_TIMEOUT_FOR_LAYOUT_RESTORE:J = 0x36ee80L

.field private static final LOG_TIMEOUT_FOR_LAYOUT_RESTORE_END:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_RestoreLogHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/util/RestoreLogHelper;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/RestoreLogHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/RestoreLogHelper;->INSTANCE:Lcom/android/launcher/backup/util/RestoreLogHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    new-instance v7, Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    const/4 v1, 0x1

    const-string v2, "BackupRestore"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v7}, Lcom/android/common/debug/FileLogHelper;-><init>(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V

    return-void
.end method

.method public static final filterRestoreLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->filterRestoreLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final onAppRestoreEnd()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "BR-Launcher_RestoreLogHelper"

    const-string/jumbo v1, "onAppRestoreEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/util/RestoreLogHelper;->INSTANCE:Lcom/android/launcher/backup/util/RestoreLogHelper;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    return-void
.end method

.method public static final onAppRestoreStart()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/backup/util/RestoreLogHelper;->INSTANCE:Lcom/android/launcher/backup/util/RestoreLogHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    const-wide/32 v1, 0x112a880

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->startPersistentLog(J)V

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->startAppRestore()V

    const-string v0, "BR-Launcher_RestoreLogHelper"

    const-string/jumbo v1, "onAppRestoreStart"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final onLayoutRestoreEnd()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "BR-Launcher_RestoreLogHelper"

    const-string/jumbo v1, "onLayoutRestoreEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/util/RestoreLogHelper;->INSTANCE:Lcom/android/launcher/backup/util/RestoreLogHelper;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    return-void
.end method

.method public static final onLayoutRestoreStart()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/backup/util/RestoreLogHelper;->INSTANCE:Lcom/android/launcher/backup/util/RestoreLogHelper;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->startPersistentLog(J)V

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->startLayoutRestore()V

    const-string v0, "BR-Launcher_RestoreLogHelper"

    const-string/jumbo v1, "onLayoutRestoreStart"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final onWorkspaceFinishBind()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "BR-Launcher_RestoreLogHelper"

    const-string/jumbo v1, "onWorkspaceFinishBind"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/util/RestoreLogHelper;->INSTANCE:Lcom/android/launcher/backup/util/RestoreLogHelper;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    return-void
.end method

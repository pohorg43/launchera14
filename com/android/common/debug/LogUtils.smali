.class public final Lcom/android/common/debug/LogUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/debug/LogUtils$LogStateChangedListener;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLogUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogUtils.kt\ncom/android/common/debug/LogUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,721:1\n13309#2,2:722\n13309#2,2:724\n1855#3,2:726\n*S KotlinDebug\n*F\n+ 1 LogUtils.kt\ncom/android/common/debug/LogUtils\n*L\n304#1:722,2\n319#1:724,2\n592#1:726,2\n*E\n"
    }
.end annotation


# static fields
.field public static final ALL_APPS:Ljava/lang/String; = "AllApps"

.field public static final BACKUP:Ljava/lang/String; = "Backup"

.field public static final BADGE:Ljava/lang/String; = "Badge"

.field public static final CARD:Ljava/lang/String; = "Card"

.field public static final COMMON:Ljava/lang/String; = "Common"

.field public static final DEBUG_CALLER_DEPTH_10:I = 0xa

.field public static final DEBUG_CALLER_DEPTH_5:I = 0x5

.field public static final DEBUG_CALLER_DEPTH_7:I = 0x7

.field public static final DEBUG_LAYOUT:Z = false

.field public static final DRAG:Ljava/lang/String; = "Drag"

.field private static final DUMP_CLOSE_LOG:Ljava/lang/String; = "0"

.field private static final DUMP_INTERNAL_LOG:Ljava/lang/String; = "1"

.field private static final DUMP_TEST_NOT_RESTORE_MODE_DATA:Ljava/lang/String; = "400"

.field private static final DUMP_TEST_REMOVE_CARD_VIEW:Ljava/lang/String; = "107"

.field private static final DUMP_TEST_REMOVE_MULTI_PACKAGE:Ljava/lang/String; = "101"

.field private static final DUMP_TEST_REMOVE_PACKAGE:Ljava/lang/String; = "100"

.field private static final DUMP_TEST_REMOVE_PACKAGE_APP:Ljava/lang/String; = "104"

.field private static final DUMP_TEST_REMOVE_PACKAGE_DB:Ljava/lang/String; = "106"

.field private static final DUMP_TEST_REMOVE_PACKAGE_EXCEPT_DB:Ljava/lang/String; = "102"

.field private static final DUMP_TEST_REMOVE_PACKAGE_ITEM:Ljava/lang/String; = "105"

.field private static final DUMP_TEST_REMOVE_PACKAGE_VIEW:Ljava/lang/String; = "103"

.field private static final DUMP_TEST_SAVE_STATISTICS_TO_FILE:Ljava/lang/String; = "300"

.field private static final DUMP_TEST_SIMULATE_LOSE_WHEN_GUARD:Ljava/lang/String; = "200"

.field private static final DUMP_TRACE_LOG:Ljava/lang/String; = "2"

.field private static final FEATURE:Ljava/lang/String; = "Feature"

.field public static final FOLDER:Ljava/lang/String; = "Folder"

.field public static final GESTURE_GUIDE:Ljava/lang/String; = "GesturesGuide"

.field public static final GUIDE:Ljava/lang/String; = "Guide"

.field public static final HOTSEAT:Ljava/lang/String; = "Hotseat"

.field public static final HOTSEAT_EXPAND:Ljava/lang/String; = "Hotseat_expand"

.field public static final ICON:Ljava/lang/String; = "Icon"

.field public static final INSTALL_APP:Ljava/lang/String; = "InstallApp"

.field public static final INSTANCE:Lcom/android/common/debug/LogUtils;

.field public static final LAYOUT:Ljava/lang/String; = "Layout"

.field public static final LOADER:Ljava/lang/String; = "Loader"

.field public static final LOCK:Ljava/lang/String; = "Lock"

.field private static final LOG:Ljava/lang/String; = "Log"

.field private static final LOGGING_STATUS_KEY:Ljava/lang/String; = "log_switch_type"

.field private static final LOG_DUMP_CODE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher"

.field private static final MESSAGE_DUMPING_LAUNCHER:Ljava/lang/String; = "Dumping launcher with dumpsys "

.field private static final MODULE_SEPARATOR:Ljava/lang/String; = "#"

.field private static final PERSIST_LOG_DIR:Ljava/lang/String; = "/data/persist_log/launcher%d"

.field public static final QUICKSTEP:Ljava/lang/String; = "QuickStep"

.field public static final RAPID_REACTION:Ljava/lang/String; = "RapidReaction"

.field public static final REGION_SAMPLING:Ljava/lang/String; = "RegionSamplingUtils"

.field private static final TAG:Ljava/lang/String; = "LogUtils"

.field private static final TAG_SEPARATOR:Ljava/lang/String; = "."

.field public static final TASK_BAR:Ljava/lang/String; = "Taskbar"

.field public static final TASK_VIEW:Ljava/lang/String; = "TaskView"

.field private static final TEST:Ljava/lang/String; = "Test"

.field public static final TOGGLEBAR:Ljava/lang/String; = "Togglebar"

.field private static final TRACE_COUNT_ONE_LINE:I = 0x4

.field private static final TRACE_DUMP_CODE:I = 0x1

.field public static final UNINSTALL_APP:Ljava/lang/String; = "UnInstallApp"

.field public static final US_CARD_MODULE:Ljava/lang/String; = "panta-sugg-"

.field public static final WALLPAPERS:Ljava/lang/String; = "Wallpapers"

.field public static final WIDGET:Ljava/lang/String; = "Widget"

.field private static debuggable:Z

.field public static drawBackground:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static dumpHandler:Landroid/os/Handler;

.field private static internal:Z

.field private static isAlwayson:Z

.field private static isPanicOpen:Z

.field private static isReleaseVersion:Z

.field private static logObserver:Lcom/android/common/debug/LogUtils$logObserver$1;

.field private static final mLogStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/common/debug/LogUtils$LogStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static normal:Z

.field private static final sTraceInfoHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUserId:I

.field private static trace:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/common/debug/LogUtils;

    invoke-direct {v0}, Lcom/android/common/debug/LogUtils;-><init>()V

    sput-object v0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/common/debug/LogUtils;->sTraceInfoHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/debug/LogUtils;->mLogStateChangedListeners:Ljava/util/List;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/common/debug/LogUtils;->sUserId:I

    sget-object v0, Lcom/android/common/util/LauncherUtilsThread;->INSTANCE:Lcom/android/common/util/LauncherUtilsThread;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherUtilsThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/common/debug/LogUtils$logObserver$1;

    invoke-direct {v2, v1}, Lcom/android/common/debug/LogUtils$logObserver$1;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/android/common/debug/LogUtils;->logObserver:Lcom/android/common/debug/LogUtils$logObserver$1;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherUtilsThread;->getThreadLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/common/debug/LogUtils$1;

    invoke-direct {v1, v0}, Lcom/android/common/debug/LogUtils$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/common/debug/LogUtils;->dumpHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$updateDebugState([Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->updateDebugState([Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateState()V
    .registers 0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->updateState()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->isTemporaryLogging()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_12
    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_2f

    if-eqz p3, :cond_24

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :cond_24
    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    xor-int/2addr v0, v2

    if-eqz v0, :cond_3c

    array-length v0, p1

    const/4 v3, 0x0

    if-le v0, v2, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    :goto_21
    if-ge v1, v2, :cond_2b

    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_33
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static final varargs dEx(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    xor-int/2addr v0, v2

    if-eqz v0, :cond_3b

    array-length v0, p1

    const/4 v3, 0x0

    if-le v0, v2, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    :goto_20
    if-ge v1, v2, :cond_2a

    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_32
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static final debugFormat(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_6

    const-string/jumbo p0, "null"

    goto :goto_2a

    :cond_6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2a
    return-object p0
.end method

.method public static final dumpTrace()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->trace:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/common/debug/LogUtils;->sTraceInfoHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_60

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_21
    move v3, v2

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type kotlin.collections.Map.Entry<*, *>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    if-lt v3, v4, :cond_22

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->isTemporaryLogging()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p3, :cond_1a

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :cond_1a
    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void

    :cond_26
    if-eqz p3, :cond_34

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :cond_34
    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_9

    const/16 p0, 0x23

    invoke-static {p1, p0, p2}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :cond_9
    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    :goto_d
    return-object p2
.end method

.method public static final getPersistentLog()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getTemporaryDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getPrintInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "+ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v1, "context.resources.configuration"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    const-string v3, " w"

    invoke-static {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string v3, " h"

    invoke-static {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    const-string v3, " "

    invoke-static {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    const-string v2, "dpi"

    const-string v3, " orien="

    invoke-static {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "[u"

    const/16 v1, 0x5d

    if-eqz p0, :cond_13

    const-string p1, "Launcher."

    invoke-static {p1, p0, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/common/debug/LogUtils;->sUserId:I

    invoke-static {p0, p1, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_13
    if-eqz p1, :cond_20

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/common/debug/LogUtils;->sUserId:I

    invoke-static {p0, p1, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_20
    const-string p0, "Launcher[u"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/common/debug/LogUtils;->sUserId:I

    invoke-static {p0, p1, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    :goto_2c
    return-object p0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->isTemporaryLogging()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/debug/LogUtils;->isReleaseVersion:Z

    const-string/jumbo v0, "persist.sys.alwayson.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/debug/LogUtils;->isAlwayson:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "log_switch_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/android/common/debug/LogUtils;->logObserver:Lcom/android/common/debug/LogUtils$logObserver$1;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->updateState()V

    return-void
.end method

.method public static final internal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->internal:Z

    if-eqz v0, :cond_15

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method public static final isAlwayson()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->isAlwayson:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static final isAnyLogOpen()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    return v0
.end method

.method public static final isDebuggable()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->debuggable:Z

    return v0
.end method

.method private static final isDumpDataCorrect([Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    return v0

    :cond_9
    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_3a

    :cond_1b
    aget-object v2, p0, v0

    const-string v3, "Log"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    aget-object v2, p0, v0

    const-string v3, "Feature"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    aget-object p0, p0, v0

    const-string v2, "Test"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    :cond_39
    move v0, v1

    :cond_3a
    :goto_3a
    return v0
.end method

.method public static final isInternalLogOpen()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->internal:Z

    return v0
.end method

.method public static final isKeyAlphaValue(F)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-nez v0, :cond_19

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_14

    move p0, v1

    goto :goto_15

    :cond_14
    move p0, v2

    :goto_15
    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :cond_19
    :goto_19
    return v1
.end method

.method public static final isLogOpen()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->isTemporaryLogging()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static final isLoggable()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static final isPanicOpen()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->isPanicOpen:Z

    return v0
.end method

.method public static final onLauncherDump([Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/debug/LogUtils;->dumpHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p0, Lcom/android/common/debug/LogUtils;->dumpHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static final registerLogStateChangedListener(Lcom/android/common/debug/LogUtils$LogStateChangedListener;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/debug/LogUtils;->mLogStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public static final setFileLogDir(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/data/persist_log/launcher%d"

    const-string v4, "format(format, *args)"

    invoke-static {v2, v1, v3, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_34

    :cond_30
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :goto_34
    invoke-static {v0}, Lcom/android/common/debug/OplusFileLog;->setDir(Ljava/io/File;)V

    return-void
.end method

.method public static final shouldPrintAlphaLog(FF)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    cmpg-float v0, p1, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-eqz v0, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_12

    move v2, v1

    :cond_12
    if-eqz v2, :cond_15

    return v1

    :cond_15
    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->isKeyAlphaValue(F)Z

    move-result p0

    return p0
.end method

.method public static final startPersistentLog(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fileLogInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/debug/OplusFileLog;->setTemporaryDir(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V

    return-void
.end method

.method public static final stopPersistentLog()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/debug/OplusFileLog;->setTemporaryDir(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V

    return-void
.end method

.method public static final trace(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    :cond_5
    sget-object v0, Lcom/android/common/debug/LogUtils;->sTraceInfoHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_a
    return-void
.end method

.method public static final unregisterLogStateChangedListener(Lcom/android/common/debug/LogUtils$LogStateChangedListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/debug/LogUtils;->mLogStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final updateDebugState([Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->isDumpDataCorrect([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    const/4 v0, 0x1

    aget-object v1, p0, v0

    const-string v2, "2"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Launcher.LogUtils"

    if-eqz v1, :cond_26

    sput-boolean v0, Lcom/android/common/debug/LogUtils;->internal:Z

    sput-boolean v0, Lcom/android/common/debug/LogUtils;->trace:Z

    invoke-static {v0}, Lcom/oplus/util/PackageCacheUtils;->setInternalLogOpen(Z)V

    const-string p0, "Dumping launcher with dumpsys  launcher trace log"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/common/debug/LogUtils;->dumpHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13a

    :cond_26
    aget-object v1, p0, v0

    const-string v3, "1"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sput-boolean v0, Lcom/android/common/debug/LogUtils;->internal:Z

    invoke-static {v0}, Lcom/oplus/util/PackageCacheUtils;->setInternalLogOpen(Z)V

    const-string p0, "Dumping launcher with dumpsys  launcher internal log"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13a

    :cond_3c
    aget-object v1, p0, v0

    const-string v3, "0"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    const-string p0, "Dumping launcher with dumpsys  launcher close log"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/common/debug/LogUtils;->internal:Z

    sput-boolean v3, Lcom/android/common/debug/LogUtils;->trace:Z

    invoke-static {v3}, Lcom/oplus/util/PackageCacheUtils;->setInternalLogOpen(Z)V

    goto/16 :goto_13a

    :cond_55
    aget-object v1, p0, v0

    const-string v2, "100"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "myUserHandle()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackage([Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_13a

    :cond_72
    aget-object v1, p0, v0

    const-string v2, "101"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    const-string v1, "MULTI_USER_HANDLE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackage([Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_13a

    :cond_8c
    aget-object v1, p0, v0

    const-string v2, "102"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackageExceptDb([Ljava/lang/String;)V

    goto/16 :goto_13a

    :cond_9f
    aget-object v1, p0, v0

    const-string v2, "103"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackageView([Ljava/lang/String;)V

    goto/16 :goto_13a

    :cond_b2
    aget-object v1, p0, v0

    const-string v2, "107"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveCardView([Ljava/lang/String;)V

    goto/16 :goto_13a

    :cond_c5
    aget-object v1, p0, v0

    const-string v2, "104"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackageApp([Ljava/lang/String;)V

    goto :goto_13a

    :cond_d7
    aget-object v1, p0, v0

    const-string v2, "105"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackageItem([Ljava/lang/String;)V

    goto :goto_13a

    :cond_e9
    aget-object v1, p0, v0

    const-string v2, "106"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackageDb([Ljava/lang/String;)V

    goto :goto_13a

    :cond_fb
    aget-object v1, p0, v0

    const-string v2, "200"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    sget-boolean p0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz p0, :cond_13a

    invoke-static {}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->testSimulateLoseWhenGuard()V

    goto :goto_13a

    :cond_10d
    aget-object v1, p0, v0

    const-string v2, "300"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    sget-boolean p0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz p0, :cond_13a

    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->testDumpStatisticsToFile()V

    goto :goto_13a

    :cond_121
    aget-object v0, p0, v0

    const-string v1, "400"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_13a

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->testNotRestoreModeData([Ljava/lang/String;)V

    goto :goto_13a

    :cond_133
    sput-boolean v3, Lcom/android/common/debug/LogUtils;->internal:Z

    sput-boolean v3, Lcom/android/common/debug/LogUtils;->trace:Z

    invoke-static {v3}, Lcom/oplus/util/PackageCacheUtils;->setInternalLogOpen(Z)V

    :cond_13a
    :goto_13a
    return-void
.end method

.method private static final updateState()V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "getInitialApplication().applicationInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    sput-boolean v0, Lcom/android/common/debug/LogUtils;->debuggable:Z

    const-string/jumbo v0, "persist.sys.assert.panic"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/debug/LogUtils;->isPanicOpen:Z

    const-string v0, "debuggable = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/android/common/debug/LogUtils;->debuggable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPanicOpen = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/common/debug/LogUtils;->isPanicOpen:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAlwayson = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/common/debug/LogUtils;->isAlwayson:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Launcher.LogUtils"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->debuggable:Z

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->isPanicOpen:Z

    if-eqz v0, :cond_54

    goto :goto_56

    :cond_54
    move v0, v2

    goto :goto_57

    :cond_56
    :goto_56
    move v0, v1

    :goto_57
    sput-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    if-eqz v0, :cond_77

    const-string v0, "Launcher VersionInfo (VersionName_CommitId_Date): "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/common/config/VersionInfo;->getLauncherVersionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    sget-boolean v0, Lcom/android/common/debug/LogUtils;->normal:Z

    sput-boolean v0, Lcom/android/systemui/shared/system/InputChannelCompat;->sIsOpenDebug:Z

    const-string v0, "debug.launcher.draw.background"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    sget-object v0, Lcom/android/common/debug/LogUtils;->dumpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/android/common/debug/LogUtils;->mLogStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/debug/LogUtils$LogStateChangedListener;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isPanicOpen()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/common/debug/LogUtils$LogStateChangedListener;->onLogStateChanged(Z)V

    goto :goto_8e

    :cond_a2
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isPanicOpen()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-static {v2}, Lcom/android/common/debug/OplusFileLog;->deleteLauncherDumps(I)V

    :cond_ab
    return-void
.end method

.method public static final usDebug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "panta-sugg-"

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->isTemporaryLogging()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lcom/android/common/debug/OplusFileLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    if-eqz p3, :cond_26

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :cond_26
    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subModuleTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

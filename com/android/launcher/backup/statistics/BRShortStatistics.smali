.class public final Lcom/android/launcher/backup/statistics/BRShortStatistics;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBRShortStatistics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BRShortStatistics.kt\ncom/android/launcher/backup/statistics/BRShortStatistics\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,554:1\n1855#2,2:555\n1855#2:560\n1045#2:561\n1208#2,2:562\n1238#2,4:564\n1856#2:570\n1855#2,2:571\n1855#2,2:573\n1855#2,2:575\n1855#2,2:577\n1045#2:579\n1208#2,2:580\n1238#2,4:582\n1855#2,2:588\n1855#2,2:590\n1045#2:592\n1208#2,2:593\n1238#2,4:595\n13309#3,2:557\n1#4:559\n215#5,2:568\n215#5,2:586\n215#5,2:599\n215#5,2:601\n215#5,2:603\n*S KotlinDebug\n*F\n+ 1 BRShortStatistics.kt\ncom/android/launcher/backup/statistics/BRShortStatistics\n*L\n148#1:555,2\n323#1:560\n340#1:561\n340#1:562,2\n340#1:564,4\n323#1:570\n356#1:571,2\n357#1:573,2\n358#1:575,2\n366#1:577,2\n403#1:579\n403#1:580,2\n403#1:582,4\n419#1:588,2\n426#1:590,2\n461#1:592\n461#1:593,2\n461#1:595,4\n200#1:557,2\n341#1:568,2\n404#1:586,2\n462#1:599,2\n494#1:601,2\n513#1:603,2\n*E\n"
    }
.end annotation


# static fields
.field private static DUMP_STATISTICS_TO_FILE:Z = false

.field public static final INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

.field private static final LOG_HOTSEAT:Ljava/lang/String; = "hotseat:"

.field private static final SUPPORT_STATISTICS:Z

.field public static final TAG:Ljava/lang/String; = "BR-Launcher_BRShortStatistics"

.field private static volatile mHandler:Landroid/os/Handler;

.field private static mHasRecordShortcut:Z

.field private static mKeyList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-direct {v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$recordBgDataGridData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Lcom/android/launcher3/model/BgDataModel;Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordBgDataGridData(Lcom/android/launcher3/model/BgDataModel;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static final synthetic access$recordDbGridData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordDbGridData(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static final synthetic access$recordXmlGridData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordXmlGridData(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static final synthetic access$statisticsBRData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->statisticsBRData(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private final filterKey(Lh4/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/j<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    iget-object v2, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v2, v1, p0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-ne p2, v0, :cond_11

    move p2, v0

    goto :goto_12

    :cond_11
    move p2, v1

    :goto_12
    if-nez p2, :cond_27

    if-eqz p3, :cond_22

    iget-object p2, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p3, p2, v1, p0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-ne p2, v0, :cond_22

    move p2, v0

    goto :goto_23

    :cond_22
    move p2, v1

    :goto_23
    if-eqz p2, :cond_26

    goto :goto_27

    :cond_26
    return v1

    :cond_27
    :goto_27
    iget-object p1, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_51

    array-length p2, p1

    move v2, v1

    :goto_2f
    if-ge v2, p2, :cond_51

    aget-object v3, p1, v2

    if-eqz p3, :cond_3d

    invoke-static {p3, v3, v1, p0}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    if-ne v4, v0, :cond_3d

    move v4, v0

    goto :goto_3e

    :cond_3d
    move v4, v1

    :goto_3e
    if-nez v4, :cond_4e

    if-eqz p4, :cond_4a

    invoke-static {p4, v3, v1, p0}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-ne v3, v0, :cond_4a

    move v3, v0

    goto :goto_4b

    :cond_4a
    move v3, v1

    :goto_4b
    if-nez v3, :cond_4e

    return v1

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_51
    return v0
.end method

.method private final getHandler()Landroid/os/Handler;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_1f

    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1a

    new-instance v0, Landroid/os/Handler;

    const-string v1, "br-statistics"

    invoke-static {v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHandler:Landroid/os/Handler;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :goto_1f
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private final initFilterKeys()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Lh4/j;

    const-string/jumbo v1, "verifyDbData delete invalid or update new component"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "BR-Launcher_LaunchComponentAliasVerifier"

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "deleteOrUpdateInvalidComponent"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "deleteInvalidDeepShortcuts"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRestoring: switchDrawerAndStandardLayout"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string/jumbo v2, "onRestoring: switchCellsLayout"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "Don\'t load downloading app"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "BR-Launcher_LauncherLayoutUtils"

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "app should not show"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "app is splitScreen shortcut"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string/jumbo v1, "pinnedShortcut is null"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "load appWidget info == null"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "getAppWidgetInfo savedProvider is empty"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string/jumbo v1, "unflatten component name error"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "getAppWidgetInfo, saved appWidgetProviderInfo can not match widget id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string v1, "Deleting widget that isn\'t installed anymore"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "loadAllApps apps.size"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "loadAllApps Filter"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "loadAndBindNoPositionItem"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh4/j;

    const-string/jumbo v1, "removing items from db"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModelWriter"

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private final recordBgDataGridData(Ljava/lang/String;Lcom/android/launcher3/model/BgDataModel;Z)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "BR-Launcher_BRShortStatistics"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v8

    new-instance v2, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v2, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBgDataModelDesktopItemPositions(Lcom/android/launcher3/model/BgDataModel;[IZ)Lh4/o;

    move-result-object p2

    iget-object v1, p2, Lh4/o;->a:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/util/HashMap;

    iget-object v1, p2, Lh4/o;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object p2, p2, Lh4/o;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "currentMode"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData(Ljava/lang/String;ZZZLcom/android/launcher/mode/LauncherMode;Ljava/util/HashMap;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recordGridData(\n        …             ).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\thotseat:-101"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, p3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBgDataModelHotseatItemPositions(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    const-string v1, "allFolderOccupiedMap.entries"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/backup/statistics/BRShortStatistics$recordBgDataGridData$lambda$46$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/android/launcher/backup/statistics/BRShortStatistics$recordBgDataGridData$lambda$46$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, v1}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Li4/j0;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_91

    move v1, v2

    :cond_91
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    :cond_b9
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_145

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_d9
    .catchall {:try_start_7 .. :try_end_d9} :catchall_150

    :try_start_d9
    const-string v4, "items"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBgDataModelFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tfolder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v5, "container"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, p1, v2, v1, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData(Ljava/lang/String;ILjava/util/HashMap;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "recordGridData(prefix, c…seFormatStyle).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_121
    .catchall {:try_start_d9 .. :try_end_121} :catchall_122

    goto :goto_127

    :catchall_122
    move-exception v1

    :try_start_123
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_127
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_12e

    goto :goto_c1

    :cond_12e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordBgDataGridData mode folder e3:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c1

    :cond_145
    const-string p1, "\n"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_14f
    .catchall {:try_start_123 .. :try_end_14f} :catchall_150

    goto :goto_155

    :catchall_150
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_155
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_15c

    goto :goto_162

    :cond_15c
    const-string/jumbo p2, "recordBgDataGridData e3:"

    invoke-static {p2, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_162
    return-object v0
.end method

.method private final recordBgDataGridData(Lcom/android/launcher3/model/BgDataModel;Ljava/lang/StringBuilder;)V
    .registers 9

    :try_start_0
    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordBgDataGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;Lcom/android/launcher3/model/BgDataModel;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_20
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    goto :goto_28

    :catchall_23
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_28
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_37

    :cond_2f
    const-string/jumbo p1, "recordBgDataGridData e1:"

    const-string p2, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_37
    return-void
.end method

.method public static synthetic recordBgDataGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;Lcom/android/launcher3/model/BgDataModel;ZILjava/lang/Object;)Ljava/util/List;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordBgDataGridData(Ljava/lang/String;Lcom/android/launcher3/model/BgDataModel;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final recordDbGridData(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "BR-Launcher_BRShortStatistics"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v2, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p3}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbDesktopItemPositions(Landroid/content/Context;[IZ)Lh4/o;

    move-result-object v2

    iget-object v3, v2, Lh4/o;->b:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Ljava/util/HashMap;

    iget-object v2, v2, Lh4/o;->c:Ljava/lang/Object;

    check-cast v2, Lh4/j;

    iget-object v3, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    sget-object v4, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p1

    move-object v9, p2

    move v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData(Ljava/lang/String;ZZZLcom/android/launcher/mode/LauncherMode;Ljava/util/HashMap;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "recordGridData(\n        …             ).toString()"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, p1, v3, p3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordDbHotseatItemPositions(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lh4/j;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\thotseat:-101"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lh4/j;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lh4/j;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    const-string v1, "allFolderOccupiedMap.entries"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/backup/statistics/BRShortStatistics$recordDbGridData$lambda$32$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/android/launcher/backup/statistics/BRShortStatistics$recordDbGridData$lambda$32$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, v1}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Li4/j0;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_97

    move v1, v2

    :cond_97
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a0

    :cond_bf
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_df
    .catchall {:try_start_7 .. :try_end_df} :catchall_156

    :try_start_df
    const-string v4, "items"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordDbFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tfolder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v5, "container"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, p1, v2, v1, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData(Ljava/lang/String;ILjava/util/HashMap;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "recordGridData(prefix, c…seFormatStyle).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_127
    .catchall {:try_start_df .. :try_end_127} :catchall_128

    goto :goto_12d

    :catchall_128
    move-exception v1

    :try_start_129
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_12d
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_134

    goto :goto_c7

    :cond_134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordDbGridData mode folder e3:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_14b
    const-string p1, "\n"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_155
    .catchall {:try_start_129 .. :try_end_155} :catchall_156

    goto :goto_15b

    :catchall_156
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_15b
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_162

    goto :goto_168

    :cond_162
    const-string/jumbo p2, "recordDbGridData e3:"

    invoke-static {p2, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_168
    return-object v0
.end method

.method private final recordDbGridData(Ljava/lang/StringBuilder;)V
    .registers 8

    :try_start_0
    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v1, ""

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordDbGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_21
    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v1, ""

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordDbGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_42
    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v1, ""

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordDbGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    :cond_63
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_65
    .catchall {:try_start_0 .. :try_end_65} :catchall_66

    goto :goto_6b

    :catchall_66
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_6b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_72

    goto :goto_7a

    :cond_72
    const-string/jumbo p1, "recordDbGridData e1:"

    const-string v0, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_7a
    return-void
.end method

.method public static synthetic recordDbGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;ZILjava/lang/Object;)Ljava/util/List;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordDbGridData(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final recordGridData(Ljava/lang/String;ILjava/util/HashMap;Z)Ljava/lang/StringBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;Z)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    const-string p0, "-"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_7
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/LogableGridOccupancy;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_61

    const/16 v4, -0x65

    if-eq p2, v4, :cond_61

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-static {p0, v4}, Lk7/m;->o(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0, v4}, Lk7/m;->o(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v2, p1, p4}, Lcom/android/launcher3/util/LogableGridOccupancy;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_69
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_6c

    goto :goto_71

    :catchall_6c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_71
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_78

    goto :goto_80

    :cond_78
    const-string/jumbo p1, "recordGridData e2:"

    const-string p2, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_80
    return-object v0
.end method

.method private final recordGridData(Ljava/lang/String;ZZZLcom/android/launcher/mode/LauncherMode;Ljava/util/HashMap;Z)Ljava/lang/StringBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;Z)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    const-string p0, "\n"

    invoke-static {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_e

    :try_start_8
    const-string p2, "XML"

    goto :goto_1a

    :catchall_b
    move-exception p0

    goto/16 :goto_bb

    :cond_e
    if-eqz p3, :cond_13

    const-string p2, "DB"

    goto :goto_1a

    :cond_13
    if-eqz p4, :cond_18

    const-string p2, "BG"

    goto :goto_1a

    :cond_18
    const-string p2, ""

    :goto_1a
    sget-object p3, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_b

    const-string/jumbo p4, "】"

    const/16 v1, 0x3a

    const-string/jumbo v2, "【"

    if-ne p5, p3, :cond_46

    :try_start_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    :cond_46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_65
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/util/LogableGridOccupancy;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p6, 0xa

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p6, 0x9

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p5, "screen-"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p7}, Lcom/android/launcher3/util/LogableGridOccupancy;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_b8
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_ba
    .catchall {:try_start_26 .. :try_end_ba} :catchall_b

    goto :goto_bf

    :goto_bb
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_bf
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_c6

    goto :goto_ce

    :cond_c6
    const-string/jumbo p1, "recordGridData e1:"

    const-string p2, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_ce
    const-string/jumbo p0, "occupiedStr"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic recordGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;ILjava/util/HashMap;ZILjava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData(Ljava/lang/String;ILjava/util/HashMap;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic recordGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;ZZZLcom/android/launcher/mode/LauncherMode;Ljava/util/HashMap;ZILjava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 19

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v8, v0

    goto :goto_9

    :cond_7
    move/from16 v8, p7

    :goto_9
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData(Ljava/lang/String;ZZZLcom/android/launcher/mode/LauncherMode;Ljava/util/HashMap;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private final recordXmlGridData(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/StringBuilder;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v2, "\n"

    const-string v3, "BR-Launcher_BRShortStatistics"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    :try_start_b
    invoke-static {v0, v5, v4, v6}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBackupXmlDesktopItemPositions$default(Ljava/util/concurrent/CopyOnWriteArrayList;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14e

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_146

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_149

    :try_start_21
    iget-object v8, v0, Lh4/o;->a:Ljava/lang/Object;

    move-object v14, v8

    check-cast v14, Lcom/android/launcher/mode/LauncherMode;

    iget-object v8, v0, Lh4/o;->b:Ljava/lang/Object;

    move-object v15, v8

    check-cast v15, Ljava/util/HashMap;

    iget-object v0, v0, Lh4/o;->c:Ljava/lang/Object;

    check-cast v0, Lh4/j;

    iget-object v8, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v9, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v10, ""

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x40

    const/16 v18, 0x0

    invoke-static/range {v9 .. v18}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;ZZZLcom/android/launcher/mode/LauncherMode;Ljava/util/HashMap;ZILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {v8, v5, v4, v6}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBackupXmlHotseatItemPositions$default(Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "hotseat:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, -0x65

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v8, "allFolderOccupiedMap.entries"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/android/launcher/backup/statistics/BRShortStatistics$recordXmlGridData$lambda$16$lambda$15$lambda$13$$inlined$sortedBy$1;

    invoke-direct {v8}, Lcom/android/launcher/backup/statistics/BRShortStatistics$recordXmlGridData$lambda$16$lambda$15$lambda$13$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v8}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    const/16 v8, 0xa

    invoke-static {v0, v8}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Li4/j0;->b(I)I

    move-result v8

    const/16 v9, 0x10

    if-ge v8, v9, :cond_80

    move v8, v9

    :cond_80
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_a8
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_c8
    .catchall {:try_start_21 .. :try_end_c8} :catchall_122

    :try_start_c8
    const-string v10, "items"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5, v4, v6}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBackupXmlFolderItemPositions$default(Ljava/util/List;ZILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "folder:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "container"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v12, ""

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordGridData$default(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/String;ILjava/util/HashMap;ZILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_f9
    .catchall {:try_start_c8 .. :try_end_f9} :catchall_fb

    move-object v0, v1

    goto :goto_100

    :catchall_fb
    move-exception v0

    :try_start_fc
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_100
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_107

    goto :goto_b0

    :cond_107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "recordXmlGridData mode folder e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :cond_11d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_120
    .catchall {:try_start_fc .. :try_end_120} :catchall_122

    move-object v0, v1

    goto :goto_127

    :catchall_122
    move-exception v0

    :try_start_123
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_127
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_12f

    goto/16 :goto_15

    :cond_12f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "recordXmlGridData mode e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_146
    sget-object v6, Lh4/z;->a:Lh4/z;
    :try_end_148
    .catchall {:try_start_123 .. :try_end_148} :catchall_149

    goto :goto_14e

    :catchall_149
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    :cond_14e
    :goto_14e
    invoke-static {v6}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_155

    goto :goto_15b

    :cond_155
    const-string/jumbo v1, "recordXmlGridData e:"

    invoke-static {v1, v0, v3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_15b
    return-void
.end method

.method private final saveStatisticsLogToFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_36

    :try_start_2
    const-string p0, "br_statistics"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_11
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_36

    :catch_29
    move-exception p0

    const-string/jumbo p1, "statsBackupRestorePmsData e:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "BR-Launcher_BRShortStatistics"

    invoke-static {p0, p1, p2}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method

.method private final startAppOrLayoutRestore()V
    .registers 4

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mKeyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->initFilterKeys()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mKeyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHasRecordShortcut:Z

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->getLauncherVersionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "============================"

    invoke-static {v1, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3c
    return-void
.end method

.method private final statisticsBRData(Ljava/lang/StringBuilder;)V
    .registers 5

    :try_start_0
    sget-boolean p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->DUMP_STATISTICS_TO_FILE:Z

    if-eqz p0, :cond_17

    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statisticsStr.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->saveStatisticsLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsBackupRestoreLauncher(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_3d

    :cond_35
    const-string/jumbo p1, "statisticsBRData e:"

    const-string v0, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method


# virtual methods
.method public final endAppOrLayoutRestore()V
    .registers 2

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHasRecordShortcut:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mKeyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    sput-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final filterRestoreLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-boolean p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    if-eqz p0, :cond_5b

    :try_start_4
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mKeyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_46

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    sget-object v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->filterKey(Lh4/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    :cond_43
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_48

    goto :goto_4d

    :cond_46
    const/4 p0, 0x0

    goto :goto_4d

    :catchall_48
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_4d
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_54

    goto :goto_5b

    :cond_54
    const-string p1, "filterRestoreLog e:"

    const-string p2, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final recordBackupXmlData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "restoreDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1e
    return-void
.end method

.method public final recordBgDataGridData(Lcom/android/launcher3/model/BgDataModel;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    const-string p0, "bgDataModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "prefix"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "writer"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_11
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordBgDataGridData(Ljava/lang/String;Lcom/android/launcher3/model/BgDataModel;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c

    :cond_2c
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_34
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3b

    goto :goto_43

    :cond_3b
    const-string/jumbo p1, "recordBgDataGridData e2:"

    const-string p2, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method public final recordDbGridData(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    const-string/jumbo p0, "prefix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "writer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_c
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v1, "currentMode"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordDbGridData(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_24

    :cond_34
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_37

    goto :goto_3c

    :catchall_37
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3c
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_43

    goto :goto_4b

    :cond_43
    const-string/jumbo p1, "recordDbGridData e2:"

    const-string p2, "BR-Launcher_BRShortStatistics"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method public final recordPinnedShortcuts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHasRecordShortcut:Z

    if-nez v0, :cond_71

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6f

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    sget-object v5, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const-string p1, "%s %s %s %s"

    const-string p2, "format(format, *args)"

    invoke-static {v2, v0, p1, p2}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6f
    sput-boolean v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->mHasRecordShortcut:Z

    :cond_71
    return-void
.end method

.method public final recordRestoreBgDataData(Lcom/android/launcher3/model/BgDataModel;)V
    .registers 3

    const-string v0, "bgDataModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

.method public final recordRestoreDbData()V
    .registers 2

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method public final recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->SUPPORT_STATISTICS:Z

    if-eqz v0, :cond_6b

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const-string p1, "%s %s %s %s"

    const-string p2, "format(format, *args)"

    invoke-static {v1, v0, p1, p2}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6b
    return-void
.end method

.method public final startAppRestore()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->startAppOrLayoutRestore()V

    return-void
.end method

.method public final startLayoutRestore()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->startAppOrLayoutRestore()V

    return-void
.end method

.method public final testDumpStatisticsToFile()V
    .registers 2

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->DUMP_STATISTICS_TO_FILE:Z

    const-string p0, "BR-Launcher_BRShortStatistics"

    const-string/jumbo v0, "testDumpStatisticsToFile"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

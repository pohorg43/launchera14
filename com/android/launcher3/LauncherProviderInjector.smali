.class public final Lcom/android/launcher3/LauncherProviderInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APPLY_BATCH:Ljava/lang/String; = "applyBatch"

.field public static final BULK_INSERT:Ljava/lang/String; = "bulkInsert"

.field public static final CALL:Ljava/lang/String; = "call"

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final INSERT:Ljava/lang/String; = "insert"

.field public static final INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

.field private static final PERMISSION_READ_SETTINGS:Ljava/lang/String; = "com.android.launcher.permission.READ_SETTINGS"

.field private static final PERMISSION_WRITE_SETTINGS:Ljava/lang/String; = "com.android.launcher.permission.WRITE_SETTINGS"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final TAG:Ljava/lang/String; = "LauncherProviderInjector"

.field public static final UPDATE:Ljava/lang/String; = "update"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/LauncherProviderInjector;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherProviderInjector;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 3

    if-eqz p2, :cond_5

    const-string p0, " IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p0, ""

    :goto_7
    const-string p2, "CREATE TABLE "

    invoke-static {p2, p0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentScreenTable()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (_id INTEGER PRIMARY KEY,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final hasPermission(Landroid/content/Context;Z)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_10

    return v2

    :cond_10
    if-eqz p2, :cond_15

    const-string v1, "com.android.launcher.permission.READ_SETTINGS"

    goto :goto_17

    :cond_15
    const-string v1, "com.android.launcher.permission.WRITE_SETTINGS"

    :goto_17
    invoke-virtual {p1, v1, p0, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const-string p1, "hasPermission = "

    const-string v1, ", isRead = "

    const-string v3, ", callingPid = "

    invoke-static {p1, v2, v1, p2, v3}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", callingUid = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherProviderInjector"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static synthetic keepWorkspaceScreen$default(Lcom/android/launcher3/LauncherProviderInjector;Landroid/content/ContentValues;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;ILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherProviderInjector;->keepWorkspaceScreen(Landroid/content/ContentValues;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Z

    move-result p0

    return p0
.end method

.method private final printDbOpMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v3, "LauncherProviderInjector"

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v16, p11

    invoke-static/range {v3 .. v16}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic printDbOpMessage$default(Lcom/android/launcher3/LauncherProviderInjector;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_11

    move-object v10, v2

    goto :goto_13

    :cond_11
    move-object/from16 v10, p7

    :goto_13
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_19

    move-object v11, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v11, p8

    :goto_1b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_21

    move-object v12, v2

    goto :goto_23

    :cond_21
    move-object/from16 v12, p9

    :goto_23
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_29

    move-object v13, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v13, p10

    :goto_2b
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_31

    move-object v14, v2

    goto :goto_33

    :cond_31
    move-object/from16 v14, p11

    :goto_33
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v14}, Lcom/android/launcher3/LauncherProviderInjector;->printDbOpMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addFavoritesAndWorkSpaceTable(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .registers 4

    const-string v0, "databaseHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentScreenTable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    :cond_21
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "databaseHelper.writableDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/LauncherProviderInjector;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_35
    return-void
.end method

.method public final addSaleWidgetToLauncher(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz p0, :cond_1f

    new-instance p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;

    invoke-direct {p0, p1}, Lcom/android/launcher/sellmode/SaleModeWidgetController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/common/config/VersionInfo;->isOpenMarketVersion(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->addSaleWidgetToLauncher()V

    goto :goto_1f

    :cond_18
    const-string p0, "LauncherProviderInjector"

    const-string p1, "addSaleWidgetToLauncher failed is not open market!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final checkContainsPackageOrClassName([Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    const-string/jumbo v0, "query: callPid = "

    const-string v1, "LauncherProviderInjector"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_38

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    const/4 v3, 0x2

    invoke-static {v0, v2, p0, v3}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "className"

    invoke-static {v0, v2, p0, v3}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_31
    const-string/jumbo p0, "query: not support packageName or className"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    :cond_38
    return p0
.end method

.method public final checkLauncherLayoutUpdate(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/Context;)V
    .registers 3

    const-string p0, "databaseHelper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/layout/CustomLayoutHelper;->checkNewLauncherLayoutUpdate(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/Context;)V

    return-void
.end method

.method public final getLoaderFromLauncherLayoutApp(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;
    .registers 7

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "openHelper"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getDefaultWorkspaceBySim(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0

    const-string v0, "LauncherProviderInjector"

    if-nez p0, :cond_33

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getFromLauncherLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromLauncherLayout: loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-nez v1, :cond_5b

    if-nez p0, :cond_5b

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getFromCustomizePartition(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromCustomizePartition: loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    if-nez p0, :cond_77

    sget-object p0, Lcom/android/launcher/layout/ComponentLayoutProvider;->Companion:Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->getLayoutLoader(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFromComponent: loader: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return-object p0
.end method

.method public final hasReadPermission(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherProviderInjector;->hasPermission(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public final hasWritePermission(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherProviderInjector;->hasPermission(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public final keepWorkspaceScreen(Landroid/content/ContentValues;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Z
    .registers 8

    const-string/jumbo p0, "values"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "screen"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "values.getAsInteger(Laun…ettings.Favorites.SCREEN)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 p1, 0x0

    :try_start_18
    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentScreenTable()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCurrentScreenTable()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_47

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    if-eqz p2, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR IGNORE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (_id, screenRank) select ?, (ifnull(MAX(screenRank), -1)+1) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_46} :catch_7d
    .catchall {:try_start_18 .. :try_end_46} :catchall_78

    goto :goto_48

    :cond_47
    move-object p2, p1

    :goto_48
    const/4 v1, 0x1

    if-eqz p2, :cond_55

    int-to-long v2, p0

    :try_start_4c
    invoke-virtual {p2, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_55

    :catchall_50
    move-exception p0

    move-object p1, p2

    goto :goto_79

    :catch_53
    move-object p1, p2

    goto :goto_7d

    :cond_55
    :goto_55
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_id"

    if-eqz p2, :cond_66

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_66
    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_74} :catch_53
    .catchall {:try_start_4c .. :try_end_74} :catchall_50

    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catchall_78
    move-exception p0

    :goto_79
    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_7d
    :goto_7d
    const/4 p0, 0x0

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0
.end method

.method public final printDbApplyBatchMessage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x380

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v14}, Lcom/android/launcher3/LauncherProviderInjector;->printDbOpMessage$default(Lcom/android/launcher3/LauncherProviderInjector;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final printDbCallMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/LauncherProviderInjector;->printDbOpMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public final printDbDeleteMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 21

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3e0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v14}, Lcom/android/launcher3/LauncherProviderInjector;->printDbOpMessage$default(Lcom/android/launcher3/LauncherProviderInjector;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final printDbInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .registers 20

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3c0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v14}, Lcom/android/launcher3/LauncherProviderInjector;->printDbOpMessage$default(Lcom/android/launcher3/LauncherProviderInjector;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final printDbUpdateMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;)V
    .registers 22

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3c0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v14}, Lcom/android/launcher3/LauncherProviderInjector;->printDbOpMessage$default(Lcom/android/launcher3/LauncherProviderInjector;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final reloadLauncherIfSimChanged(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDbIfNotExists: customizer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherProviderInjector"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLayoutSpCustomize()Z

    move-result v0

    if-eqz v0, :cond_3a

    instance-of v0, p0, Lcom/android/launcher/operators/GeneralCustomizer;

    if-eqz v0, :cond_3a

    invoke-static {p1}, Lcom/android/launcher/operators/GeneralCustomizer;->carrierCotaDataReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    check-cast p0, Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->simStateChangedToReLoadLauncher(Landroid/content/Context;)Z

    :cond_3a
    return-void
.end method

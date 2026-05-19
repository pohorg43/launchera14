.class public Lcom/android/launcher/sellmode/SaleModeWidgetController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;
    }
.end annotation


# static fields
.field private static final PACKAGE_RENO5_DEMO:Ljava/lang/String; = "com.market.heydemo"

.field private static final SALE_MODE_WIDGET_META_KAY:Ljava/lang/String; = "com.heytap.launcher.sale"

.field private static final TAG:Ljava/lang/String; = "SaleModeWidgetController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWorkerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/sellmode/SaleModeWidgetController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->lambda$updateSaleWidgetScreen$0(II)V

    return-void
.end method

.method private addSaleWidgetItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "SaleModeWidgetController"

    const-string p1, "addSaleWidgetItemToDatabase: In children mode, don\'t handle database operation."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p5, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const-string p2, "generate_new_item_id"

    invoke-static {v0, p2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "value"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object p2, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/common/debug/c;

    invoke-direct {p3, p0, p1, v1, v0}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher/sellmode/SaleModeWidgetController;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;Landroid/content/ContentResolver;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/sellmode/SaleModeWidgetController;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;Landroid/content/ContentResolver;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->lambda$addSaleWidgetItemToDatabase$1(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private bindSaleWidgetToLauncher(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SaleModeWidgetController"

    iget-object v1, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;

    :try_start_18
    iget-object v3, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v3, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    iget v7, v2, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->index:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSaleWidgetToLauncher  widgetInfo pageIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->index:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    new-instance v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v5, v4, v6}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v6, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v6, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v6, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const/16 v6, -0x64

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_a0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSaleWidgetToLauncher  appWidgetInfo.spanX "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " appWidgetInfo.spanY = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "appWidgetInfo.minSpanX= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " appWidgetInfo.minSpanY = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " widgetId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v4, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_bf

    invoke-virtual {v2, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSaleWidgetToLauncher  deleteAppWidgetId widgetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {p0, v7, v2}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->updateSaleWidgetScreen(II)V

    const/16 v6, -0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->addSaleWidgetItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_cc} :catch_ce

    goto/16 :goto_c

    :catch_ce
    move-exception v2

    const-string v3, "addSaleWidgetToLauncher e "

    invoke-static {v3, v2, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_d6
    return-void
.end method

.method private getSaleWidgetInfos()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v1, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    :try_start_21
    iget-object v3, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const v5, 0xc0080

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.heytap.launcher.sale"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_15

    new-instance v4, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;

    invoke-direct {v4, v2, v3}, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_43} :catch_44

    goto :goto_15

    :catch_44
    move-exception v2

    const-string v3, "getSaleWidgets  e "

    const-string v4, "SaleModeWidgetController"

    invoke-static {v3, v2, v4}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_15

    :cond_4d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static isDemoAppEnabled(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "com.market.heydemo"

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSaleMode2020(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/common/config/VersionInfo;->isSaleMode2020Model(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->isDemoAppEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$addSaleWidgetItemToDatabase$1(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;Landroid/content/ContentResolver;)V
    .registers 6

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    const-string/jumbo p1, "title"

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    sget-object p1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private synthetic lambda$updateSaleWidgetScreen$0(II)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    iget-object v0, v0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isSaleMode2020Model(Landroid/content/Context;)Z

    move-result v0

    const-string v7, "<"

    const-string v8, "cellY"

    const-string v9, "="

    const-string v10, "container"

    const-string/jumbo v11, "screen="

    const-string v12, " spanY<"

    const-string v13, " AND "

    const-string v14, "SaleModeWidgetController"

    if-nez v0, :cond_108

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p0, v7

    const-string v7, "_id"

    invoke-virtual {v0, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v15, "screenRank"

    invoke-virtual {v0, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v7, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string v7, "Widget"

    if-nez v0, :cond_61

    const-string/jumbo v0, "updateSaleWidgetScreen  insert  error"

    invoke-static {v7, v14, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    add-int/lit8 v6, v6, -0x1

    :goto_63
    if-ltz v6, :cond_ff

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    if-lt v0, v1, :cond_e7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string/jumbo v4, "updateSaleWidgetScreen update "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " items:screen-"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newScreenId"

    invoke-static {v15, v2, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0xa

    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    add-int/lit8 v15, v0, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v17, v12

    const-string/jumbo v12, "screen"

    invoke-virtual {v4, v12, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v12, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v9

    const/16 v9, -0x64

    move-object/from16 v19, v10

    move-object/from16 v10, p0

    invoke-static {v15, v9, v13, v8, v10}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    invoke-virtual {v5, v12, v4, v9, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v9, "updateSaleWidgetScreen  screenId  = "

    const-string/jumbo v12, "updateRow "

    invoke-static {v9, v0, v12, v4}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1

    :cond_e7
    move-object/from16 v16, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v17, v12

    move-object/from16 v10, p0

    :goto_f1
    add-int/lit8 v6, v6, -0x1

    move-object/from16 p0, v10

    move-object/from16 v4, v16

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_63

    :cond_ff
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v17, v12

    move-object/from16 v10, p0

    goto :goto_10f

    :cond_108
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v17, v12

    move-object v10, v7

    :goto_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSaleWidgetScreen delete "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " saleWidgetScreenId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, -0x64

    invoke-static {v3, v4, v13, v8, v10}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_185

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSaleWidgetScreen  delete    saleWidgetScreenId  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_185
    return-void
.end method

.method private updateSaleWidgetScreen(II)V
    .registers 5

    if-gez p1, :cond_d

    const-string p0, "Widget"

    const-string p1, "SaleModeWidgetController"

    const-string/jumbo p2, "updateSaleWidgetScreen  saleWidgetScreenId   is error "

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher/sellmode/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/sellmode/a;-><init>(Lcom/android/launcher/sellmode/SaleModeWidgetController;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addSaleWidgetToLauncher()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->getSaleWidgetInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "SaleModeWidgetController"

    const-string v0, "getSaleWidgetInfos isEmpty!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_12
    invoke-direct {p0, v0}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->bindSaleWidgetToLauncher(Ljava/util/List;)V

    :goto_15
    return-void
.end method

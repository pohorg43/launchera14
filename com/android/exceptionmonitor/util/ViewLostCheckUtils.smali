.class public final Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nViewLostCheckUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewLostCheckUtils.kt\ncom/android/exceptionmonitor/util/ViewLostCheckUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,527:1\n1#2:528\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;

.field public static final TAG:Ljava/lang/String; = "ViewLostCheck"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;

    invoke-direct {v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;-><init>()V

    sput-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CompletableFuture;Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDesktop$lambda$0(Ljava/util/concurrent/CompletableFuture;Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZZZ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInDesktop$lambda$6(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZZZ)V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInFolderList$lambda$2(Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInAllAppsView$lambda$4(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInViewList$lambda$1(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static final findAppInBgAllAppsList(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6f

    if-eqz p1, :cond_6f

    if-nez p2, :cond_8

    goto :goto_6f

    :cond_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_4d

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object v0

    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object p0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "getNonNullComponent(appInfo)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v4, "appInfo.user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isAppEquals(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v1

    :cond_4c
    return-object v0

    :cond_4d
    :goto_4d
    const-string p0, "findAppInBgAllAppsList, can\'t find pkg:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; cls:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewLostCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    return-object v0
.end method

.method public static final findAppInBgDataModel(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7b

    if-eqz p1, :cond_7b

    if-nez p2, :cond_8

    goto :goto_7b

    :cond_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_59

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object v0

    :cond_1c
    new-instance v1, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    const-string v2, "launcherModel.mBgDataModel.itemsIdMap"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v2, :cond_31

    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "getNonNullComponent(itemInfo)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v4, "itemInfo.user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isAppEquals(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_31

    return-object v1

    :cond_58
    return-object v0

    :cond_59
    :goto_59
    const-string p0, "findAppInBgDataModel, can\'t find pkg:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; cls:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewLostCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return-object v0
.end method

.method private static final findAppInDatabase(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/Map;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/model/data/ItemInfo;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_78

    if-eqz p1, :cond_78

    if-eqz p2, :cond_78

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_78

    :cond_e
    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_56

    :cond_21
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-virtual {v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    const-string v5, "cn"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "user"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4, p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isAppEquals(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0

    :cond_55
    return-object v0

    :cond_56
    :goto_56
    const-string p1, "findAppInDatabase, can\'t find pkg:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; cls:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewLostCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-object v0
.end method

.method public static final findAppInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "findAppInDesktop Error, "

    const-string/jumbo v1, "tag"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_b3

    if-eqz p1, :cond_b3

    if-nez p2, :cond_11

    goto/16 :goto_b3

    :cond_11
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewLostCheck"

    if-eqz v2, :cond_93

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_93

    :cond_20
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/common/debug/c;

    invoke-direct {v5, v2, p0, p1, p2}, Lcom/android/common/debug/c;-><init>(Ljava/util/concurrent/CompletableFuture;Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_2f
    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_35} :catch_4b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2f .. :try_end_35} :catch_37

    move-object v1, v2

    goto :goto_5e

    :catch_37
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :catch_4b
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    if-nez v1, :cond_92

    const-string v0, "hidden_by_bug"

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/statistics/LauncherStatistics;->statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view lost in desktop, can\'t find user:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; cn:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; reason:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    return-object v1

    :cond_93
    :goto_93
    const-string p0, "findAppInDesktop, can\'t find pkg:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; cls:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    :goto_b3
    return-object v1
.end method

.method private static final findAppInDesktop$lambda$0(Ljava/util/concurrent/CompletableFuture;Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 5

    const-string v0, "$future"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final findFolderInBgDataModel(Lcom/android/launcher/Launcher;I)Lcom/android/launcher3/model/data/FolderInfo;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    const/16 v1, -0x64

    if-eq p1, v1, :cond_3f

    const/16 v1, -0x65

    if-ne p1, v1, :cond_c

    goto :goto_3f

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v0

    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v2, p1, :cond_23

    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_23

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    return-object v1

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public static final findItemFromFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_61

    if-nez p1, :cond_6

    goto :goto_61

    :cond_6
    invoke-static {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_3f

    :cond_19
    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-object v2

    :cond_3e
    return-object v0

    :cond_3f
    :goto_3f
    const-string p0, "findItemFromFolder, can\'t find pkg:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; cls:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewLostCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-object v0
.end method

.method private static final findItemInAllAppsAdapter(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4b

    if-eqz p1, :cond_4b

    if-nez p2, :cond_8

    goto :goto_4b

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    goto :goto_1a

    :cond_19
    move-object p0, v0

    :goto_1a
    if-nez p0, :cond_1d

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_22
    if-ge v1, v2, :cond_4b

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-nez v3, :cond_2f

    goto :goto_48

    :cond_2f
    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    return-object p0

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static final findLostDbAppsInBgDataModel(Lcom/android/launcher/Launcher;Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_84

    if-eqz p1, :cond_84

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_84

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    const-string v4, "launcherModel.mBgDataModel.itemsIdMap"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v4, :cond_2e

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-static {p0, v3, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDatabase(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/Map;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v4

    if-nez v4, :cond_2e

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_55

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    goto :goto_56

    :cond_55
    move-object v4, v0

    :goto_56
    const-string v5, "downloadAppClassName"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "itemInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findLostDbAppsInBgDataModel failed item:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; reason:isDownloadingApp"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewLostCheck"

    invoke-static {v4, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_83
    return-object v2

    :cond_84
    :goto_84
    return-object v0
.end method

.method private static final findViewFromAppWidgetViewList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_8
    if-ge v3, v0, :cond_47

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_44

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    iget-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    if-nez v2, :cond_31

    :goto_2e
    move-object v1, v4

    move-object v2, v5

    goto :goto_44

    :cond_31
    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-gt v6, v7, :cond_44

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-gt v6, v7, :cond_44

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-gt v6, v7, :cond_44

    goto :goto_2e

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_47
    return-object v1
.end method

.method private static final findViewFromFolder(Landroid/view/View;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3c

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "getNonNullComponent(info)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v3, "info.user"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isAppEquals(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final findViewFromFolderList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewFromFolder(Landroid/view/View;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    return-object v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final findViewFromViewList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_8
    if-ge v3, v0, :cond_4a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_47

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    if-nez v2, :cond_31

    :goto_2e
    move-object v1, v4

    move-object v2, v5

    goto :goto_47

    :cond_31
    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-gt v6, v7, :cond_47

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ge v6, v7, :cond_3e

    goto :goto_2e

    :cond_3e
    if-ne v6, v7, :cond_47

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v6, v7, :cond_47

    goto :goto_2e

    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_4a
    return-object v1
.end method

.method private static final findViewInAllAppsView(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_8

    goto :goto_10

    :cond_8
    invoke-static {p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findItemInAllAppsAdapter(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    if-eqz p0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    :cond_10
    :goto_10
    return-object v0
.end method

.method private static final findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_43

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "view"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewFromFolder(Landroid/view/View;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1c

    return-object v2

    :cond_1c
    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_40

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v5, 0xca

    if-eq v4, v5, :cond_40

    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, "getNonNullComponent(tag)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string/jumbo v5, "tag.user"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isAppEquals(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_40

    return-object v2

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final findViewInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    if-nez p2, :cond_8

    goto :goto_2e

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const-string v1, "cellLayouts"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    array-length v2, p0

    :goto_17
    if-ge v1, v2, :cond_2e

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    const-string v4, "container"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2b

    return-object v3

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public static final findViewInFolderList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "findViewInFolderList Error, "

    const-string v1, "ViewLostCheck"

    const-string v2, "folderList"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cn"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/common/debug/c;

    invoke-direct {v4, v2, p0, p1, p2}, Lcom/android/common/debug/c;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_23
    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_29} :catch_3e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :catch_3e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final findViewInFolderList$lambda$2(Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 5

    const-string v0, "$future"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewFromFolderList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final findViewInViewList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "findViewInViewList Error, "

    const-string v1, "ViewLostCheck"

    const-string/jumbo v2, "viewList"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cn"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "itemType"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sget-object v9, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v10, Lcom/android/exceptionmonitor/util/e;

    move-object v3, v10

    move-object v4, p3

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/exceptionmonitor/util/e;-><init>(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_2f
    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_35} :catch_4a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2f .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catch_4a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final findViewInViewList$lambda$1(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 6

    const-string v0, "$itemType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$future"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "widget"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    invoke-static {p2, p3, p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewFromAppWidgetViewList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_2a
    invoke-static {p2, p3, p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewFromViewList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_31
    return-void
.end method

.method private static final isAppEquals(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadAppClassName"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_17
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_2b
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isAppEquals true, downloading appCn:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cn:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewLostCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5e
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    return v2

    :cond_6b
    const/4 p0, 0x0

    return p0
.end method

.method public static final isPackageShouldShow(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7b

    if-eqz p1, :cond_7b

    if-nez p2, :cond_8

    goto :goto_7b

    :cond_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewLostCheck"

    if-eqz v1, :cond_5b

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_5b

    :cond_17
    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->shouldShowInLayout(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_59

    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->getNotShowReason(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/statistics/LauncherStatistics;->statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageShouldShow, can\'t show user:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; cn:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; reason:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_59
    const/4 p0, 0x1

    return p0

    :cond_5b
    :goto_5b
    const-string p0, "isPackageShouldShow, can\'t show pkg:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; cls:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return v0
.end method

.method public static final logAndStatist(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final removeViewInAllAppsView(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZLjava/lang/Boolean;)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    if-nez p2, :cond_7

    goto :goto_18

    :cond_7
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/exceptionmonitor/util/f;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/exceptionmonitor/util/f;-><init>(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZ)V

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public static synthetic removeViewInAllAppsView$default(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZLjava/lang/Boolean;ILjava/lang/Object;)V
    .registers 15

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move v4, v0

    goto :goto_8

    :cond_7
    move v4, p3

    :goto_8
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_e

    move v5, v0

    goto :goto_f

    :cond_e
    move v5, p4

    :goto_f
    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_14

    const/4 p5, 0x0

    :cond_14
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInAllAppsView(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZLjava/lang/Boolean;)V

    return-void
.end method

.method private static final removeViewInAllAppsView$lambda$4(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZ)V
    .registers 8

    invoke-static {p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findItemInAllAppsAdapter(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v0

    if-eqz v0, :cond_5c

    if-nez p3, :cond_a

    if-eqz p4, :cond_50

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p4

    const-string/jumbo v1, "recyclerView"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_39

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_39
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeViewInAllAppsView view&adapterItem:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ViewLostCheck"

    invoke-static {v0, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    new-instance p4, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;

    invoke-direct {p4, p3, p5, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;-><init>(Ljava/lang/Boolean;ZLandroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p4}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_5c
    return-void
.end method

.method public static final removeViewInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V
    .registers 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    if-nez p2, :cond_7

    goto :goto_1d

    :cond_7
    sget-object v9, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v10, Lcom/android/exceptionmonitor/util/g;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p7

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/exceptionmonitor/util/g;-><init>(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZZZ)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static synthetic removeViewInDesktop$default(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V
    .registers 21

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v6, v2

    goto :goto_a

    :cond_9
    move v6, p3

    :goto_a
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_10

    move v7, v2

    goto :goto_11

    :cond_10
    move v7, p4

    :goto_11
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_17

    move v8, v2

    goto :goto_19

    :cond_17
    move/from16 v8, p5

    :goto_19
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1f

    move v9, v2

    goto :goto_21

    :cond_1f
    move/from16 v9, p6

    :goto_21
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_2a

    :cond_28
    move-object/from16 v10, p7

    :goto_2a
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v10}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V

    return-void
.end method

.method private static final removeViewInDesktop$lambda$6(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZZZ)V
    .registers 19

    move-object v3, p1

    move-object v4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    const-string v1, "cellLayouts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v5, v2

    :goto_12
    if-ge v5, v1, :cond_91

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    const-string v8, "container"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8e

    if-nez p3, :cond_29

    if-eqz p4, :cond_75

    :cond_29
    instance-of v0, v8, Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "removeViewInDesktop view:"

    const-string v5, "ViewLostCheck"

    if-eqz v0, :cond_5d

    invoke-static {v8, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewFromFolder(Landroid/view/View;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    if-eqz v0, :cond_4a

    move-object v6, v8

    check-cast v6, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.model.data.FolderInfo"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v6, v0, v2}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :cond_5d
    invoke-virtual {v6, v8}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v9

    new-instance v10, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;

    move-object v0, v10

    move-object v1, p3

    move/from16 v2, p5

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p6

    move-object v6, v8

    move-object v7, p0

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;-><init>(Ljava/lang/Boolean;ZLandroid/content/ComponentName;Landroid/os/UserHandle;ZLandroid/view/View;Lcom/android/launcher/Launcher;Z)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_91

    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_91
    :goto_91
    return-void
.end method

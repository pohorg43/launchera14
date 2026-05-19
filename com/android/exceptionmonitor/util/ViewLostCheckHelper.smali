.class public final Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nViewLostCheckHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewLostCheckHelper.kt\ncom/android/exceptionmonitor/util/ViewLostCheckHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1005:1\n1#2:1006\n59#3:1007\n1855#4,2:1008\n1855#4,2:1010\n1855#4,2:1012\n1855#4,2:1014\n1855#4,2:1016\n1855#4,2:1018\n1855#4,2:1020\n1855#4,2:1022\n1855#4,2:1024\n1855#4,2:1026\n1855#4,2:1028\n1855#4,2:1030\n1855#4,2:1032\n1855#4,2:1034\n1855#4,2:1036\n1855#4,2:1038\n1855#4,2:1040\n1855#4,2:1042\n1855#4,2:1044\n1855#4,2:1046\n1855#4:1048\n1855#4,2:1049\n1856#4:1051\n1855#4,2:1054\n1855#4,2:1056\n1855#4,2:1058\n1855#4,2:1060\n1855#4,2:1062\n13309#5,2:1052\n*S KotlinDebug\n*F\n+ 1 ViewLostCheckHelper.kt\ncom/android/exceptionmonitor/util/ViewLostCheckHelper\n*L\n132#1:1007\n161#1:1008,2\n432#1:1010,2\n437#1:1012,2\n458#1:1014,2\n463#1:1016,2\n470#1:1018,2\n474#1:1020,2\n510#1:1022,2\n551#1:1024,2\n573#1:1026,2\n581#1:1028,2\n669#1:1030,2\n682#1:1032,2\n695#1:1034,2\n708#1:1036,2\n724#1:1038,2\n737#1:1040,2\n750#1:1042,2\n768#1:1044,2\n799#1:1046,2\n845#1:1048\n846#1:1049,2\n845#1:1051\n877#1:1054,2\n892#1:1056,2\n955#1:1058,2\n219#1:1060,2\n395#1:1062,2\n860#1:1052,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

.field private static final RECOVER_MEANS_ICON_LOCATION:Ljava/lang/String; = "ICON_LOCATION"

.field private static final RECOVER_MEANS_LOST_DETECT_BACKUP_RESTORE:Ljava/lang/String; = "LOST_DETECT_BACKUP_RESTORE"

.field private static final RECOVER_MEANS_LOST_DETECT_NORMAL:Ljava/lang/String; = "LOST_DETECT_NORMAL"

.field private static mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static mTopApps:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;-><init>()V

    sput-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->detectLostAppsAndRestore$lambda$4$lambda$3(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$addFolderContentRunInMain(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Lcom/android/launcher3/model/BgDataModel;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->addFolderContentRunInMain(Lcom/android/launcher3/model/BgDataModel;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$rebindCallbacksRunInMain(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->rebindCallbacksRunInMain(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private final addFolderContentRunInMain(Lcom/android/launcher3/model/BgDataModel;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v0, p2, p1}, Landroidx/constraintlayout/motion/widget/c;-><init>(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_20

    :cond_19
    const-string p1, "addFolderContentRunInMain e:"

    const-string p2, "ViewLostCheck"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method private static final addFolderContentRunInMain$lambda$28$lambda$27(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel;)V
    .registers 6

    const-string v0, "$lostFolderMemAppItems"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreLostApps, folderMemItems lost mem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewLostCheck"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZZ)V

    goto :goto_e

    :cond_45
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Ljava/util/Map;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllDbAppsIncludeLost$lambda$14$lambda$13(Lcom/android/launcher/Launcher;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private final bindItemsRunInMain(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/exceptionmonitor/util/b;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_20

    :cond_19
    const-string p1, "bindItemsRunInMain e:"

    const-string p2, "ViewLostCheck"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method private static final bindItemsRunInMain$lambda$31$lambda$30(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string v0, "$tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lostDesktopAppItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreLostApps, desktopViewItems lost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":size:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewLostCheck"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->addFolderContentRunInMain$lambda$28$lambda$27(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->bindItemsRunInMain$lambda$31$lambda$30(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private final detectLostApp(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ")V"
        }
    .end annotation

    const-string v0, "ViewLostCheck"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-virtual {p9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInBgDataModel(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    if-nez v2, :cond_73

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p8, :cond_21

    invoke-interface {p8, p9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    move v5, v3

    goto :goto_22

    :cond_21
    move v5, v4

    :goto_22
    if-eqz v5, :cond_73

    invoke-virtual {p9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_a6

    const-string/jumbo p5, "packageName"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_4a

    invoke-virtual {p9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object p5

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    invoke-virtual {p9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    if-eqz p5, :cond_5d

    invoke-interface {p5, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v4

    :goto_5e
    if-eqz v3, :cond_a6

    invoke-virtual {p9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_6f

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6f
    invoke-interface {v1, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_73
    if-nez v2, :cond_8d

    if-eqz p8, :cond_8d

    invoke-interface {p8, p9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8d

    invoke-interface {p8, p9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p3, v2

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p3, :cond_a6

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_8d
    if-eqz v2, :cond_9e

    if-eqz p8, :cond_9e

    invoke-interface {p8, p9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9e

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_9e
    if-eqz v2, :cond_a6

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catchall {:try_start_7 .. :try_end_a6} :catchall_f8

    :cond_a6
    :goto_a6
    if-eqz v2, :cond_d2

    :try_start_a8
    move-object p3, v2

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p4, -0x64

    if-eq p3, p4, :cond_d2

    move-object p3, v2

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p4, -0x65

    if-eq p3, p4, :cond_d2

    move-object p3, v2

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {p1, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findFolderInBgDataModel(Lcom/android/launcher/Launcher;I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p3

    move-object p4, v2

    check-cast p4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p4, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findItemFromFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p3

    if-nez p3, :cond_d2

    invoke-interface {p7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d2
    sget-object p3, Lh4/z;->a:Lh4/z;
    :try_end_d4
    .catchall {:try_start_a8 .. :try_end_d4} :catchall_d5

    goto :goto_da

    :catchall_d5
    move-exception p3

    :try_start_d6
    invoke-static {p3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    :goto_da
    invoke-static {p3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_e1

    goto :goto_f5

    :cond_e1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "detectLostFolderApp e:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f5
    sget-object p3, Lh4/z;->a:Lh4/z;
    :try_end_f7
    .catchall {:try_start_d6 .. :try_end_f7} :catchall_f8

    goto :goto_fd

    :catchall_f8
    move-exception p3

    invoke-static {p3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    :goto_fd
    invoke-static {p3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_104

    goto :goto_109

    :cond_104
    const-string p4, "detectLostApp e:"

    invoke-static {p4, p3, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_109
    invoke-direct {p0, p1, p2, v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->statsAppRecover(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final detectLostAppsAndForceReload()Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ViewLostCheck"

    sget-object v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    :cond_c
    :try_start_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllPmsApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllTopApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v2, v6, v7}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllPkgsLostInBgAllAppsList(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {v1, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllDbAppsIncludeLost(Lcom/android/launcher/Launcher;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v1, v2, v6, v7, v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllAppsLostInDesktop(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    if-nez v4, :cond_3f

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_56

    :cond_3f
    const-string v4, "detectLostAppsAndForceReload forceReload!"

    invoke-static {v0, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setStartLayoutLoadFromRecover()V

    :cond_56
    const-string v4, "LOST_DETECT_BACKUP_RESTORE"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->statsAppRecover(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_5b
    .catchall {:try_start_c .. :try_end_5b} :catchall_5c

    return v6

    :catchall_5c
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_68

    goto :goto_6d

    :cond_68
    const-string v2, "detectLostAppsAndForceReload e:"

    invoke-static {v2, v1, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_6d
    return v3
.end method

.method public static final detectLostAppsAndRestore(Lcom/android/launcher/Launcher;)Z
    .registers 22
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const/4 v11, 0x0

    if-nez v0, :cond_6

    return v11

    :cond_6
    :try_start_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v1, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllPmsApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllTopApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllPkgsLostInBgAllAppsList(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {v1, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllDbAppsIncludeLost(Lcom/android/launcher/Launcher;)Ljava/util/Map;

    move-result-object v10

    invoke-direct {v1, v0, v2, v3, v10}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllAppsLostInDesktop(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_41
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    sget-object v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    const-string v3, "LOST_DETECT_NORMAL"

    move-object/from16 v2, p0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object v9, v10

    move-object/from16 v20, v10

    move-object/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->detectLostApp(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;)V

    move-object/from16 v10, v20

    goto :goto_41

    :cond_67
    sget-object v9, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v10, Lw/b;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lw/b;-><init>(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v0, 0x1e

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z
    :try_end_7e
    .catchall {:try_start_6 .. :try_end_7e} :catchall_80

    const/4 v0, 0x1

    return v0

    :catchall_80
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8c

    goto :goto_93

    :cond_8c
    const-string v1, "detectLostAppsAndRestore e:"

    const-string v2, "ViewLostCheck"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_93
    return v11
.end method

.method private static final detectLostAppsAndRestore$lambda$4$lambda$3(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 16

    const-string v0, "$lostBgAllAppsMemAppPkgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lostDesktopMemAppPkgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lostDesktopMemAppItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lostDesktopDbAppItems"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lostDesktopViewAppItems"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lostFolderMemAppItems"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->restoreLostApps(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final detectLostView(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->rebindCallbacksRunInMain$lambda$24$lambda$23(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllDbAppsIncludeLost$lambda$14$lambda$13$lambda$11$lambda$10$lambda$7$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final forceReloadIfViewLost(Landroid/content/Context;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_11

    move p1, v0

    goto :goto_12

    :cond_11
    move p1, v1

    :goto_12
    if-ne p1, v0, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    if-eqz v0, :cond_31

    const-string p1, "ViewLostCheck"

    const-string v0, "forceReloadIfViewLost forceReload!"

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setStartLayoutLoadFromRecover()V

    :cond_31
    return-void
.end method

.method public static final generateDbAppInfo(ILjava/lang/String;Landroid/content/Intent;IIIIILjava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string p1, ""

    goto :goto_12

    :cond_e
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput p7, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p11, :cond_1c

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p11

    :cond_1c
    iput-object p11, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    :cond_2c
    new-instance p1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {p1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object p8, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object p9, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    :cond_37
    iput p10, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iput p12, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput p3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p4, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p5, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p6, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

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
    const-string p1, "generateDbAppInfo e:"

    const-string p2, "ViewLostCheck"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5b
    return-object v0
.end method

.method private final getAllAppsLostInDesktop(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;"
        }
    .end annotation

    const-string p0, "ViewLostCheck"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-nez v1, :cond_64

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_42

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p1, v1, v2, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    iget-object v2, p4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    const-string v3, "appInfo.componentName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v3, "appInfo.user"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_42
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_46
    :goto_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_bf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-virtual {p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, p4, v1, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object p4

    if-nez p4, :cond_46

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_64
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    new-instance v2, Lh4/j;

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_86
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8e
    :goto_8e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_bf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    new-instance v1, Lh4/j;

    invoke-virtual {p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-virtual {p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p1, v1, v2, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8e

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    :cond_bf
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_c1
    .catchall {:try_start_7 .. :try_end_c1} :catchall_c2

    goto :goto_c7

    :catchall_c2
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_c7
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_ce

    goto :goto_d3

    :cond_ce
    const-string p2, "getAllAppsLostInDesktop e:"

    invoke-static {p2, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_d3
    const-string p1, "getAllAppsLostInDesktop lostDesktopApps.size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getAllDbApps(Lcom/android/launcher/Launcher;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbExistItemApps(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final getAllDbAppsIncludeLost(Lcom/android/launcher/Launcher;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "ViewLostCheck"

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v2, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v2, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getAllDbApps(Lcom/android/launcher/Launcher;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v4, p1, v1, v2}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher/Launcher;Ljava/util/Map;Ljava/util/Map;)V

    const-wide/16 v5, 0xf

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllDbAppsIncludeLost findLostDbAppsInBgDataModel result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_50

    goto :goto_55

    :catchall_50
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_55
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_5c

    goto :goto_61

    :cond_5c
    const-string v2, "getAllDbAppsIncludeLost e:"

    invoke-static {v2, v1, p0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_61
    const-string v1, "getAllDbAppsIncludeLost: allDbAppItems.size:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", allBgDataModel.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_8a

    iget-object p1, p1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p1, :cond_8a

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-eqz p1, :cond_8a

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_8b

    :cond_8a
    const/4 p1, 0x0

    :goto_8b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getAllDbAppsIncludeLost$lambda$14$lambda$13(Lcom/android/launcher/Launcher;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11

    const-string v0, "ViewLostCheck"

    const-string v1, "$launcher"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$currentDbAppItems"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$restoredLostDbAppItems"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_11
    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findLostDbAppsInBgDataModel(Lcom/android/launcher/Launcher;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_d3

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v2

    const-class v4, Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {v2, v4}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_cb

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    const-string v6, "getInstance().curLauncherMode"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v5}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getLostAppItemIds(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;)[I

    move-result-object v5

    if-eqz v5, :cond_55

    new-instance v6, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$getAllDbAppsIncludeLost$1$executeResult$1$1$1$1$1;

    invoke-direct {v6, v5}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$getAllDbAppsIncludeLost$1$executeResult$1$1$1$1$1;-><init>([I)V

    new-instance v7, Lcom/android/exceptionmonitor/util/c;

    invoke-direct {v7, v6, v3}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllDbAppsIncludeLost restoreLostDbApps, lost dbs.size:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", existIds.size:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7a

    array-length v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_7a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", existIds:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "toString(this)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.OplusModelWriter"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, p0, v4, v1}, Lcom/android/launcher3/model/OplusModelWriter;->addItems(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a4
    :goto_a4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_cb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_a4

    new-instance v2, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    const-string v3, "cn"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v4, "itemInfo.user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    :cond_cb
    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_cd
    .catchall {:try_start_11 .. :try_end_cd} :catchall_ce

    goto :goto_d3

    :catchall_ce
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :cond_d3
    :goto_d3
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_da

    goto :goto_df

    :cond_da
    const-string p1, "getAllDbAppsIncludeLost findLostDbAppsInBgDataModel e:"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_df
    return-void
.end method

.method private static final getAllDbAppsIncludeLost$lambda$14$lambda$13$lambda$11$lambda$10$lambda$7$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getAllPkgsLostInBgAllAppsList(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;)",
            "Ljava/util/List<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "not_reload_extra_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isNotDetectLostApps()Z

    move-result v2

    const-string v3, "ViewLostCheck"

    if-eqz v2, :cond_32

    if-nez v0, :cond_32

    const-string p2, "getAllPkgsLostInBgAllAppsList lostBgAllAppsPkgs failed, because is load extra workspace xml!"

    invoke-static {v3, p2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0

    :cond_32
    const-string v0, "getAllBgAllAppsList: allBgAllAppsList.size:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    if-eqz v1, :cond_4f

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5a
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5e
    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_ca

    const-string/jumbo v1, "packageName"

    if-eqz v0, :cond_8f

    :try_start_67
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p1, v2, v4}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInBgAllAppsList(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v2

    if-nez v2, :cond_5e

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lh4/j;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_8f
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_93
    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-virtual {p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInBgAllAppsList(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    if-nez v0, :cond_93

    invoke-virtual {p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lh4/j;

    invoke-virtual {p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    invoke-direct {v2, v0, p3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_c7
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_c9
    .catchall {:try_start_67 .. :try_end_c9} :catchall_ca

    goto :goto_cf

    :catchall_ca
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_cf
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_d6

    goto :goto_db

    :cond_d6
    const-string p2, "getAllPkgsLostInBgAllAppsList e:"

    invoke-static {p2, p1, v3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_db
    const-string p1, "getAllPkgsLostInBgAllAppsList lostBgAllAppsPkgs.size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getAllPmsApps(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v4

    invoke-static {p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    const-string v2, "app.model"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.OplusLauncherModel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherModel;->getNewUpdatedAppsManager()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher/NewUpdatedAppsManager;->loadNewUpdatedAppPkgNames()V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAllAppsInner(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/launcher3/OplusAppFilter;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher/NewUpdatedAppsManager;Lcom/android/launcher3/icons/IconCache;)Ljava/util/List;

    move-result-object v0

    const-string v1, "loadAllAppsInner(context…UpdatedAppsManager, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/o;

    iget-object v1, v1, Lh4/o;->b:Ljava/lang/Object;

    const-string/jumbo v2, "userInfoListTriple.second"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p1, v3, v4}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isPackageShouldShow(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_64

    const-string v3, "appInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_83
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_85
    .catchall {:try_start_5 .. :try_end_85} :catchall_86

    goto :goto_8b

    :catchall_86
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_8b
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_92

    goto :goto_99

    :cond_92
    const-string v0, "getAllPmsApps e:"

    const-string v1, "ViewLostCheck"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_99
    return-object p0
.end method

.method private final getAllTopApps(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    sget-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->mTopApps:[Ljava/lang/String;

    if-eqz v0, :cond_36

    const/4 v1, 0x0

    array-length v2, v0

    :goto_b
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    sget-object v4, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const-string/jumbo v6, "myUserHandle()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p1, v3, v5}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getPackageAppList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    const-string v6, "MULTI_USER_HANDLE"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p1, v3, v5}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getPackageAppList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_33
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_38

    goto :goto_3d

    :cond_36
    const/4 p1, 0x0

    goto :goto_3d

    :catchall_38
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_3d
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "ViewLostCheck"

    if-nez p1, :cond_46

    goto :goto_4b

    :cond_46
    const-string v1, "getAllTopApps e:"

    invoke-static {v1, p1, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4b
    const-string p1, "getAllTopApps: allTopAppList.size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    sget-object p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->mLauncherRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private final getPackageAppList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher/OplusLauncherAppsCompat;->getLauncherAppsActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    const-string v0, "getInstance(context).get…tivityList(pkgName, user)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isPackageShouldShow(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const-string v2, "lais.componentName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3e
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_46
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4d

    goto :goto_54

    :cond_4d
    const-string p2, "getPackageAppList e:"

    const-string p3, "ViewLostCheck"

    invoke-static {p2, p1, p3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_54
    return-object p0
.end method

.method private final getPackageCardList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-direct {p2, p1, p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_1d

    :catchall_18
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1d
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_24

    goto :goto_2b

    :cond_24
    const-string p2, "getPackageCardList e:"

    const-string p3, "ViewLostCheck"

    invoke-static {p2, p1, p3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2b
    return-object p0
.end method

.method public static final getSearchAppList(Ljava/util/List;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    if-nez v0, :cond_7

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0

    :cond_7
    sget-object v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v12

    if-nez v12, :cond_12

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0

    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v12, v0, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getSearchApps(Lcom/android/launcher/Launcher;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v12, v0, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getSearchPkgsLostInBgAllAppsList(Lcom/android/launcher/Launcher;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    invoke-direct {v1, v12, v0, v3, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getSearchAppsLostInDesktop(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    sget-object v2, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    const-string v4, "ICON_LOCATION"

    const/4 v10, 0x0

    move-object v3, v12

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v11}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->detectLostApp(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;)V

    goto :goto_4e

    :cond_6d
    sget-object v2, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->restoreLostApps(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_7c
    .catchall {:try_start_12 .. :try_end_7c} :catchall_7d

    return-object v0

    :catchall_7d
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_89

    goto :goto_90

    :cond_89
    const-string v1, "getSearchAppList e:"

    const-string v2, "ViewLostCheck"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_90
    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0
.end method

.method private final getSearchApps(Lcom/android/launcher/Launcher;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/locateaction/FindItemInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher/locateaction/FindItemInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isPackageShouldShow(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1, v1, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInBgAllAppsList(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2e
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_36
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "ViewLostCheck"

    if-nez p1, :cond_3f

    goto :goto_44

    :cond_3f
    const-string p3, "getSearchApps e:"

    invoke-static {p3, p1, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_44
    const-string p1, "getSearchApps: searchAppList.size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getSearchAppsLostInDesktop(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;"
        }
    .end annotation

    const-string p0, "ViewLostCheck"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher/locateaction/FindItemInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p3, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/launcher/locateaction/FindItemInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, p4, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_15

    new-instance p3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-direct {p3, v1, p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_39
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3d
    :goto_3d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/locateaction/FindItemInfo;

    new-instance v2, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/launcher/locateaction/FindItemInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, p4}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_68

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v1, :cond_68

    goto :goto_69

    :cond_68
    move v1, v3

    :goto_69
    if-eqz v1, :cond_3d

    invoke-virtual {v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p1, v1, v3, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3d

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_7d
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_7f
    .catchall {:try_start_7 .. :try_end_7f} :catchall_80

    goto :goto_85

    :catchall_80
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_85
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8c

    goto :goto_91

    :cond_8c
    const-string p2, "getSearchAppsLostInDesktop e:"

    invoke-static {p2, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_91
    const-string p1, "getSearchAppsLostInDesktop lostDesktopApps.size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSearchPkgsLostInBgAllAppsList(Lcom/android/launcher/Launcher;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/locateaction/FindItemInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher/locateaction/FindItemInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findAppInBgAllAppsList(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v0, v0, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "mPackageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lh4/j;

    invoke-direct {v1, v0, p3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_36
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_3e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "ViewLostCheck"

    if-nez p1, :cond_47

    goto :goto_4c

    :cond_47
    const-string p3, "getSearchPkgsLostInBgAllAppsList e:"

    invoke-static {p3, p1, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4c
    const-string p1, "getSearchPkgsLostInBgAllAppsList lostBgAllAppsPkgs.size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final locateSearchItemInWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;
    .registers 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemType"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_d3

    if-nez p1, :cond_e

    goto/16 :goto_d3

    :cond_e
    sget-object v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_17

    return-object v0

    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "cellLayouts"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v1

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v6, :cond_b2

    aget-object v9, v1, v7

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_47
    if-ge v11, v10, :cond_ae

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_50

    return-object v0

    :cond_50
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v12, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I
    :try_end_62
    .catchall {:try_start_17 .. :try_end_62} :catchall_bf

    const/16 v13, -0x65

    const-string v14, "container.getChildAt(i)"

    const/4 v15, 0x1

    if-ne v12, v13, :cond_8e

    :try_start_69
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v12, 0xca

    if-eq v0, v12, :cond_aa

    const/16 v12, 0xc9

    if-eq v0, v12, :cond_aa

    if-eq v0, v15, :cond_aa

    const/4 v12, 0x3

    if-ne v0, v12, :cond_83

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_83
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_8e
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v12, 0x3

    if-ne v0, v12, :cond_9e

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_9e
    if-eq v0, v15, :cond_aa

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_aa
    :goto_aa
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x0

    goto :goto_47

    :cond_ae
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    goto :goto_3a

    :cond_b2
    sget-object v1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->locateSearchViewInContainer(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_be
    .catchall {:try_start_69 .. :try_end_be} :catchall_bf

    return-object v0

    :catchall_bf
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_cb

    goto :goto_d2

    :cond_cb
    const-string v1, "locateSearchItemInWorkspace e:"

    const-string v2, "ViewLostCheck"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_d2
    const/4 v0, 0x0

    :cond_d3
    :goto_d3
    return-object v0
.end method

.method private final locateSearchViewInContainer(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
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

    const/4 p0, 0x0

    :try_start_1
    invoke-static {p1, p5, p6, p7}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInViewList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    invoke-static {p2, p5, p6, p7}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInViewList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    invoke-static {p3, p5, p6}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInFolderList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    return-object p1

    :cond_16
    invoke-static {p4, p5, p6}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->findViewInFolderList(Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    if-eqz p1, :cond_1d

    return-object p1

    :cond_1d
    move-object p1, p0

    goto :goto_24

    :catchall_1f
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_24
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2b

    goto :goto_32

    :cond_2b
    const-string p2, "locateSearchViewInContainer e:"

    const-string p3, "ViewLostCheck"

    invoke-static {p2, p1, p3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_32
    return-object p0
.end method

.method private final rebindCallbacksRunInMain(Lcom/android/launcher/Launcher;)V
    .registers 4

    :try_start_0
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/exceptionmonitor/util/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/exceptionmonitor/util/a;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_22

    :cond_1a
    const-string/jumbo p1, "rebindCallbacksRunInMain e:"

    const-string v0, "ViewLostCheck"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method private static final rebindCallbacksRunInMain$lambda$24$lambda$23(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ViewLostCheck"

    const-string/jumbo v1, "restoreLostApps, desktopViewItems lost items"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    return-void
.end method

.method private final restoreLostApps(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;>;",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    new-instance v9, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;

    move-object v1, v9

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;-><init>(Ljava/util/List;Lcom/android/launcher/Launcher;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private final setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_9

    :cond_4
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_9
    sput-object p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->mLauncherRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final statsAppRecover(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_13

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/statistics/LauncherStatistics;->statsAppRecover(Ljava/lang/String;ILjava/util/List;)V

    :cond_13
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_2a

    :cond_22
    const-string/jumbo p1, "statsAppRecover e:"

    const-string p2, "ViewLostCheck"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method public static final statsAppRecoverWhenBackupRestore(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recoverItemInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v2, :cond_14

    if-eqz v1, :cond_14

    new-instance v3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-direct {v3, v2, v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_45
    sget-object p1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    const-string v1, "LOST_DETECT_BACKUP_RESTORE"

    invoke-direct {p1, p0, v1, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->statsAppRecover(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4f

    goto :goto_54

    :catchall_4f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_54
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5b

    goto :goto_63

    :cond_5b
    const-string/jumbo p1, "statsAppRecoverWhenBackupRestore e:"

    const-string v0, "ViewLostCheck"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_63
    return-void
.end method

.method private final testRemoveAppsInfo(Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V
    .registers 19

    const-string v1, "ViewLostCheck"

    :try_start_2
    sget-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v10

    if-nez v10, :cond_b

    return-void

    :cond_b
    move-object v2, p1

    move-object v3, p2

    invoke-direct {v0, v10, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getPackageAppList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testRemoveAppsInfo, user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; cn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object v2, v10

    move v5, p3

    move v6, p4

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInAllAppsView(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZLjava/lang/Boolean;)V

    :cond_61
    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object v2, v10

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V

    goto :goto_15

    :cond_76
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_78
    .catchall {:try_start_2 .. :try_end_78} :catchall_79

    goto :goto_7e

    :catchall_79
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_7e
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_85

    goto :goto_8b

    :cond_85
    const-string/jumbo v2, "testRemoveAppsInfo e:"

    invoke-static {v2, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8b
    return-void
.end method

.method public static synthetic testRemoveAppsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V
    .registers 20

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v5, v1

    goto :goto_8

    :cond_7
    move v5, p3

    :goto_8
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_e

    move v6, v1

    goto :goto_f

    :cond_e
    move v6, p4

    :goto_f
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_15

    move v7, v1

    goto :goto_16

    :cond_15
    move v7, p5

    :goto_16
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1c

    move v8, v1

    goto :goto_1e

    :cond_1c
    move/from16 v8, p6

    :goto_1e
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_27

    :cond_25
    move-object/from16 v9, p7

    :goto_27
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveAppsInfo(Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V

    return-void
.end method

.method public static final testRemoveCardView([Ljava/lang/String;)V
    .registers 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "args"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Li4/k;->y([Ljava/lang/Object;)Ly4/d;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    move-object v2, v1

    check-cast v2, Li4/f0;

    invoke-virtual {v2}, Li4/f0;->nextInt()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    aget-object v2, v0, v2

    const-string/jumbo v4, "testRemoveCardView, componentName:"

    const-string v5, "ViewLostCheck"

    invoke-static {v4, v2, v5}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v3, [C

    const/16 v5, 0x2f

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/4 v5, 0x6

    invoke-static {v2, v4, v6, v6, v5}, Lk7/q;->N(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    sget-object v7, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    const-string/jumbo v2, "myUserHandle()"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf0

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveCardsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_f

    :cond_5c
    return-void
.end method

.method private final testRemoveCardsInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V
    .registers 20

    const-string v1, "ViewLostCheck"

    :try_start_2
    sget-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-direct {v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v10

    if-nez v10, :cond_b

    return-void

    :cond_b
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct {v0, v10, p1, p2, p3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getPackageCardList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testRemoveCardsInfo, user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; cn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object v2, v10

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v7}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInAllAppsView(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZLjava/lang/Boolean;)V

    :cond_63
    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object v2, v10

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v2 .. v9}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V

    goto :goto_16

    :cond_79
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_7b
    .catchall {:try_start_2 .. :try_end_7b} :catchall_7c

    goto :goto_81

    :catchall_7c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_81
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_88

    goto :goto_8e

    :cond_88
    const-string/jumbo v2, "testRemoveCardsInfo e:"

    invoke-static {v2, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8e
    return-void
.end method

.method public static synthetic testRemoveCardsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v7, v2

    goto :goto_b

    :cond_9
    move/from16 v7, p4

    :goto_b
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    move v8, v2

    goto :goto_13

    :cond_11
    move/from16 v8, p5

    :goto_13
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_19

    move v9, v2

    goto :goto_1b

    :cond_19
    move/from16 v9, p6

    :goto_1b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_21

    move v10, v2

    goto :goto_23

    :cond_21
    move/from16 v10, p7

    :goto_23
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_2c

    :cond_2a
    move-object/from16 v11, p8

    :goto_2c
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveCardsInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V

    return-void
.end method

.method public static final testRemovePackage([Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->y([Ljava/lang/Object;)Ly4/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    move-object v1, v0

    check-cast v1, Li4/f0;

    invoke-virtual {v1}, Li4/f0;->nextInt()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    sget-object v3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    aget-object v4, p0, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v11, 0x3c

    const/4 v12, 0x0

    move-object v5, p1

    invoke-static/range {v3 .. v12}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveAppsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_13

    :cond_35
    return-void
.end method

.method public static final testRemovePackageApp([Ljava/lang/String;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->y([Ljava/lang/Object;)Ly4/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v1, v0

    check-cast v1, Li4/f0;

    invoke-virtual {v1}, Li4/f0;->nextInt()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    sget-object v3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    aget-object v4, p0, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const-string/jumbo v1, "myUserHandle()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x74

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveAppsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_d

    :cond_37
    return-void
.end method

.method public static final testRemovePackageDb([Ljava/lang/String;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->y([Ljava/lang/Object;)Ly4/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v1, v0

    check-cast v1, Li4/f0;

    invoke-virtual {v1}, Li4/f0;->nextInt()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    sget-object v3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    aget-object v4, p0, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const-string/jumbo v1, "myUserHandle()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x5c

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveAppsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_d

    :cond_37
    return-void
.end method

.method public static final testRemovePackageExceptDb([Ljava/lang/String;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->y([Ljava/lang/Object;)Ly4/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    move-object v1, v0

    check-cast v1, Li4/f0;

    invoke-virtual {v1}, Li4/f0;->nextInt()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    sget-object v3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    aget-object v4, p0, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const-string/jumbo v1, "myUserHandle()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v11, 0x3c

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveAppsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_d

    :cond_38
    return-void
.end method

.method public static final testRemovePackageItem([Ljava/lang/String;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->y([Ljava/lang/Object;)Ly4/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v1, v0

    check-cast v1, Li4/f0;

    invoke-virtual {v1}, Li4/f0;->nextInt()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    sget-object v3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    aget-object v4, p0, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const-string/jumbo v1, "myUserHandle()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x6c

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveAppsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_d

    :cond_37
    return-void
.end method

.method public static final testRemovePackageView([Ljava/lang/String;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->y([Ljava/lang/Object;)Ly4/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v1, v0

    check-cast v1, Li4/f0;

    invoke-virtual {v1}, Li4/f0;->nextInt()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    sget-object v3, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    aget-object v4, p0, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const-string/jumbo v1, "myUserHandle()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x78

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemoveAppsInfo$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Ljava/lang/String;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_d

    :cond_37
    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->setLauncher(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03006a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->mTopApps:[Ljava/lang/String;

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->setLauncher(Lcom/android/launcher/Launcher;)V

    return-void
.end method

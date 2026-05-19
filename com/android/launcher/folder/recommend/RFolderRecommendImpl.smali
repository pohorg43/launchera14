.class public final Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/RRecommendItf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRFolderRecommendImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RFolderRecommendImpl.kt\ncom/android/launcher/folder/recommend/RFolderRecommendImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,418:1\n766#2:419\n857#2,2:420\n766#2:422\n857#2,2:423\n1855#2,2:425\n1855#2,2:427\n766#2:429\n857#2,2:430\n*S KotlinDebug\n*F\n+ 1 RFolderRecommendImpl.kt\ncom/android/launcher/folder/recommend/RFolderRecommendImpl\n*L\n184#1:419\n184#1:420,2\n187#1:422\n187#1:423,2\n315#1:425,2\n376#1:427,2\n407#1:429\n407#1:430,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$Companion;

.field public static final FOLDER_MORE_APPS_APP_NUM:Ljava/lang/String; = "folder_more_apps_app_num"

.field public static final FOLDER_MUST_PLAY_APP_NUM:Ljava/lang/String; = "folder_must_play_app_num"

.field public static final FOLDER_TOOLS_APP_NUM:Ljava/lang/String; = "folder_tools_app_num"

.field private static final KEY_MOREAPPS_ENABLE:Ljava/lang/String; = "moreAppsEnable"

.field private static final KEY_TOOLS_ENABLE:Ljava/lang/String; = "toolsEnable"

.field private static final RECOMMEND_DEFAULT:I = 0x1

.field private static final RECOMMEND_DISABLED:I = 0x0

.field private static final RECOMMEND_ENABLED:I = 0x1

.field private static final SETTINGS_RECOMMEND:Ljava/lang/String; = "recommend_ad"

.field private static final SUPPORT_MUST_PLAY_VERSION_CODE:I = 0x2259c

.field public static final TAG:Ljava/lang/String; = "RFolderRecommendImpl"


# instance fields
.field private final context:Landroid/content/Context;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mMoreAppsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSettingsRecommendObserver:Landroid/database/ContentObserver;

.field private final mToolsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->Companion:Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mToolsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMoreAppsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$mSettingsRecommendObserver$1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$mSettingsRecommendObserver$1;-><init>(Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mSettingsRecommendObserver:Landroid/database/ContentObserver;

    :try_start_33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "KEY_MOREAPPS_RECOMMEND_ENABLE"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_45

    move p1, v2

    goto :goto_46

    :cond_45
    move p1, v1

    :goto_46
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_49
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_33 .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mToolsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "KEY_TOOLS_RECOMMEND_ENABLE"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5f

    move v0, v2

    goto :goto_60

    :cond_5f
    move v0, v1

    :goto_60
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_63
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_49 .. :try_end_63} :catch_63

    :catch_63
    const p1, 0x7f120480

    invoke-static {p1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_6a
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_79

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_7a

    :cond_79
    move p1, v1

    :goto_7a
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v3, 0x2259c

    if-lt p1, v3, :cond_82

    goto :goto_83

    :cond_82
    move v2, v1

    :goto_83
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_86} :catch_87

    goto :goto_95

    :catch_87
    move-exception p1

    const-string/jumbo v0, "not found app e:"

    const-string v2, "RFolderRecommendImpl"

    invoke-static {v0, p1, v2}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_95
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->updateFolderRecommendSwitch$lambda$3(Ljava/lang/String;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->clearRecommendBySettings$lambda$8$lambda$7(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V

    return-void
.end method

.method private static final clearRecommendBySettings$lambda$8$lambda$7(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V
    .registers 5

    const-string v0, "$folderInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isEnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItems(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;Z)V

    iget-boolean p1, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_36

    iget-object p1, p3, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    iget-object p2, p3, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_36

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher/Launcher;->disbandFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_36
    return-void
.end method

.method private final isRecommendFolderExist(I)Lh4/j;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lh4/j<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const-string v0, "bgDataModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_10
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v1

    const-string v2, "getInstance(LauncherApplication.getAppContext())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "folders"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-ne v3, p1, :cond_28

    iget-object v0, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq p1, v3, :cond_7d

    const/4 v3, 0x4

    if-eq p1, v3, :cond_5d

    const/4 v3, 0x6

    if-eq p1, v3, :cond_49

    goto :goto_90

    :cond_49
    const-string p1, "folder_must_play_app_num"

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_90

    iget-object p1, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const-string p1, "folder_must_play_app_num"

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    goto :goto_90

    :cond_5d
    const-string p1, "folder_tools_app_num"

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_70

    iget-object p1, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const-string v0, "folder_tools_app_num"

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    :cond_70
    new-instance v0, Lh4/j;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_10 .. :try_end_7b} :catchall_cf

    monitor-exit p0

    return-object v0

    :cond_7d
    :try_start_7d
    const-string p1, "folder_more_apps_app_num"

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_90

    iget-object p1, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const-string p1, "folder_more_apps_app_num"

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    :cond_90
    :goto_90
    const-string p1, "FolderRecommendUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appInfo items: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lh4/j;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_bf
    .catchall {:try_start_7d .. :try_end_bf} :catchall_cf

    monitor-exit p0

    return-object p1

    :cond_c1
    monitor-exit p0

    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_cf
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final updateFolderRecommendSwitch$lambda$3(Ljava/lang/String;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V
    .registers 9

    const-string v0, "RFolderRecommendImpl"

    const-string v1, "$jsonArgs"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v2, 0x1

    :try_start_14
    const-string/jumbo v3, "storeFolderContentRecommendEnable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    move v3, p0

    :goto_20
    invoke-virtual {p1, v3}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->enableFolderContentRecommend(Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_2b

    :catch_24
    move-exception v3

    const-string/jumbo v4, "store is not support recommend!!! e = "

    invoke-static {v4, v3, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2b
    :try_start_2b
    const-string/jumbo v3, "moreAppsEnable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p1, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMoreAppsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v3, v2, :cond_38

    move v5, v2

    goto :goto_39

    :cond_38
    move v5, p0

    :goto_39
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p1, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "KEY_MOREAPPS_RECOMMEND_ENABLE"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4b} :catch_4c

    goto :goto_53

    :catch_4c
    move-exception v3

    const-string/jumbo v4, "store get more apps key e = "

    invoke-static {v4, v3, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_53
    :try_start_53
    const-string/jumbo v3, "toolsEnable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p1, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mToolsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v1, v2, :cond_5f

    move p0, v2

    :cond_5f
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p1, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "KEY_TOOLS_RECOMMEND_ENABLE"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_71} :catch_72

    goto :goto_79

    :catch_72
    move-exception p0

    const-string/jumbo p1, "store get tools key e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_79
    return-void
.end method


# virtual methods
.method public clearRecommendBySettings(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 6

    const-string v0, "folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v2, "folderInfo.contents"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_18

    :cond_33
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_41

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/common/debug/c;

    invoke-direct {v3, p1, v1, v0, p0}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_41
    return-void
.end method

.method public enableFolderContentRecommend(Z)V
    .registers 6

    const-string v0, "enableFolderContentRecommend: enable:"

    const-string v1, "RFolderRecommendImpl"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_12

    const-string v1, "1"

    goto :goto_14

    :cond_12
    const-string v1, "0"

    :goto_14
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "folder_content_recommend_enable"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/config/FeatureOption;->initSupportFolderContentRecommendFeature(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_32

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-eqz p1, :cond_32

    move p1, v1

    goto :goto_33

    :cond_32
    move p1, v2

    :goto_33
    invoke-static {p1}, Lcom/android/common/config/FeatureOption;->setSIsSupportFolderContentRecommend(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-eq v0, p1, :cond_5c

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-nez p1, :cond_57

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusLauncherModel;->onMarketUninstall()V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    goto :goto_5c

    :cond_57
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getFolderRecommendDescribe(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "folderInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->toolsEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2c

    move v4, v2

    goto :goto_2d

    :cond_2c
    move v4, v1

    :goto_2d
    if-eqz v4, :cond_18

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_33
    invoke-static {v0}, Li4/v;->j0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :cond_37
    sget-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mustPlayEnable()Z

    move-result v0

    if-nez v0, :cond_67

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_48
    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5c

    move v4, v2

    goto :goto_5d

    :cond_5c
    move v4, v1

    :goto_5d
    if-eqz v4, :cond_48

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_63
    invoke-static {v0}, Li4/v;->j0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :cond_67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_77

    const-string p0, "RFolderRecommendImpl"

    const-string p1, "Error get recommend msg, only 1 recommend was tools folder"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_d6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_84

    return-object v3

    :cond_84
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1204e8

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v1, v3, v2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b2
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1204e9

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d6
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1204e7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFolderRecommendSwitchBean(IILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "switchBeanList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->isRecommendFolderExist(I)Lh4/j;

    move-result-object p0

    iget-object v0, p0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;-><init>(II)V

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->setAppNum(I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_28
    new-instance p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;-><init>(II)V

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_31
    return-void
.end method

.method public getResourceByIndex(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    const p1, 0x7f120274

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    const p1, 0x7f120276

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isRecommendEnable()Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "recommend_ad"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_12} :catch_16

    if-ne p0, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :catch_16
    :goto_16
    return v0
.end method

.method public marketVersionUpdate()V
    .registers 9

    const-string v0, "RFolderRecommendImpl"

    const v1, 0x7f120480

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_b
    iget-object v4, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    iget-object v4, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v5, 0x2259c

    if-lt v1, v5, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    :goto_25
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_29

    goto :goto_35

    :catch_29
    move-exception v1

    const-string/jumbo v4, "not found app e:"

    invoke-static {v4, v1, v0}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_35
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a1

    const-string v1, "clear must play recommend data"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v0, :cond_79

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-eqz v0, :cond_79

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_72

    move v6, v2

    goto :goto_73

    :cond_72
    move v6, v3

    :goto_73
    if-eqz v6, :cond_5e

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_79
    move-object v4, v1

    :cond_7a
    if-eqz v4, :cond_84

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_84

    :cond_83
    move v2, v3

    :cond_84
    :goto_84
    if-nez v2, :cond_a1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_a1

    sget-object v2, Lm7/l1;->a:Lm7/l1;

    sget-object v3, Lm7/y0;->a:Lm7/y0;

    sget-object v3, Lr7/v;->a:Lm7/b2;

    new-instance v5, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$marketVersionUpdate$1$1;

    invoke-direct {v5, v0, p0, v1}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$marketVersionUpdate$1$1;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_a1
    return-void
.end method

.method public mustPlayEnable()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mMustPlayEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_1f

    const-string/jumbo v0, "recommend_ad"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mSettingsRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1f
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mSettingsRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_15
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public toolsEnable()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->mToolsEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public updateFolderRecommendSwitch(Ljava/lang/String;)V
    .registers 4

    const-string v0, "jsonArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v1, p1, p0}, Landroidx/constraintlayout/motion/widget/c;-><init>(Ljava/lang/String;Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

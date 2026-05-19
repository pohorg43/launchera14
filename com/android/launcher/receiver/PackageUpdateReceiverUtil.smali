.class public final Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;

.field private static final TAG:Ljava/lang/String; = "PackageUpdateReceiverUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;

    invoke-direct {v0}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;-><init>()V

    sput-object v0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->INSTANCE:Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleDisableGlobalSearch(Ljava/lang/String;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->handleDisableGlobalSearch(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$reInitFolderContentRecommendState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->reInitFolderContentRecommendState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public static final synthetic access$reInitSearchEntryState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->reInitSearchEntryState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public static final synthetic access$resolveShelfAppState(ILjava/lang/String;Lcom/android/launcher3/LauncherModel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->resolveShelfAppState(ILjava/lang/String;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private static final handleDisableGlobalSearch(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7f120481

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const v0, 0x7f12047b

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3a

    :cond_1a
    invoke-static {p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3a

    const-string p0, "PackageUpdateReceiverUtil"

    const-string/jumbo v0, "removing default global search type."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "launcher_slide_down_type"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3a
    return-void
.end method

.method public static final handlePackageChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/LauncherModel;Z)V
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userHandle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    new-instance v9, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Landroid/content/Intent;ZLandroid/os/UserHandle;Ll4/d;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p4, 0x3

    const/4 p5, 0x0

    move-object p0, v0

    move-object p3, v9

    invoke-static/range {p0 .. p5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method private static final reInitFolderContentRecommendState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    invoke-static {p0}, Lcom/android/common/config/FeatureOption;->initSupportFolderContentRecommendFeature(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->initPreAssetPath(Landroid/content/Context;)Ljava/lang/String;

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->marketVersionUpdate()V

    :cond_1f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eq v0, v1, :cond_5f

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    const-string/jumbo v0, "reInitFolderContentRecommendState, try to notify, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_36

    move p1, v1

    goto :goto_37

    :cond_36
    move p1, v2

    :goto_37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageUpdateReceiverUtil"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-nez p1, :cond_5c

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusLauncherModel;->onMarketUninstall()V

    invoke-static {p0, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    goto :goto_5f

    :cond_5c
    invoke-static {p0, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private static final reInitSearchEntryState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSearchEntry()Z

    move-result v0

    invoke-static {p0}, Lcom/android/common/config/FeatureOption;->initSupportSearchEntryFeature(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSearchEntry()Z

    move-result p0

    if-eq v0, p0, :cond_35

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const-string/jumbo p1, "reInitSearchEntryState, try to notify, "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "PackageUpdateReceiverUtil"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->changeSupportState()V

    :cond_35
    return-void
.end method

.method private static final resolveShelfAppState(ILjava/lang/String;Lcom/android/launcher3/LauncherModel;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "com.coloros.assistantscreen"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    const-string p2, "getLauncher  = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "PackageUpdateReceiverUtil"

    invoke-static {p2, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p1, :cond_33

    sget-object p2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {p2, p0}, Lcom/android/common/util/PackageUtils$Companion;->isApplicationEnabled(I)Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-virtual {p1, p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setShelAppEnableState(Z)V

    :cond_33
    return-void
.end method

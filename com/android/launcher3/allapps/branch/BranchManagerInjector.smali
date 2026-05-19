.class public final Lcom/android/launcher3/allapps/branch/BranchManagerInjector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/IBranchCommon;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchManagerInjector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchManagerInjector.kt\ncom/android/launcher3/allapps/branch/BranchManagerInjector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,691:1\n1855#2,2:692\n1855#2:706\n288#2,2:707\n1856#2:709\n1855#2:710\n288#2,2:711\n1856#2:713\n288#2,2:714\n766#2:716\n857#2,2:717\n1855#2,2:719\n151#3,6:694\n163#3,6:700\n*S KotlinDebug\n*F\n+ 1 BranchManagerInjector.kt\ncom/android/launcher3/allapps/branch/BranchManagerInjector\n*L\n454#1:692,2\n564#1:706\n568#1:707,2\n564#1:709\n600#1:710\n604#1:711,2\n600#1:713\n654#1:714,2\n677#1:716\n677#1:717,2\n683#1:719,2\n477#1:694,6\n479#1:700,6\n*E\n"
    }
.end annotation


# static fields
.field private static final APPHUB_PKG_LIST:Ljava/lang/String; = "packageList"

.field private static final BASE_ENABLE:Z = true

.field private static final BRANCH_PRIVACY_POLICY_URL_LENGTH:I = 0x2

.field private static final DEBUG_DISABLE_DEVICE_PROTECT:Ljava/lang/String; = "disable_device_protect"

.field private static final DEBUG_PROTECT_LIMIT_TIME:Ljava/lang/String; = "protect_limit_time"

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

.field private static final KEY_ADD_BRANCH_FOR_RLM:Ljava/lang/String; = "Key_add_branch_for_rlm"

.field private static final KEY_BRANCH_SEARCH_COUNT:Ljava/lang/String; = "key_branch_search_count"

.field private static final KEY_BRANCH_SUGGEST_LINK_COUNT:Ljava/lang/String; = "key_branch_suggest_link_count"

.field private static final KEY_GET_APPHUB_LIST_ONCE:Ljava/lang/String; = "key_get_apphub_list_once"

.field private static final KEY_GET_MARKET_LIST_ONCE:Ljava/lang/String; = "key_get_marketList_once"

.field private static final KEY_GET_PAI_LIST_ONCE:Ljava/lang/String; = "key_get_pai_list_once"

.field private static final KEY_PAI_APP_PKG_NAME_LIST:Ljava/lang/String; = "key_pai_app_pkg_name_list"

.field private static final MARKET_PKG_LIST:Ljava/lang/String; = "pkg_list"

.field private static final METHOD_GETEXPOSEPKGLIST:Ljava/lang/String; = "method_getExposePkgList"

.field private static final METHOD_GETINSTALLEDPACKAGELIST:Ljava/lang/String; = "getInstalledPackageList"

.field private static final SHOULD_ADD_WORKSPACE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BranchManagerInjector"

.field private static mBranchInitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mConfig:Lcom/android/launcher3/allapps/branch/BranchRusConfig;

.field private static mDisableDeviceProtected:Z

.field private static mLimitTime:J

.field private static mNotificationRl:Ljava/lang/Runnable;

.field private static mProtectExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    const-string v0, "com.applovin.array.rewardsplus"

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->SHOULD_ADD_WORKSPACE:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchInitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mConfig:Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mProtectExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/text/SpannableString;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initPolicySpanForPersonalizeSearchSwitch$lambda$9(Landroid/text/SpannableString;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initBranchManager$lambda$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->refreshBranchSearchNotification$lambda$2(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method private final getAppHubList(Lcom/android/launcher/Launcher;Ljava/util/Set;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "BranchManagerInjector"

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    sget-object v1, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v1}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "key_get_apphub_list_once"

    const/4 v2, 0x1

    if-eqz v0, :cond_b2

    :try_start_13
    const-string v0, "content://com.applovin.array.apphub.oplus.delivery.provider/app"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "getInstalledPackageList"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string/jumbo v3, "packageList"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_34

    :cond_33
    move-object v3, v6

    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppHubList result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pkgList "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5b

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v0, v2

    :goto_5c
    if-nez v0, :cond_b5

    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_65
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v2, p1, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_93

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_94

    :cond_93
    move-object v4, v6

    :goto_94
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    goto :goto_9c

    :cond_9b
    move-object v3, v6

    :goto_9c
    if-eqz v3, :cond_65

    :cond_9e
    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_a6} :catch_a7

    goto :goto_65

    :catch_a7
    move-exception p1

    const-string p2, "e : "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_b5

    :cond_b2
    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method private final getMarketList(Lcom/android/launcher/Launcher;Ljava/util/Set;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "BranchManagerInjector"

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    sget-object v1, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v1}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "key_get_marketList_once"

    const/4 v2, 0x1

    if-eqz v0, :cond_b3

    :try_start_13
    const-string v0, "content://com.heytap.market.StartingGuideProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "method_getExposePkgList"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string/jumbo v3, "pkg_list"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_35

    :cond_34
    move-object v3, v6

    :goto_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMarketList result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pkgList "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5c

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v0, 0x0

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v0, v2

    :goto_5d
    if-nez v0, :cond_b6

    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_66
    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v2, p1, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_94

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_95

    :cond_94
    move-object v4, v6

    :goto_95
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    goto :goto_9d

    :cond_9c
    move-object v3, v6

    :goto_9d
    if-eqz v3, :cond_66

    :cond_9f
    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_a7} :catch_a8

    goto :goto_66

    :catch_a8
    move-exception p1

    const-string p2, "e : "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_b6

    :cond_b3
    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_b6
    :goto_b6
    return-void
.end method

.method private final getPAIList(Lcom/android/launcher/Launcher;Ljava/util/Set;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-static {v0, p0}, Lcom/android/launcher3/util/PackageManagerHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    const-string v1, "auto_install"

    const-string/jumbo v2, "xml"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "BranchManagerInjector"

    if-nez v0, :cond_29

    const-string/jumbo p0, "no need to parse"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layoutId："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_get_pai_list_once"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    :try_start_44
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_de
    .catchall {:try_start_44 .. :try_end_48} :catchall_dc

    :try_start_48
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_4c
    if-eq v0, v3, :cond_d2

    if-eqz v0, :cond_c6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_55

    goto/16 :goto_cc

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "node name:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "backgroundautoinstall"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string/jumbo v0, "packageName"

    invoke-static {p0, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-static {v0}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v4, 0x0

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v4, v3

    :goto_8d
    if-nez v4, :cond_cc

    sget-object v4, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v4, p1, v0}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bc

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v6, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_b1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_b2

    :cond_b1
    move-object v6, v2

    :goto_b2
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    goto :goto_ba

    :cond_b9
    move-object v5, v2

    :goto_ba
    if-eqz v5, :cond_cc

    :cond_bc
    const-string/jumbo v4, "pkgName"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_c6
    const-string/jumbo v0, "start parse"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cc
    :goto_cc
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_d0} :catch_d9
    .catchall {:try_start_48 .. :try_end_d0} :catchall_d6

    goto/16 :goto_4c

    :cond_d2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_e9

    :catchall_d6
    move-exception p1

    move-object v2, p0

    goto :goto_ea

    :catch_d9
    move-exception p1

    move-object v2, p0

    goto :goto_df

    :catchall_dc
    move-exception p1

    goto :goto_ea

    :catch_de
    move-exception p1

    :goto_df
    :try_start_df
    const-string p0, "Error parsing layout: "

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_dc

    if-eqz v2, :cond_e9

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e9
    :goto_e9
    return-void

    :goto_ea
    if-eqz v2, :cond_ef

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_ef
    throw p1
.end method

.method public static final initBranchManager(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    new-instance v1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->setBranchUIController(Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;)V

    new-instance v1, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->setSearchAlgorithm(Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;)V

    new-instance v1, Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->setMBranchInitOpt(Lcom/android/launcher3/allapps/branch/IInitBranchCallback;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->initBranchSdk(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->updateBranchRUS(Landroid/content/Context;)V

    const-string v0, "key_is_new_device"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/common/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/common/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_39
    return-void
.end method

.method private static final initBranchManager$lambda$0(Landroid/content/Context;)V
    .registers 4

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchUtils;->isFirstBoot()Z

    move-result v0

    const-string v1, "initBranchManager: firstBoot:"

    const-string v2, "BranchManagerInjector"

    invoke-static {v1, v0, v2}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    const-string v1, "key_is_new_device"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_18
    return-void
.end method

.method public static final initBranchStatus(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_device_protect"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBranchManager: value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BranchManagerInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mDisableDeviceProtected:Z

    :cond_31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "protect_limit_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mLimitTime:J

    cmp-long p0, v3, v1

    if-eqz p0, :cond_4b

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->Companion:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;

    sget-wide v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mLimitTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;->setDEVICE_PROTECT_TIME_LIMIT(J)V

    :cond_4b
    return-void
.end method

.method private final initDefaultList(Lcom/android/launcher/Launcher;Ljava/util/Set;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    if-eqz p1, :cond_4

    sget-object p3, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->SHOULD_ADD_WORKSPACE:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_28
    return-void
.end method

.method private static final initPolicySpanForPersonalizeSearchSwitch$lambda$9(Landroid/text/SpannableString;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .registers 2

    const-string p1, "$ss"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final placeTargetAppOnSecondScreen(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_24
    invoke-static {p3, v3}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2e
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "placeTargetAppOnSecondScreenIfNeeded: packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", \n target: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " \n addAppsList "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BranchManagerInjector"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8d

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const-string v2, "create(it, null)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_82
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, p3, v0}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;I)V

    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_8d
    return-void
.end method

.method private final refreshBranchSearchNotification(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mNotificationRl:Ljava/lang/Runnable;

    if-nez p0, :cond_b

    new-instance p0, Landroidx/core/widget/b;

    invoke-direct {p0, p1}, Landroidx/core/widget/b;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mNotificationRl:Ljava/lang/Runnable;

    :cond_b
    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_27

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_27

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mNotificationRl:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mNotificationRl:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method private static final refreshBranchSearchNotification$lambda$2(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    const-string v0, "$owner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->refreshBranchSearchNotification(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->updateLockScreenVisible(Landroid/content/Context;)V

    const-string p0, "BranchManagerInjector"

    const-string v0, "finish notification check"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addToLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 6

    const-string/jumbo v0, "personalizeSearchSwitch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMethodSwitch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addSearchNotificationSwitch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherModeCategory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p4, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1e
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVodafoneCustomizer()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p4, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_27
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->rusSearchNotificationEnable()Z

    move-result p0

    if-eqz p0, :cond_36

    invoke-virtual {p4, p3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_36
    return-void
.end method

.method public featureSupport()Z
    .registers 4

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getBranchNavigatorUrl()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_13

    :cond_f
    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOpenMarketVersion(Landroid/content/Context;)Z

    move-result v0

    :goto_13
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v2, :cond_3e

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3e

    if-eqz v0, :cond_3e

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isGProductSeries:Z

    if-nez p0, :cond_3e

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchUtils;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchUtils;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->getMemorySupport()Z

    move-result p0

    if-eqz p0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    return v1
.end method

.method public final getMBranchInitCompleted()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchInitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getMBranchRUSSupport()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getMConfig()Lcom/android/launcher3/allapps/branch/BranchRusConfig;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mConfig:Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    return-object p0
.end method

.method public final getMProtectExpired()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mProtectExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getMUserUnlockedReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public getPersonalizeSearchSetting()Z
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    const-string/jumbo v0, "oplus_customize_personalized_search_switch_status"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/oplus/compat/provider/SettingsNative$System;->getIntForUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    move p0, v1

    goto :goto_1d

    :catch_11
    move-exception v0

    const-string v1, "getPersonalizeSearchSetting:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BranchManagerInjector"

    invoke-static {v0, v1, v2}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return p0
.end method

.method public getSearchCount(Landroid/content/Context;)I
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_9

    const-string v0, "key_branch_search_count"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    :cond_9
    return p0
.end method

.method public getSuggestLinkCount(Landroid/content/Context;)I
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_9

    const-string v0, "key_branch_suggest_link_count"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    :cond_9
    return p0
.end method

.method public gotoDrawerSetting(Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-nez p0, :cond_10

    return-void

    :cond_10
    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_20

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_20

    return-void

    :cond_20
    sget-object p0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {p0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result p0

    if-nez p0, :cond_30

    const-string p0, "BranchManagerInjector"

    const-string p1, "draw setting. clickable false."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.launcher.intent.action_DRAWER_MODE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initPersonalizeSearchSwitchAndInputMethodSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "personalizeSearchSwitch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMethodSwitch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addSearchNotificationSwitch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherModeCategory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initPolicySpanForPersonalizeSearchSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3a
    invoke-virtual {p2, p6}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p3, p6}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p4, p6}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p5, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p5, p3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p5, p4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public initPolicySpanForPersonalizeSearchSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 16

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "personalizeSearchSwitch"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "template"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_48
    const/16 v9, 0x25

    const/4 v10, -0x1

    if-ge v8, v6, :cond_5c

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_55

    move v11, v1

    goto :goto_56

    :cond_55
    move v11, v7

    :goto_56
    if-eqz v11, :cond_59

    goto :goto_5d

    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_5c
    move v8, v10

    :goto_5d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v6, v10

    if-ltz v6, :cond_78

    :goto_64
    add-int/lit8 v11, v6, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_6e

    move v12, v1

    goto :goto_6f

    :cond_6e
    move v12, v7

    :goto_6f
    if-eqz v12, :cond_73

    move v10, v6

    goto :goto_78

    :cond_73
    if-gez v11, :cond_76

    goto :goto_78

    :cond_76
    move v6, v11

    goto :goto_64

    :cond_78
    :goto_78
    new-instance v6, Landroid/text/SpannableString;

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v2, v9, v7

    aput-object v0, v9, v1

    const-string v0, "format(format, *args)"

    invoke-static {v9, v3, p0, v0}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getBranchNavigatorUrl()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int v2, v8, v4

    const/16 v3, 0x21

    invoke-virtual {v6, p0, v8, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getBranchNavigatorUrl()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int/2addr v10, v4

    add-int/lit8 p1, v10, -0x4

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v6, p0, p1, v10, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p0, Landroidx/core/view/a;

    invoke-direct {p0, v6}, Landroidx/core/view/a;-><init>(Landroid/text/SpannableString;)V

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    return-void
.end method

.method public isDrawModeActivity(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "currentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "com.android.launcher.settings.LauncherDrawerModeSettingsActivity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInBranchHintArea(Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z
    .registers 9

    const-string p0, "ev"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_9f

    if-eqz p2, :cond_9f

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    if-lez v1, :cond_9f

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.allapps.AllAppsGridAdapter.AppsGridLayoutManager<com.android.launcher3.taskbar.allapps.TaskbarAllAppsContext>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-ltz v2, :cond_97

    if-lt v2, v1, :cond_36

    goto :goto_97

    :cond_36
    if-eqz p0, :cond_3d

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    goto :goto_3e

    :cond_3d
    const/4 p0, -0x1

    :goto_3e
    const/high16 v1, 0x800000

    if-eq p0, v1, :cond_47

    const/high16 v1, 0x4000000

    if-eq p0, v1, :cond_47

    goto :goto_9f

    :cond_47
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_4e

    return v0

    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-interface {p3}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p3

    invoke-virtual {p3, p0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    aget p3, v1, v0

    aget v2, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v2, 0x1

    aget v4, v1, v2

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    int-to-float p3, p3

    cmpl-float p3, v1, p3

    if-lez p3, :cond_9f

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    int-to-float v1, v3

    cmpg-float p3, p3, v1

    if-gez p3, :cond_9f

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    int-to-float v1, v4

    cmpl-float p3, p3, v1

    if-lez p3, :cond_9f

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_9f

    return v2

    :cond_97
    :goto_97
    const-string/jumbo p0, "position is illegal: "

    const-string p1, "BranchManagerInjector"

    invoke-static {p0, v2, p1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9f
    :goto_9f
    return v0
.end method

.method public launcherSupport(Landroid/content/Context;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_f

    return p0

    :cond_f
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-eq v0, v1, :cond_1c

    return p0

    :cond_1c
    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_38

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_38

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 p0, 0x1

    :cond_38
    :goto_38
    return p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    const-string/jumbo v2, "onCreate feature :"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->featureSupport()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",initCompleted:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchInitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isUserUnlocked : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", context:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p0, p1, Landroid/content/Context;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchManagerInjector"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result p0

    if-eqz p0, :cond_81

    if-eqz v1, :cond_69

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchInitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_69

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->initBranchSdk(Landroid/content/Context;)V

    goto :goto_7a

    :cond_69
    new-instance p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector$onCreate$1;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector$onCreate$1;-><init>()V

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_7a
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->enableReceiver(Landroid/content/Context;Z)V

    goto :goto_8e

    :cond_81
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_88

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_88
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->enableReceiver(Landroid/content/Context;Z)V

    :goto_8e
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    const-string p0, "BranchManagerInjector"

    const-string v0, "launcher onDestroy"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_1a

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_1a
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->enableReceiver(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->release()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mNotificationRl:Ljava/lang/Runnable;

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    const-string v0, "BranchManagerInjector"

    const-string v1, "launcher onResume"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSearchNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "key_enable_branch_search_notification"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->refreshBranchSearchNotification(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_2b
    return-void
.end method

.method public placeAllPAIAppsInWorkspace(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "launcher"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "apps"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v12, "key_pai_app_pkg_name_list"

    invoke-interface {v4, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const-string v5, ""

    invoke-static {v1, v12, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_34

    invoke-static {v5}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_32

    goto :goto_34

    :cond_32
    move v8, v7

    goto :goto_35

    :cond_34
    :goto_34
    move v8, v6

    :goto_35
    if-nez v8, :cond_4f

    const-string/jumbo v8, "pkgNameList"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v6, [C

    const/16 v8, 0x2c

    aput-char v8, v6, v7

    const/4 v8, 0x6

    invoke-static {v5, v6, v7, v7, v8}, Lk7/q;->N(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4f
    const-string v5, "key_get_marketList_once"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMarketList(Lcom/android/launcher/Launcher;Ljava/util/Set;Ljava/util/List;)V

    :cond_5a
    const-string v5, "key_get_pai_list_once"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getPAIList(Lcom/android/launcher/Launcher;Ljava/util/Set;Ljava/util/List;)V

    :cond_65
    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initDefaultList(Lcom/android/launcher/Launcher;Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6f

    return-void

    :cond_6f
    const-string/jumbo v4, "pkgList = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v5, ",\n"

    move-object v4, v3

    invoke-static/range {v4 .. v11}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BranchManagerInjector"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v13, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9c
    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_b1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_b2

    :cond_b1
    const/4 v5, 0x0

    :goto_b2
    invoke-static {v13, v5}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-static {v13}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_c0
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v14, ","

    invoke-static/range {v13 .. v20}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v12, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putStringCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->placeTargetAppOnSecondScreen(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public protectExpired()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mDisableDeviceProtected:Z

    if-nez p0, :cond_f

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mProtectExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public removeFromLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 5

    const-string/jumbo p0, "personalizeSearchSwitch"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inputMethodSwitch"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "addSearchNotificationSwitch"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcherModeCategory"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p4, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p4, p3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public rusSearchNotificationEnable()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mConfig:Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMSearchNotificationEnable()Z

    move-result p0

    return p0
.end method

.method public rusSupportBranch()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public rusSupportBubble()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mConfig:Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMBubbleEnable()Z

    move-result p0

    return p0
.end method

.method public final setMBranchInitCompleted(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchInitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setMBranchRUSSupport(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setMConfig(Lcom/android/launcher3/allapps/branch/BranchRusConfig;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mConfig:Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    return-void
.end method

.method public final setMProtectExpired(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mProtectExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setMUserUnlockedReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public setSearchCount(Landroid/content/Context;Z)V
    .registers 7

    if-eqz p1, :cond_40

    const-string p0, "BranchManagerInjector"

    const/4 v0, 0x0

    const-string v1, "key_branch_search_count"

    if-eqz p2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSearchCount reset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_40

    :cond_22
    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSearchCount count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, v1, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_40
    :goto_40
    return-void
.end method

.method public setSuggestLinkCount(Landroid/content/Context;Z)V
    .registers 6

    if-eqz p1, :cond_31

    const-string/jumbo p0, "setSuggestLinkClickCount reset : "

    const-string v0, "BranchManagerInjector"

    invoke-static {p0, p2, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 p0, 0x0

    const-string v1, "key_branch_suggest_link_count"

    if-eqz p2, :cond_13

    invoke-static {p1, v1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_31

    :cond_13
    invoke-static {p1, v1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSuggestLinkClickCount count : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p1, v1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public syncDrawModeSettingSwitchStatus(Landroid/content/Context;)V
    .registers 9

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result p0

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initAddNewAppsToWorkspaceSwitchState ota: "

    const-string v2, "BranchManagerInjector"

    const-string v3, "Key_add_branch_for_rlm"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_37

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;Z)V

    invoke-static {p1, v3, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_37
    const-string p0, "key_is_new_device"

    invoke-static {p1, p0, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_8c

    const-string p0, "key_device_protected_expired"

    invoke-static {p1, p0, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mProtectExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8c

    :cond_4a
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8c

    invoke-static {v1, p0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;Z)V

    const-string v1, "is_show_indicated_app_for_drawer_mode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setShowIndicatedAppForDrawerMode(Landroid/content/Context;Z)V

    :cond_63
    const-string/jumbo p0, "show_inputmethod_in_drawer_switch"

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {p1, p0, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6f
    invoke-static {p1, v3, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isCommonGDPRRegion()Z

    move-result p0

    if-eqz p0, :cond_8c

    :try_start_7a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "oplus_customize_personalized_search_switch_status"

    invoke-static {p0, p1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_84} :catch_85

    goto :goto_8c

    :catch_85
    move-exception p0

    const-string/jumbo p1, "syncDrawModeSettingSwitchStatus enableSearch:"

    invoke-static {p1, p0, v2}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public unregisterReceiverSafely(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_c

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_c
    return-void
.end method

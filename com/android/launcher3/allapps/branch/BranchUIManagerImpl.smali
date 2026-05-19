.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;
.super Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/branch/AbsBranchUIManager<",
        "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchUIManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1503:1\n1864#2,3:1504\n1864#2,2:1507\n1864#2,3:1509\n1866#2:1512\n766#2:1513\n857#2,2:1514\n1855#2,2:1516\n766#2:1518\n857#2,2:1519\n1855#2,2:1521\n766#2:1523\n857#2,2:1524\n1855#2,2:1526\n1864#2,3:1528\n1864#2,3:1531\n766#2:1534\n857#2,2:1535\n1864#2,3:1537\n777#2:1540\n788#2:1541\n1864#2,2:1542\n789#2,2:1544\n1866#2:1546\n791#2:1547\n*S KotlinDebug\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl\n*L\n487#1:1504,3\n512#1:1507,2\n517#1:1509,3\n512#1:1512\n529#1:1513\n529#1:1514,2\n531#1:1516,2\n675#1:1518\n675#1:1519,2\n683#1:1521,2\n720#1:1523\n720#1:1524,2\n866#1:1526,2\n1040#1:1528,3\n1137#1:1531,3\n1171#1:1534\n1171#1:1535,2\n1315#1:1537,3\n1326#1:1540\n1326#1:1541\n1326#1:1542,2\n1326#1:1544,2\n1326#1:1546\n1326#1:1547\n*E\n"
    }
.end annotation


# static fields
.field private static final APP_STORE:Ljava/lang/String; = "app_store"

.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;

.field public static final DEFAULT_DEVICE_PROTECT_TIME_LIMIT:J = 0x240c8400L

.field private static DEVICE_PROTECT_TIME_LIMIT:J = 0x0L

.field private static final DISABLE_SHOW_SUGGEST_LINK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERIOD_DAY:J = 0x5265c00L

.field private static final SEARCH_SHORTCUT_LIMIT_2:I = 0x2

.field private static final SEARCH_SHORTCUT_LIMIT_4:I = 0x4

.field private static final SHOW_ALL_APP_MODE_DELAY:J = 0xdcL

.field private static final SHOW_KEYBOARD_THRESHOLD:F = 0.54f

.field private static final SUGGEST_APP_SIZE_LIMIT:I = 0x5

.field private static final SUGGEST_LINKS_SIZE_LIMIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BranchUIManagerImpl"

.field private static final TYPE_SUGGESTED_APP:Ljava/lang/String; = "suggested_app"

.field private static final TYPE_ZERO_STATE:Ljava/lang/String; = "zero_state"


# instance fields
.field private mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

.field private mContext:Lcom/android/launcher3/Launcher;

.field private mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

.field private mIsReIntoDrawer:Z

.field private mLauncherApp:Landroid/content/pm/LauncherApps;

.field private mOpenAllAppsFromNotification:Z

.field private mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

.field private mRefreshBranchData:Z

.field private mRunningTime:J

.field private mSearchShortcutIconSize:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->Companion:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.dialer"

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v1}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-virtual {v1}, Lcom/android/common/util/PackageCompatUtils$Companion;->getGameCenterPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DISABLE_SHOW_SUGGEST_LINK:Ljava/util/List;

    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DEVICE_PROTECT_TIME_LIMIT:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;-><init>(Lcom/android/launcher3/allapps/SearchUiManager;Lcom/android/launcher3/allapps/branch/AbsBranchResponse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mIsReIntoDrawer:Z

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mRefreshBranchData:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$37$lambda$36(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$filterBranchEntity(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/util/List;ILjava/util/List;I)Ljava/util/List;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->filterBranchEntity(Ljava/util/List;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEVICE_PROTECT_TIME_LIMIT$cp()J
    .registers 2

    sget-wide v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DEVICE_PROTECT_TIME_LIMIT:J

    return-wide v0
.end method

.method public static final synthetic access$getDISABLE_SHOW_SUGGEST_LINK$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DISABLE_SHOW_SUGGEST_LINK:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMLauncherApp$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Landroid/content/pm/LauncherApps;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mLauncherApp:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method public static final synthetic access$setDEVICE_PROTECT_TIME_LIMIT$cp(J)V
    .registers 2

    sput-wide p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DEVICE_PROTECT_TIME_LIMIT:J

    return-void
.end method

.method public static synthetic applyBranchDrawable$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;IIILjava/lang/Object;)V
    .registers 15

    and-int/lit8 p7, p6, 0x8

    const/4 v0, -0x1

    if-eqz p7, :cond_7

    move v5, v0

    goto :goto_8

    :cond_7
    move v5, p4

    :goto_8
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_e

    move v6, v0

    goto :goto_f

    :cond_e
    move v6, p5

    :goto_f
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->applyBranchDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/ui/BranchEntity;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchLink$lambda$24(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/ui/BranchEntity;Landroid/view/View;)V

    return-void
.end method

.method private final bindBranchAutoSuggest(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 5

    const-string v0, "BranchUIManagerImpl"

    const-string v1, " bindBranchAutoSuggest"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchCommonAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type io.branch.search.BranchAutoSuggestResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/branch/search/BranchAutoSuggestResult;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchLabelsView;

    invoke-virtual {p2}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object p2

    const-string v0, "autoSuggest.suggestions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$1;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$1;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setLabels(Ljava/util/List;Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;)V

    new-instance p2, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$2;-><init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setOnLabelClickListener(Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;)V

    return-void
.end method

.method private final bindBranchLink(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 11

    iget-object v0, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchCommonAppInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a00f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0102

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v5, "null cannot be cast to non-null type io.branch.search.ui.BranchEntity"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/branch/search/ui/BranchEntity;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lio/branch/search/ui/BranchEntity;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "BranchUIManagerImpl"

    invoke-static {v6, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/search/ui/BranchEntity;->c()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v2

    const-string v6, "iconIV"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-direct {p0, v2, v1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadEntityImage(Lio/branch/search/ui/ImageLoadingStrategy;Landroid/widget/ImageView;I)V

    sget-object p2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const-string v6, "mContext"

    if-nez v1, :cond_7f

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_7f
    invoke-virtual {p2, v1, v5}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const/16 v1, 0x8

    const/4 v7, 0x0

    if-nez p2, :cond_90

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lio/branch/search/ui/BranchEntity;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_a0

    :cond_90
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p2, :cond_9b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9c

    :cond_9b
    move-object v2, p2

    :goto_9c
    invoke-static {v5, v2}, Lcom/android/launcher3/allapps/branch/BranchUtils;->getLabelByPkgName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_a0
    if-eqz p2, :cond_ab

    invoke-static {p2}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a9

    goto :goto_ab

    :cond_a9
    move v2, v7

    goto :goto_ac

    :cond_ab
    :goto_ab
    const/4 v2, 0x1

    :goto_ac
    if-eqz v2, :cond_b2

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b8

    :cond_b2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/launcher/folder/recommend/j;

    invoke-direct {p2, v5, p0, v0}, Lcom/android/launcher/folder/recommend/j;-><init>(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/ui/BranchEntity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final bindBranchLink$lambda$24(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/ui/BranchEntity;Landroid/view/View;)V
    .registers 6

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$entity"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    const-string v1, "mContext"

    if-nez p3, :cond_16

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_16
    invoke-static {p0, p3}, Lcom/android/launcher3/allapps/branch/BranchUtils;->needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_28

    iget-object p2, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p2, :cond_24

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_24
    invoke-static {p2, p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->jump(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_33

    :cond_28
    iget-object p0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_30

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_30
    invoke-virtual {p2, p0}, Lio/branch/search/ui/BranchEntity;->e(Landroid/content/Context;)Lio/branch/search/BranchError;

    :goto_33
    iget-object p0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_3b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3c

    :cond_3b
    move-object v0, p0

    :goto_3c
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setSuggestLinkCount(Landroid/content/Context;Z)V

    return-void
.end method

.method private final bindBranchSearchEmpty(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 12

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a042d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/4 v3, 0x0

    const-string v4, "mContext"

    if-nez v2, :cond_85

    new-instance v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    iget-object v5, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v5, :cond_32

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_32
    invoke-direct {v2, v5}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    iget-object v5, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v5, :cond_3f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_3f
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v5, :cond_52

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_52
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v6, :cond_6d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_6d
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_85
    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v2, :cond_8c

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8c
    iget-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p2, :cond_94

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v3

    :cond_94
    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v2, :cond_9c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_9c
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/allapps/SearchUiManager;->getQuery()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mContext.appsView.searchUiManager.query"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->getEmptySearchMarketIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 v2, 0x8

    const-string v5, "BranchUIManagerImpl"

    if-nez p2, :cond_c1

    const-string/jumbo p0, "searchMarketIntent is null"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_c1
    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v6, :cond_c9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_c9
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "searchMarketIntent.getPackage()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/launcher3/allapps/branch/BranchManager;->getEmptySearchMarketString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_e2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_e2
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<@[FlexibleNullability] com.android.launcher3.Launcher?>"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v6, :cond_fe

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ff

    :cond_fe
    move-object v3, v6

    :goto_ff
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_117

    const-string/jumbo p0, "marketIntent is null"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_117
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v2, "infoList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_124
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_124

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_14e
    new-instance p1, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final bindBranchSearchEmpty$lambda$23(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_10

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final bindBranchShortcut$lambda$30$lambda$27$lambda$25(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V
    .registers 7

    const-string p3, "$this_run"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_1a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1a
    invoke-static {p3, v0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_31

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_28

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v1, p1

    :goto_29
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->jump(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    :cond_31
    iget-object p0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_39

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3a

    :cond_39
    move-object v1, p0

    :goto_3a
    invoke-virtual {p2, v1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    :goto_3d
    return-void
.end method

.method private static final bindBranchShortcut$lambda$30$lambda$27$lambda$26(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_10

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_10
    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindBranchShortcut$lambda$30$lambda$28(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalAppResult;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_12

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindBranchShortcut$lambda$30$lambda$29(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 4

    const-string p3, "$this_run"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLocalLinkResult;

    iget-object p1, p2, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_1f

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1f
    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private final bindBranchShortcut2BubbleTv(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 27

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0329

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a011c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a00f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/ImageView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a00f5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    iget-object v0, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchCommonAppInfo"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lh4/o;

    const v6, 0x7f0a011d

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0121

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh4/o;

    const v5, 0x7f0a011e

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0122

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh4/o;

    const v2, 0x7f0a011f

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a0123

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v1, v3, v2, v5}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh4/o;

    const v2, 0x7f0a0120

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0124

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/16 v16, 0x0

    const-string v17, "mContext"

    if-nez v1, :cond_d6

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v1, v16

    :cond_d6
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<@[FlexibleNullability] com.android.launcher3.Launcher?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    if-eqz v12, :cond_103

    iget-object v2, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v2, :cond_f5

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v16

    :cond_f5
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060495

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    :cond_103
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lio/branch/search/BranchLocalAppResult;

    if-eqz v2, :cond_419

    move-object v8, v0

    check-cast v8, Lio/branch/search/BranchLocalAppResult;

    const-string v2, "bindBranchShortcut2BubbleTv: packageName:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", label:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BranchUIManagerImpl"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v4, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v4, :cond_13b

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v4, v16

    :cond_13b
    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_290

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_162

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v12}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v12, v5}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    goto/16 :goto_401

    :cond_162
    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    if-lt v0, v5, :cond_16f

    move v0, v5

    goto :goto_170

    :cond_16f
    const/4 v0, 0x2

    :goto_170
    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    if-le v0, v1, :cond_17e

    move/from16 v18, v1

    goto :goto_180

    :cond_17e
    move/from16 v18, v0

    :goto_180
    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    const-string v1, "links"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move v0, v6

    :goto_18e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v20, v6, 0x1

    if-ltz v6, :cond_288

    move-object v4, v1

    check-cast v4, Lio/branch/search/BranchLocalLinkResult;

    const-string v1, "branchLocalLinkResult"

    if-nez v6, :cond_1fd

    invoke-virtual {v12}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v12, v5}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4}, Lio/branch/search/BranchBaseLinkResult;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f0a0341

    invoke-virtual {v13, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_1cf

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v16

    goto :goto_1d0

    :cond_1cf
    move-object v2, v0

    :goto_1d0
    const-string v0, "iconIV"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    const/16 v21, 0xc

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v3, v13

    move-object/from16 v23, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v21

    move-object/from16 v21, v13

    move-object v13, v8

    move-object/from16 v8, v22

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;IIIILjava/lang/Object;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/b;

    const/4 v1, 0x1

    move-object/from16 v8, v23

    invoke-direct {v0, v13, v9, v8, v1}, Lcom/android/launcher3/allapps/branch/b;-><init>(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;I)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_27c

    :cond_1fd
    move-object/from16 v21, v13

    move-object v13, v8

    move-object v8, v4

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_20c

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_20c

    goto :goto_20d

    :cond_20c
    const/4 v7, 0x0

    :goto_20d
    if-eqz v7, :cond_27c

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/android/launcher3/allapps/a;

    invoke-direct {v2, v8, v9}, Lcom/android/launcher3/allapps/a;-><init>(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget v2, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0a0341

    invoke-virtual {v0, v3, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_252

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v16

    goto :goto_253

    :cond_252
    move-object v2, v0

    :goto_253
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget v5, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mSearchShortcutIconSize:I

    iget v7, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    move-object/from16 v0, p0

    move-object v1, v8

    move v4, v5

    move v10, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable(Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;III)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v8}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27c
    :goto_27c
    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x1

    move-object/from16 v10, p2

    move-object v8, v13

    move/from16 v6, v20

    move-object/from16 v13, v21

    goto/16 :goto_18e

    :cond_288
    invoke-static {}, Li4/o;->k()V

    throw v16

    :cond_28c
    move/from16 v6, v18

    goto/16 :goto_401

    :cond_290
    move-object/from16 v21, v13

    move-object v13, v8

    invoke-virtual {v12, v6}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v5, v21

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "allApps"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b5
    :goto_2b5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v7, :cond_2ec

    iget-object v7, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ec

    iget-object v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v6, :cond_2e7

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2e7

    const/4 v6, 0x1

    goto :goto_2e8

    :cond_2e7
    const/4 v6, 0x0

    :goto_2e8
    if-eqz v6, :cond_2ec

    const/4 v6, 0x1

    goto :goto_2ed

    :cond_2ec
    const/4 v6, 0x0

    :goto_2ed
    if-eqz v6, :cond_2b5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b5

    :cond_2f3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_334

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_321

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchPkgHack;

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mLauncherApp:Landroid/content/pm/LauncherApps;

    if-nez v7, :cond_31d

    const-string/jumbo v7, "mLauncherApp"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v7, v16

    :cond_31d
    invoke-virtual {v1, v4, v6, v7, v2}, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->filterHackPkg(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/LauncherApps;Ljava/util/List;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    :cond_321
    if-eqz v1, :cond_334

    invoke-virtual {v12}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v12, v1}, Lcom/android/launcher3/OplusBubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    new-instance v1, Lcom/android/launcher3/allapps/branch/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v9, v2}, Lcom/android/launcher3/allapps/branch/c;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v12, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    goto :goto_35b

    :cond_334
    const/4 v1, 0x0

    const-string v2, "bindBranchShortcut2BubbleTv: no filter app info"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    const/4 v2, 0x4

    invoke-virtual {v12, v2}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v5}, Lio/branch/search/BranchBaseAppResult;->loadIconDrawable(Landroid/widget/ImageView;)V

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/launcher3/allapps/branch/d;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v9, v3}, Lcom/android/launcher3/allapps/branch/d;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v2

    :goto_35b
    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_366

    goto :goto_367

    :cond_366
    const/4 v0, 0x2

    :goto_367
    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_373

    move v7, v1

    goto :goto_374

    :cond_373
    move v7, v0

    :goto_374
    const/4 v0, 0x0

    move v8, v0

    :goto_376
    if-ge v8, v7, :cond_400

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/android/launcher3/allapps/branch/a;

    const/4 v2, 0x1

    invoke-direct {v1, v13, v8, v9, v2}, Lcom/android/launcher3/allapps/branch/a;-><init>(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v10, p2

    iget v1, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0341

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "links[i]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/branch/search/BranchLocalLinkResult;

    iget-object v0, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_3cb

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v16

    goto :goto_3cc

    :cond_3cb
    move-object v2, v0

    :goto_3cc
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget v5, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mSearchShortcutIconSize:I

    iget v6, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    move-object/from16 v0, p0

    move v4, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable(Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;III)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v13}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_376

    :cond_400
    move v6, v7

    :goto_401
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_405
    if-ge v6, v0, :cond_419

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/o;

    iget-object v1, v1, Lh4/o;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_405

    :cond_419
    return-void
.end method

.method private static final bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$33$lambda$31(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V
    .registers 7

    const-string p3, "$this_run"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_1a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1a
    invoke-static {p3, v0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_31

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_28

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v1, p1

    :goto_29
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->jump(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    :cond_31
    iget-object p0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_39

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3a

    :cond_39
    move-object v1, p0

    :goto_3a
    invoke-virtual {p2, v1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    :goto_3d
    return-void
.end method

.method private static final bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$33$lambda$32(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_10

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_10
    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$37$lambda$35(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalAppResult;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_12

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$37$lambda$36(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalAppResult;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_12

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$38(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 4

    const-string p3, "$this_run"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLocalLinkResult;

    iget-object p1, p2, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_1f

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1f
    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private final bindSuggestedApp(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 16

    iget-object v0, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchCommonAppInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0125

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0329

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a0355

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4e

    move v8, v6

    goto :goto_4f

    :cond_4e
    move v8, v7

    :goto_4f
    if-eqz v8, :cond_5b

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5b
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lio/branch/search/ui/BranchEntity;

    const-string v4, "mContext"

    const-string v8, "iconIV"

    const/16 v9, 0x8

    const v10, 0x7f0a0341

    const-string v11, "BranchUIManagerImpl"

    if-eqz v3, :cond_d8

    const-string v3, "bindSuggestedApp : entity: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v6, v0

    check-cast v6, Lio/branch/search/ui/BranchEntity;

    invoke-virtual {v6}, Lio/branch/search/ui/BranchEntity;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lio/branch/search/ui/BranchEntity;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v6}, Lio/branch/search/ui/BranchEntity;->c()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-direct {p0, v1, v5, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadEntityImage(Lio/branch/search/ui/ImageLoadingStrategy;Landroid/widget/ImageView;I)V

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v3, :cond_b3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_b3
    invoke-virtual {v1, v3, p2}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c9

    invoke-virtual {v6}, Lio/branch/search/ui/BranchEntity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "app_store"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c9

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_cc

    :cond_c9
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_cc
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/allapps/branch/e;

    invoke-direct {v1, p2, p0, v0, v7}, Lcom/android/launcher3/allapps/branch/e;-><init>(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_166

    :cond_d8
    instance-of v3, v0, Lio/branch/search/BranchLocalAppResult;

    if-eqz v3, :cond_114

    const-string v3, "bindSuggestedApp BranchLocalAppResult : "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v4}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p2, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, v10, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lio/branch/search/BranchBaseAppResult;->loadIconDrawable(Landroid/widget/ImageView;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/launcher3/allapps/branch/c;

    invoke-direct {p2, v0, p0, v6}, Lcom/android/launcher3/allapps/branch/c;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_166

    :cond_114
    instance-of v3, v0, Lio/branch/search/BranchLocalLinkResult;

    if-eqz v3, :cond_166

    const-string v3, "bindSuggestedApp BranchLocalLinkResult  : "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v6, v0

    check-cast v6, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v6}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_14a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_14a
    move-object v4, v1

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget v8, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, v6

    move v6, v1

    invoke-static/range {v2 .. v10}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;IIIILjava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/launcher3/allapps/branch/d;

    const/4 v1, 0x2

    invoke-direct {p2, v0, p0, v1}, Lcom/android/launcher3/allapps/branch/d;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_166
    :goto_166
    return-void
.end method

.method private static final bindSuggestedApp$lambda$17(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V
    .registers 6

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    const-string v1, "mContext"

    if-nez p3, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_11
    invoke-static {p0, p3}, Lcom/android/launcher3/allapps/branch/BranchUtils;->needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_24

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    move-object v0, p1

    :goto_20
    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->jump(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_32

    :cond_24
    check-cast p2, Lio/branch/search/ui/BranchEntity;

    iget-object p0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_2e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object v0, p0

    :goto_2f
    invoke-virtual {p2, v0}, Lio/branch/search/ui/BranchEntity;->e(Landroid/content/Context;)Lio/branch/search/BranchError;

    :goto_32
    return-void
.end method

.method private static final bindSuggestedApp$lambda$18(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalAppResult;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_12

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindSuggestedApp$lambda$19(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 6

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p0}, Lio/branch/search/BranchLocalLinkResult;->getParentAppResult()Lio/branch/search/BranchLocalAppResult;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_1b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1b
    invoke-static {p2, v0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_36

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_29

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object v1, p1

    :goto_2a
    invoke-virtual {p0}, Lio/branch/search/BranchLocalLinkResult;->getParentAppResult()Lio/branch/search/BranchLocalAppResult;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->jump(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_42

    :cond_36
    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_3e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    move-object v1, p1

    :goto_3f
    invoke-virtual {p0, v1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    :goto_42
    return-void
.end method

.method private final bindSuggestedApp2BubbleTv(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchCommonAppInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0329

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v3, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0126

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0128

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a0125

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v7, 0x7f0a0355

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v7, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const-string v8, "mContext"

    if-nez v7, :cond_51

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_51
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f060495

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    iget-object v7, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v7, :cond_67

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_67
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v7

    const-string/jumbo v11, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<@[FlexibleNullability] com.android.launcher3.Launcher?>"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object v11

    instance-of v1, v11, Lio/branch/search/ui/BranchEntity;

    const-string/jumbo v12, "mLauncherApp"

    const-string v13, "iconIV"

    const-string v14, "allApps"

    const-string v15, "BranchUIManagerImpl"

    if-eqz v1, :cond_1df

    const-string v1, "bindSuggestedApp2BubbleTv : entity: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v10, v11

    check-cast v10, Lio/branch/search/ui/BranchEntity;

    move-object/from16 v16, v5

    invoke-virtual {v10}, Lio/branch/search/ui/BranchEntity;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pkg name:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_105

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/android/launcher3/model/data/AppInfo;

    move-object/from16 v17, v5

    iget v5, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v5, :cond_f8

    iget-object v5, v14, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v8

    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fa

    iget-object v5, v14, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v5, :cond_f3

    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->user(Lio/branch/search/ui/BranchEntity;)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_f3

    const/4 v5, 0x1

    goto :goto_f4

    :cond_f3
    const/4 v5, 0x0

    :goto_f4
    if-eqz v5, :cond_fa

    const/4 v5, 0x1

    goto :goto_fb

    :cond_f8
    move-object/from16 v18, v8

    :cond_fa
    const/4 v5, 0x0

    :goto_fb
    if-eqz v5, :cond_100

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto :goto_bd

    :cond_105
    move-object/from16 v18, v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_172

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_157

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_141

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    const-string v8, "bindSuggestedApp2BubbleTv: compnent:"

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v14, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", type="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v8, v7, v15}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_11f

    :cond_141
    sget-object v5, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchPkgHack;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->user(Lio/branch/search/ui/BranchEntity;)Landroid/os/UserHandle;

    move-result-object v8

    iget-object v14, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mLauncherApp:Landroid/content/pm/LauncherApps;

    if-nez v14, :cond_153

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v14, 0x0

    :cond_153
    invoke-virtual {v5, v7, v8, v14, v1}, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->filterHackPkg(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/LauncherApps;Ljava/util/List;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v5

    :cond_157
    if-eqz v5, :cond_172

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/OplusBubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/c;

    const/4 v1, 0x2

    invoke-direct {v0, v11, v9, v1}, Lcom/android/launcher3/allapps/branch/c;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_172
    const-string/jumbo v1, "query local all apps empty"

    invoke-static {v15, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v10}, Lio/branch/search/ui/BranchEntity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0341

    invoke-virtual {v3, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v10}, Lio/branch/search/ui/BranchEntity;->c()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-direct {v9, v1, v3, v0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadEntityImage(Lio/branch/search/ui/ImageLoadingStrategy;Landroid/widget/ImageView;I)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v2, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v2, :cond_1b0

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1b0
    invoke-virtual {v1, v2, v0}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c9

    invoke-virtual {v10}, Lio/branch/search/ui/BranchEntity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_store"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c9

    const/4 v1, 0x0

    move-object/from16 v5, v16

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1d0

    :cond_1c9
    move-object/from16 v5, v16

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1d0
    move-object/from16 v10, p1

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/launcher3/allapps/branch/e;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v9, v11, v3}, Lcom/android/launcher3/allapps/branch/e;-><init>(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_326

    :cond_1df
    move-object/from16 v18, v8

    instance-of v1, v11, Lio/branch/search/BranchLocalAppResult;

    if-eqz v1, :cond_2c2

    const-string v1, "bindSuggestedApp2BubbleTv BranchLocalAppResult : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v8, v11

    check-cast v8, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_208
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/android/launcher3/model/data/AppInfo;

    iget v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v15, :cond_241

    iget-object v15, v14, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_243

    iget-object v7, v14, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v7, :cond_23c

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v14, 0x1

    if-ne v7, v14, :cond_23c

    const/4 v7, 0x1

    goto :goto_23d

    :cond_23c
    const/4 v7, 0x0

    :goto_23d
    if-eqz v7, :cond_243

    const/4 v7, 0x1

    goto :goto_244

    :cond_241
    move-object/from16 v16, v7

    :cond_243
    const/4 v7, 0x0

    :goto_244
    if-eqz v7, :cond_249

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_249
    move-object/from16 v7, v16

    goto :goto_208

    :cond_24c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v13, 0x3

    if-nez v7, :cond_291

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_277

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchPkgHack;

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mLauncherApp:Landroid/content/pm/LauncherApps;

    if-nez v5, :cond_273

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_273
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->filterHackPkg(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/LauncherApps;Ljava/util/List;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    :cond_277
    if-eqz v0, :cond_326

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/OplusBubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/d;

    invoke-direct {v0, v11, v9, v13}, Lcom/android/launcher3/allapps/branch/d;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_291
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v8}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a0341

    invoke-virtual {v3, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v8, v3}, Lio/branch/search/BranchBaseAppResult;->loadIconDrawable(Landroid/widget/ImageView;)V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/allapps/branch/c;

    invoke-direct {v1, v11, v9, v13}, Lcom/android/launcher3/allapps/branch/c;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_326

    :cond_2c2
    instance-of v1, v11, Lio/branch/search/BranchLocalLinkResult;

    if-eqz v1, :cond_326

    const-string v1, "bindSuggestedApp2BubbleTv BranchLocalLinkResult : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v7, v11

    check-cast v7, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v7}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v7}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0341

    invoke-virtual {v3, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v1, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_308

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_308
    move-object v2, v1

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    const/16 v8, 0xc

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v7, v8

    move-object v8, v12

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;IIIILjava/lang/Object;)V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/allapps/branch/d;

    const/4 v2, 0x4

    invoke-direct {v1, v11, v9, v2}, Lcom/android/launcher3/allapps/branch/d;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_326
    :goto_326
    return-void
.end method

.method private static final bindSuggestedApp2BubbleTv$lambda$11(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/ui/BranchEntity;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_12

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0, p1}, Lio/branch/search/ui/BranchEntity;->e(Landroid/content/Context;)Lio/branch/search/BranchError;

    return-void
.end method

.method private static final bindSuggestedApp2BubbleTv$lambda$12(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V
    .registers 6

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    const-string v1, "mContext"

    if-nez p3, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_11
    invoke-static {p0, p3}, Lcom/android/launcher3/allapps/branch/BranchUtils;->needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_24

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    move-object v0, p1

    :goto_20
    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->jump(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_32

    :cond_24
    check-cast p2, Lio/branch/search/ui/BranchEntity;

    iget-object p0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_2e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object v0, p0

    :goto_2f
    invoke-virtual {p2, v0}, Lio/branch/search/ui/BranchEntity;->e(Landroid/content/Context;)Lio/branch/search/BranchError;

    :goto_32
    return-void
.end method

.method private static final bindSuggestedApp2BubbleTv$lambda$14(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalAppResult;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_12

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindSuggestedApp2BubbleTv$lambda$15(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalAppResult;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_12

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private static final bindSuggestedApp2BubbleTv$lambda$16(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 6

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p0}, Lio/branch/search/BranchLocalLinkResult;->getParentAppResult()Lio/branch/search/BranchLocalAppResult;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_1b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1b
    invoke-static {p2, v0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_36

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_29

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object v1, p1

    :goto_2a
    invoke-virtual {p0}, Lio/branch/search/BranchLocalLinkResult;->getParentAppResult()Lio/branch/search/BranchLocalAppResult;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->jump(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_42

    :cond_36
    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_3e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    move-object v1, p1

    :goto_3f
    invoke-virtual {p0, v1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    :goto_42
    return-void
.end method

.method private final branchRefillAdapterItems(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BranchUIManagerImpl"

    const-string v1, "branchRefillAdapterItems"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSettingProtectExpired()Z

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    if-eqz v3, :cond_c1

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-nez v3, :cond_1a

    goto/16 :goto_c1

    :cond_1a
    const/4 v0, 0x0

    if-nez v3, :cond_24

    const-string/jumbo v3, "mParent"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_24
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object v3

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.allapps.search.LauncherAppsSearchContainerLayout"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    const-string v5, "mContext"

    if-eqz v2, :cond_6a

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v6, :cond_3c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v0

    :cond_3c
    invoke-static {v6}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->getSearchBarController()Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->getSearchViewAnimate()Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-result-object v3

    if-eqz v3, :cond_8d

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v6, :cond_56

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_57

    :cond_56
    move-object v0, v6

    :goto_57
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v5, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_8d

    :cond_6a
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->getSearchBarController()Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->getSearchViewAnimate()Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-result-object v3

    if-eqz v3, :cond_8d

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v6, :cond_7e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7f

    :cond_7e
    move-object v0, v6

    :goto_7f
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f1200d3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_8d
    :goto_8d
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->hasBranchSearchResults()Z

    move-result p2

    const-string v0, "branchDataMap"

    const/4 v3, 0x0

    if-eqz p2, :cond_9e

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->refillSearchResults(ZLjava/util/HashMap;Ljava/util/ArrayList;)V

    move v4, v3

    goto :goto_a4

    :cond_9e
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->refillLocalResults(ZLjava/util/HashMap;Ljava/util/ArrayList;)V

    :goto_a4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p2, v3

    :goto_a9
    if-ge p2, p0, :cond_c0

    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iput-object v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_a9

    :cond_c0
    return v4

    :cond_c1
    :goto_c1
    const-string p0, "branchRefillAdapterItems , mContext or mParent has not been Initialized"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static synthetic c(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$33$lambda$32(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut$lambda$30$lambda$29(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp$lambda$19(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->openLauncherAllAppMode$lambda$45(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    return-void
.end method

.method private final filterBranchEntity(Ljava/util/List;ILjava/util/List;I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/ui/BranchEntity;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_61

    check-cast v4, Lio/branch/search/ui/BranchEntity;

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v7, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const-string v8, "mContext"

    if-nez v7, :cond_2d

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_2d
    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p2, :cond_5f

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_41
    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v3, :cond_49

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4a

    :cond_49
    move-object v5, v3

    :goto_4a
    invoke-static {v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->user(Lio/branch/search/ui/BranchEntity;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    move v3, v6

    goto :goto_10

    :cond_61
    invoke-static {}, Li4/o;->k()V

    throw v5

    :cond_65
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v2

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v3, p2, 0x1

    if-ltz p2, :cond_93

    move-object v4, p3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_8b

    const/4 p2, 0x1

    goto :goto_8c

    :cond_8b
    move p2, v2

    :goto_8c
    if-eqz p2, :cond_91

    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_91
    move p2, v3

    goto :goto_6f

    :cond_93
    invoke-static {}, Li4/o;->k()V

    throw v5

    :cond_97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_9c
    if-ge v2, p4, :cond_bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-static {v0}, Li4/t;->v(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/branch/search/ui/BranchEntity;

    goto :goto_b5

    :cond_af
    invoke-static {v1}, Li4/t;->v(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/branch/search/ui/BranchEntity;

    :goto_b5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    :cond_bb
    return-object p1
.end method

.method public static synthetic filterBranchEntity$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/util/List;ILjava/util/List;IILjava/lang/Object;)Ljava/util/List;
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_e

    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMConfig()Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMAppAdCount()I

    move-result p2

    :cond_e
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1c

    sget-object p3, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {p3}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMConfig()Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMAppPosition()Ljava/util/List;

    move-result-object p3

    :cond_1c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_21

    const/4 p4, 0x5

    :cond_21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->filterBranchEntity(Ljava/util/List;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut$lambda$30$lambda$28(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp$lambda$18(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut$lambda$30$lambda$27$lambda$25(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp2BubbleTv$lambda$12(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp2BubbleTv$lambda$16(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp$lambda$17(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic loadDrawable$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;IIIILjava/lang/Object;)V
    .registers 18

    and-int/lit8 v0, p7, 0x4

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    move v6, v1

    goto :goto_8

    :cond_7
    move v6, p4

    :goto_8
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_e

    move v7, v1

    goto :goto_f

    :cond_e
    move v7, p5

    :goto_f
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable(Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;III)V

    return-void
.end method

.method private static final loadDrawable$lambda$41(Landroid/widget/ImageView;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Context;IILio/branch/search/BranchLocalLinkResult;Landroid/graphics/drawable/Drawable;)V
    .registers 14

    const-string v0, "$icon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p6, 0x7f0a0341

    invoke-virtual {p0, p6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    move-object v0, p2

    move-object v1, p3

    move-object v2, p7

    move-object v3, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->applyBranchDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;II)V

    :cond_2f
    return-void
.end method

.method private final loadEntityImage(Lio/branch/search/ui/ImageLoadingStrategy;Landroid/widget/ImageView;I)V
    .registers 5

    if-eqz p1, :cond_33

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/widget/ImageView;I)V

    const-string p0, "handler"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    if-eqz p0, :cond_16

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    invoke-interface {v0, p1}, Lf4/b;->onAppIcon(Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;)V

    goto :goto_33

    :cond_16
    instance-of p0, p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;

    if-eqz p0, :cond_20

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;

    invoke-interface {v0, p1}, Lf4/b;->onShortcut(Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;)V

    goto :goto_33

    :cond_20
    instance-of p0, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    if-eqz p0, :cond_2a

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    invoke-interface {v0, p1}, Lf4/b;->onUrl(Lio/branch/search/ui/ImageLoadingStrategy$Url;)V

    goto :goto_33

    :cond_2a
    instance-of p0, p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    if-eqz p0, :cond_33

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    invoke-interface {v0, p1}, Lf4/b;->onFromCache(Lio/branch/search/ui/ImageLoadingStrategy$FromCache;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchSearchEmpty$lambda$23(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp2BubbleTv$lambda$14(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$37$lambda$35(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method private static final openLauncherAllAppMode$lambda$45(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_11
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_1c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1d

    :cond_1c
    move-object v1, p0

    :goto_1d
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public static synthetic p(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$33$lambda$31(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp2BubbleTv$lambda$15(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut$lambda$30$lambda$27$lambda$26(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method private final refillLocalResults(ZLjava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p1, :cond_124

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchHint(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    :cond_27
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const-string v1, "mContext"

    const/4 v2, 0x0

    if-nez p1, :cond_32

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_32
    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result p1

    const-string v3, "BranchUIManagerImpl"

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.collections.List<io.branch.search.ui.BranchEntity>"

    const/4 v5, 0x6

    if-eqz p1, :cond_95

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const-string/jumbo v6, "suggestedAppSize: "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/ui/BranchEntity;

    sget-object v7, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v8, v0, 0x1

    new-instance v9, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v9, v6}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v0, v9}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchSuggestedApp(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v8

    goto :goto_77

    :cond_95
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_124

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_a8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_a8
    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c4

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_c4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    const-string/jumbo p1, "suggestedLinkSize : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, p1, 0x1

    if-ltz p1, :cond_117

    check-cast p2, Lio/branch/search/ui/BranchEntity;

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v4, p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v4}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchLink(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v1

    move v0, v3

    goto :goto_f4

    :cond_117
    invoke-static {}, Li4/o;->k()V

    throw v2

    :cond_11b
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchEmptyDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_124
    return-void
.end method

.method private final refillSearchResults(ZLjava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "mParent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    if-eqz p1, :cond_50

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    sget-object v5, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v5, v0, p2}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchAutoSuggest(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    :cond_50
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p2

    goto :goto_58

    :cond_57
    move-object p2, v1

    :goto_58
    if-nez p2, :cond_7e

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p2

    goto :goto_62

    :cond_61
    move-object p2, v1

    :goto_62
    if-eqz p2, :cond_65

    goto :goto_7e

    :cond_65
    if-eqz v2, :cond_1d3

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1d3

    if-eqz v3, :cond_1d3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1d3

    invoke-static {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asEmptySearch(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d3

    :cond_7e
    :goto_7e
    if-eqz v2, :cond_168

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_168

    check-cast p2, Ljava/util/List;

    const-string v2, "mContext"

    if-eqz p1, :cond_118

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v4, p2

    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_168

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_114

    check-cast v5, Lio/branch/search/BranchLocalAppResult;

    if-nez v4, :cond_b5

    sget-object v4, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v7, v0, 0x1

    new-instance v8, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v8, v5}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v8}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchShortcut(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_110

    :cond_b5
    sget-object v4, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v7, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v7, :cond_bf

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_bf
    invoke-virtual {v5}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_100

    invoke-virtual {v5}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v4

    const-string v5, "localAppResult.links"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, p2

    :goto_d7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_111

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_fc

    check-cast v7, Lio/branch/search/BranchLocalLinkResult;

    if-nez v5, :cond_fa

    sget-object v5, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v9, v0, 0x1

    new-instance v10, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v10, v7}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v10}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchApp(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v9

    :cond_fa
    move v5, v8

    goto :goto_d7

    :cond_fc
    invoke-static {}, Li4/o;->k()V

    throw v1

    :cond_100
    sget-object v4, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v7, v0, 0x1

    new-instance v8, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v8, v5}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v8}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchApp(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_110
    move v0, v7

    :cond_111
    move v4, v6

    goto/16 :goto_92

    :cond_114
    invoke-static {}, Li4/o;->k()V

    throw v1

    :cond_118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_121
    :goto_121
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_146

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lio/branch/search/BranchLocalAppResult;

    sget-object v6, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v7, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v7, :cond_138

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_138
    invoke-virtual {v5}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_121

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_121

    :cond_146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_168

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchLocalAppResult;

    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v1, v0, 0x1

    new-instance v2, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v2, p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v2}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchApp(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_14a

    :cond_168
    if-eqz v3, :cond_1ca

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1ca

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchAppStoreHeader(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, p2

    :cond_182
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1ca

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/ui/BranchContainer;

    invoke-interface {p1}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_196
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_182

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/branch/search/ui/BranchEntity;

    const-string v1, " remote branchEntity : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lio/branch/search/ui/BranchEntity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BranchUIManagerImpl"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    add-int/lit8 v2, v0, 0x1

    new-instance v3, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v3, p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchApp(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_196

    :cond_1ca
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchAdapter;->asBranchEmptyDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d3
    :goto_1d3
    return-void
.end method

.method public static synthetic s(Landroid/widget/ImageView;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Context;IILio/branch/search/BranchLocalLinkResult;Landroid/graphics/drawable/Drawable;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable$lambda$41(Landroid/widget/ImageView;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Context;IILio/branch/search/BranchLocalLinkResult;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final showBranchGuidePage(Landroid/content/Context;)V
    .registers 6

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mParent"

    if-nez v0, :cond_22

    const-string v0, "key_branch_layout_optimize_panel_show_limit"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->Companion:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-nez p0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1e

    :cond_1d
    move-object v1, p0

    :goto_1e
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;->createPanel(Landroid/content/Context;ILcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    goto :goto_55

    :cond_22
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "key_enable_branch_service_declare_panel"

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "key_enable_branch_opt_by_user"

    invoke-static {p1, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->Companion:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-nez p0, :cond_44

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_45

    :cond_44
    move-object v1, p0

    :goto_45
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;->createPanel(Landroid/content/Context;ILcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    goto :goto_55

    :cond_49
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-nez p0, :cond_51

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_52

    :cond_51
    move-object v1, p0

    :goto_52
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->showKeyboardInDrawerPage()V

    :goto_55
    return-void
.end method

.method public static synthetic t(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp2BubbleTv$lambda$11(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut2BubbleTv$lambda$40$lambda$39$lambda$38(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final applyBranchDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;II)V
    .registers 6

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "icon"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_20

    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {p2, p4, p5}, Lcom/android/launcher3/allapps/branch/BranchUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_24

    :cond_1c
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    :cond_20
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_24
    return-void
.end method

.method public final bindBranchShortcut(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 27

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adapterItem"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a011c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a00f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/ImageView;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a00f5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/TextView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0329

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_77

    move v5, v14

    goto :goto_78

    :cond_77
    move v5, v15

    :goto_78
    const/4 v6, 0x4

    if-eqz v5, :cond_87

    invoke-virtual {v0, v6}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->reset()V

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_87
    iget-object v0, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchCommonAppInfo"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lh4/o;

    const v7, 0x7f0a011d

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v15, 0x7f0a0121

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-direct {v5, v1, v7, v15}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh4/o;

    const v5, 0x7f0a011e

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0a0122

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v1, v2, v5, v7}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh4/o;

    const v2, 0x7f0a011f

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a0123

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v1, v3, v2, v5}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh4/o;

    const v2, 0x7f0a0120

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0124

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/branch/search/BranchLocalAppResult;

    if-eqz v1, :cond_306

    move-object v15, v0

    check-cast v15, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v2, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const-string v16, "mContext"

    const/16 v17, 0x0

    if-nez v2, :cond_10f

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v17

    :cond_10f
    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const v7, 0x7f0a0341

    if-nez v1, :cond_236

    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    if-lt v0, v6, :cond_129

    goto :goto_12a

    :cond_129
    move v6, v2

    :goto_12a
    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    if-le v6, v0, :cond_138

    move/from16 v18, v0

    goto :goto_13a

    :cond_138
    move/from16 v18, v6

    :goto_13a
    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    const-string v1, "links"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/4 v0, 0x0

    :goto_148
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2ec

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v20, v0, 0x1

    if-ltz v0, :cond_232

    move-object v6, v1

    check-cast v6, Lio/branch/search/BranchLocalLinkResult;

    const-string v1, "branchLocalLinkResult"

    if-nez v0, :cond_1a7

    invoke-virtual {v6}, Lio/branch/search/BranchBaseLinkResult;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v7, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_17a

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v17

    goto :goto_17b

    :cond_17a
    move-object v2, v0

    :goto_17b
    const-string v0, "iconIV"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v3, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    const/16 v21, 0xc

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v23, v3

    move-object v3, v12

    move-object v14, v6

    move/from16 v6, v23

    move/from16 v7, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v22

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;IIIILjava/lang/Object;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/b;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v9, v14, v1}, Lcom/android/launcher3/allapps/branch/b;-><init>(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;I)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v8, v21

    goto/16 :goto_22a

    :cond_1a7
    move-object v14, v6

    move-object/from16 v21, v8

    add-int/lit8 v7, v0, -0x1

    if-ltz v7, :cond_1b6

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1b6

    const/4 v0, 0x1

    goto :goto_1b7

    :cond_1b6
    const/4 v0, 0x0

    :goto_1b7
    move-object/from16 v8, v21

    if-eqz v0, :cond_22a

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {v2, v14, v9}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lio/branch/search/BranchLocalLinkResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget v2, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v6, 0x7f0a0341

    invoke-virtual {v0, v6, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_1fe

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v17

    goto :goto_1ff

    :cond_1fe
    move-object v2, v0

    :goto_1ff
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget v5, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mSearchShortcutIconSize:I

    iget v4, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v21, v4

    move v4, v5

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable(Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;III)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v14}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22a
    :goto_22a
    move/from16 v0, v20

    const v7, 0x7f0a0341

    const/4 v14, 0x1

    goto/16 :goto_148

    :cond_232
    invoke-static {}, Li4/o;->k()V

    throw v17

    :cond_236
    invoke-virtual {v15, v12}, Lio/branch/search/BranchBaseAppResult;->loadIconDrawable(Landroid/widget/ImageView;)V

    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/launcher3/allapps/branch/d;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v9, v3}, Lcom/android/launcher3/allapps/branch/d;-><init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_254

    goto :goto_255

    :cond_254
    move v6, v2

    :goto_255
    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v6, v0, :cond_261

    move v7, v0

    goto :goto_262

    :cond_261
    move v7, v6

    :goto_262
    const/4 v11, 0x0

    :goto_263
    if-ge v11, v7, :cond_2ea

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/android/launcher3/allapps/branch/a;

    invoke-direct {v1, v15, v11, v9, v12}, Lcom/android/launcher3/allapps/branch/a;-><init>(Lio/branch/search/BranchLocalAppResult;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget v1, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v13, 0x7f0a0341

    invoke-virtual {v0, v13, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "links[i]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/branch/search/BranchLocalLinkResult;

    iget-object v0, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_2b5

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v17

    goto :goto_2b6

    :cond_2b5
    move-object v2, v0

    :goto_2b6
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget v5, v9, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mSearchShortcutIconSize:I

    iget v6, v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    move-object/from16 v0, p0

    move v4, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadDrawable(Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;III)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    iget-object v0, v0, Lh4/o;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v15}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_263

    :cond_2ea
    move/from16 v18, v7

    :cond_2ec
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v1, v18

    :goto_2f2
    if-ge v1, v0, :cond_306

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/o;

    iget-object v2, v2, Lh4/o;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f2

    :cond_306
    return-void
.end method

.method public final bindHints(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchCommonAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type io.branch.search.BranchQueryHintResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/branch/search/BranchQueryHintResult;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchLabelsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchLabelsView;

    invoke-virtual {p2}, Lio/branch/search/BranchQueryHintResult;->getHints()Ljava/util/List;

    move-result-object p2

    const-string v0, "branchQueryHintResult.hints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindHints$1;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindHints$1;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setLabels(Ljava/util/List;Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;)V

    new-instance p2, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindHints$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindHints$2;-><init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setOnLabelClickListener(Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;)V

    return-void
.end method

.method public branchRefillAdapterItems(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;Ljava/util/ArrayList;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "adapterItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastScrollerSections"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->branchRefillAdapterItems(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_d7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getAllAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAllAppsStore"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsStore;

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSettingProtectExpired()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_7b

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->getPredictedApps()Ljava/util/List;

    move-result-object v1

    const-string v3, "allAppsStore.predictedApps"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7b

    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    sget-object v4, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_PREDICTION:Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/ItemInfo;->setAppLocationType(Lcom/android/launcher/FancyIconKey$AppLocationType;)V

    add-int/lit8 v4, p0, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->asPredictedApp(ILjava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    const-string v3, "asPredictedApp(position++, \"\", info)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-nez v3, :cond_76

    iput-object p0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    :cond_76
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p0, v4

    goto :goto_54

    :cond_7b
    add-int/lit8 v0, p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asAllAppsDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    const-string v1, "asAllAppsDivider(position++)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    iput-object p0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(ILjava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v4

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    new-instance p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-nez v5, :cond_c1

    iput-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    :cond_c1
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v3

    :cond_c5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER:Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/ItemInfo;->setAppLocationType(Lcom/android/launcher/FancyIconKey$AppLocationType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    :cond_d0
    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->asSelectedEmptyPosFooter(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d7
    if-eqz p4, :cond_133

    const/4 p0, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    :cond_e1
    :goto_e1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iput p3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    iget v3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isDividerViewType(I)Z

    move-result v3

    if-eqz v3, :cond_f9

    :goto_f7
    move v0, p3

    goto :goto_e1

    :cond_f9
    iget v3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result v3

    if-nez v3, :cond_115

    iget v3, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v3}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isBranchSuggestedApp(I)Z

    move-result v3

    if-eqz v3, :cond_10a

    goto :goto_115

    :cond_10a
    iget v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isBranchSearch(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    add-int/lit8 p0, p0, 0x1

    goto :goto_f7

    :cond_115
    :goto_115
    rem-int v3, v0, p4

    if-nez v3, :cond_11c

    add-int/lit8 p0, p0, 0x1

    move v1, p3

    :cond_11c
    iput p0, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    iput v1, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    :cond_125
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->setNumAppRowsInAdapter(I)V

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object p0

    if-eqz p0, :cond_133

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_133
    return-void
.end method

.method public checkDeviceProtectTimeLimit()V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    const-string v3, "key_device_protected_expired"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1f
    const-wide/16 v5, 0x0

    const-string v7, "key_running_time"

    invoke-static {v0, v7, v5, v6}, Lcom/android/common/util/LauncherSharedPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    sget-wide v8, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DEVICE_PROTECT_TIME_LIMIT:J

    cmp-long v0, v5, v8

    const-string v8, "key_is_new_device"

    const/4 v9, 0x1

    if-gez v0, :cond_7f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mRunningTime:J

    add-long/2addr v5, v10

    sget-wide v10, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DEVICE_PROTECT_TIME_LIMIT:J

    cmp-long v0, v5, v10

    if-lez v0, :cond_3f

    move v0, v9

    goto :goto_40

    :cond_3f
    move v0, v4

    :goto_40
    sget-object v10, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMProtectExpired()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_53

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_53
    invoke-static {v0, v7, v5, v6}, Lcom/android/common/util/LauncherSharedPrefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_5e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5e
    invoke-static {v0, v3, v9}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_69

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_69
    invoke-static {v0, v8, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v3, :cond_76

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_77

    :cond_76
    move-object v1, v3

    :goto_77
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearch(Landroid/content/Context;Z)V

    goto :goto_b0

    :cond_7f
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMProtectExpired()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_90

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_90
    invoke-static {v0, v3, v9}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_9b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9b
    invoke-static {v0, v8, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v3, :cond_a8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a9

    :cond_a8
    move-object v1, v3

    :goto_a9
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearch(Landroid/content/Context;Z)V

    :cond_b0
    :goto_b0
    const-string v0, "checkDeviceProtectTimeLimit: mRunningTime:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mRunningTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", runTime:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", DEVICE_PROTECT_TIME_LIMIT:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->DEVICE_PROTECT_TIME_LIMIT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BranchUIManagerImpl"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d6
    return-void
.end method

.method public enableSearchNotification(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "mContext"

    if-eqz p2, :cond_19

    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_14

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    move-object p1, p0

    :goto_15
    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->showSearchNotification(Landroid/content/Context;)V

    goto :goto_28

    :cond_19
    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_23

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_24

    :cond_23
    move-object p1, p0

    :goto_24
    const/4 p0, 0x1

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->cancelSearchNotification(Landroid/content/Context;Z)V

    :goto_28
    return-void
.end method

.method public enterDrawer()V
    .registers 6

    const-string/jumbo v0, "onScrollUpEnd enterDrawer, mRefreshBranchData:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mRefreshBranchData:Z

    const-string v2, "BranchUIManagerImpl"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_19
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->showBranchGuidePage(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mRefreshBranchData:Z

    const-string v2, "mAppList"

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-nez v0, :cond_2a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2a
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_34
    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    const-string v3, "ENTER_DRAWER"

    const-string v4, "SWIPE_UP"

    invoke-virtual {v0, v3, v4}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/AnalyticsEvent;->track()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mRefreshBranchData:Z

    :cond_4a
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->redDotEnable()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-nez v0, :cond_58

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_59

    :cond_58
    move-object v1, v0

    :goto_59
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_60
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->checkDeviceProtectTimeLimit()V

    return-void
.end method

.method public exitDrawer()V
    .registers 8

    const-string v0, "BranchUIManagerImpl"

    const-string v1, "exitDrawer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mRefreshBranchData:Z

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    const-string v3, "mAppList"

    const/4 v4, 0x0

    if-nez v2, :cond_15

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_15
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v5, "mAppList.branchDataMap"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-nez v2, :cond_2d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2d
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-nez v2, :cond_44

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_44
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-nez v2, :cond_5b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_5b
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->refillAdapterItemsAndUpdate()V

    :cond_6d
    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const-string v3, "mContext"

    if-nez v2, :cond_77

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_77
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " exit drawer to state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v5, 0x0

    if-eqz v0, :cond_d2

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v6, :cond_d2

    if-nez v0, :cond_a4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_a4
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d2

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-nez v0, :cond_bd

    const-string/jumbo v0, "mParent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_be

    :cond_bd
    move-object v4, v0

    :goto_be
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object v0

    if-eqz v0, :cond_cc

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->isSearchEditHasFocus()Z

    move-result v2

    if-ne v2, v1, :cond_cc

    move v2, v1

    goto :goto_cd

    :cond_cc
    move v2, v5

    :goto_cd
    if-eqz v2, :cond_d2

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->clearSearchEditFocus()V

    :cond_d2
    iput-boolean v5, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mOpenAllAppsFromNotification:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->setReIntoDrawer(Z)V

    return-void
.end method

.method public getResourceId(I)I
    .registers 2

    packed-switch p1, :pswitch_data_2c

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getResourceId(I)I

    move-result p0

    goto :goto_2b

    :pswitch_8  #0x9
    const p0, 0x7f120158

    goto :goto_2b

    :pswitch_c  #0x8
    const p0, 0x7f120157

    goto :goto_2b

    :pswitch_10  #0x7
    const p0, 0x7f12015e

    goto :goto_2b

    :pswitch_14  #0x6
    const p0, 0x7f120167

    goto :goto_2b

    :pswitch_18  #0x5
    const p0, 0x7f12014f

    goto :goto_2b

    :pswitch_1c  #0x4
    const p0, 0x7f120156

    goto :goto_2b

    :pswitch_20  #0x3
    const p0, 0x7f120162

    goto :goto_2b

    :pswitch_24  #0x2
    const p0, 0x7f12016a

    goto :goto_2b

    :pswitch_28  #0x1
    const p0, 0x7f120166

    :goto_2b
    return p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28  #00000001
        :pswitch_24  #00000002
        :pswitch_20  #00000003
        :pswitch_1c  #00000004
        :pswitch_18  #00000005
        :pswitch_14  #00000006
        :pswitch_10  #00000007
        :pswitch_c  #00000008
        :pswitch_8  #00000009
    .end packed-switch
.end method

.method public initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchUIManagerImpl"

    const-string v1, "initBranchResponse"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->setMAppList(Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->setMBranchResponse(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 p2, 0x0

    const-string p3, "mContext"

    if-nez p1, :cond_33

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_33
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mContext.getSystemServic…LauncherApps::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mLauncherApp:Landroid/content/pm/LauncherApps;

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_4a

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4a
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mSearchShortcutIconSize:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->refreshSaveUserPageStatus(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_63

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_64

    :cond_63
    move-object p2, p0

    :goto_64
    const-string p0, "key_device_protected_expired"

    invoke-static {p2, p0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMProtectExpired()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final loadDrawable(Lio/branch/search/BranchLocalLinkResult;Landroid/content/Context;Landroid/widget/ImageView;III)V
    .registers 15

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/f;

    move-object v1, v0

    move-object v2, p3

    move v3, p6

    move-object v4, p0

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/allapps/branch/f;-><init>(Landroid/widget/ImageView;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Context;II)V

    invoke-virtual {p1, v0}, Lio/branch/search/BranchLocalLinkResult;->loadImageDrawable(Lio/branch/search/BranchDrawableCallback;)V

    return-void
.end method

.method public needKeyboardFromNotification()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mOpenAllAppsFromNotification:Z

    return p0
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p3, v0, :cond_4e

    const/high16 v0, 0x400000

    if-eq p3, v0, :cond_4a

    const/high16 v0, 0x800000

    if-eq p3, v0, :cond_46

    const/high16 v0, 0x1000000

    if-eq p3, v0, :cond_38

    const/high16 v0, 0x2000000

    if-eq p3, v0, :cond_2a

    const/high16 v0, 0x4000000

    if-eq p3, v0, :cond_26

    const/high16 v0, 0x10000000

    if-eq p3, v0, :cond_38

    goto :goto_51

    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchAutoSuggest(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    goto :goto_51

    :cond_2a
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBubble()Z

    move-result p3

    if-nez p3, :cond_34

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    goto :goto_51

    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchShortcut2BubbleTv(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    goto :goto_51

    :cond_38
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBubble()Z

    move-result p3

    if-nez p3, :cond_42

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    goto :goto_51

    :cond_42
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindSuggestedApp2BubbleTv(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    goto :goto_51

    :cond_46
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindHints(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    goto :goto_51

    :cond_4a
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchLink(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    goto :goto_51

    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchSearchEmpty(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    :goto_51
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .registers 11

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p3, v0, :cond_137

    const/high16 v0, 0x400000

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const-string v3, "mContext"

    const/4 v4, 0x0

    if-eq p3, v0, :cond_fb

    const/high16 v0, 0x800000

    if-eq p3, v0, :cond_ee

    const/high16 v0, 0x1000000

    if-eq p3, v0, :cond_7b

    const/high16 v0, 0x2000000

    if-eq p3, v0, :cond_6e

    const/high16 v0, 0x4000000

    if-eq p3, v0, :cond_61

    const/high16 v0, 0x8000000

    if-eq p3, v0, :cond_54

    const/high16 v0, 0x10000000

    if-eq p3, v0, :cond_7b

    const/high16 p0, 0x20000000

    if-eq p3, p0, :cond_47

    const/high16 p0, 0x40000000  # 2.0f

    if-eq p3, p0, :cond_3a

    return-object v4

    :cond_3a
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    const p3, 0x7f0d005c

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_47
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    const p3, 0x7f0d005b

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_54
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    const p3, 0x7f0d0055

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_61
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    const p3, 0x7f0d0056

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_6e
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    const p3, 0x7f0d0064

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_7b
    const p3, 0x7f0d0065

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0126

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0a0128

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v2, :cond_ae

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_ae
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v5, :cond_bc

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_bc
    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    if-nez v2, :cond_c7

    iget v6, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_c8

    :cond_c7
    move v6, v2

    :goto_c8
    iput v6, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v2, :cond_ce

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_ce
    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p3, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_df

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_e0

    :cond_df
    move-object v4, p0

    :goto_e0
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_ee
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    const p3, 0x7f0d0066

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_fb
    const p3, 0x7f0d0067

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a010b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_11c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_11d

    :cond_11c
    move-object v4, p0

    :goto_11d
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    if-nez p0, :cond_128

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_129

    :cond_128
    move p3, p0

    :goto_129
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez p0, :cond_12f

    iget p0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_12f
    iput p0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_137
    const p0, 0x7f0d005d

    invoke-virtual {p1, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onCreateViewHolderBubbleTv(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILandroid/view/View$OnFocusChangeListener;Landroid/view/View$OnLongClickListener;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .registers 12

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemFocusListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "longClickListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x7f0a0329

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p3, v0, :cond_45

    const/high16 v0, 0x2000000

    if-eq p3, v0, :cond_29

    const/high16 v0, 0x10000000

    if-eq p3, v0, :cond_45

    return-object v4

    :cond_29
    const p0, 0x7f0d0064

    invoke-virtual {p1, p0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_45
    const p3, 0x7f0d0065

    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object p4, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const-string p5, "mContext"

    if-nez p4, :cond_69

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p4, v4

    :cond_69
    invoke-virtual {p4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p3, :cond_79

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v4

    :cond_79
    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    if-nez p3, :cond_95

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p3, :cond_8d

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v4

    :cond_8d
    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_95
    const p2, 0x7f0a0355

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const p3, 0x7f0a0126

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x7f0a0128

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v0, 0x7f0a0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_cd

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_cd
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v2, :cond_db

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_db
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    if-nez v1, :cond_e6

    iget v5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_e7

    :cond_e6
    move v5, v1

    :goto_e7
    iput v5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v1, :cond_ed

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_ed
    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p4, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_fe

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ff

    :cond_fe
    move-object v4, p0

    :goto_ff
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput p0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public openLauncherAllAppMode()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mOpenAllAppsFromNotification:Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const-string v3, "mContext"

    if-nez v1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_e
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v1

    if-ne v1, v0, :cond_1c

    move v4, v0

    :cond_1c
    if-eqz v4, :cond_45

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_26

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_26
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_37

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_38

    :cond_37
    move-object v2, v0

    :goto_38
    iget-object v0, v2, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8d

    :cond_45
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_4d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4d
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_5b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5b
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_66

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_67

    :cond_66
    move-object v2, p0

    :goto_67
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_8d

    :cond_71
    invoke-static {}, Lcom/android/launcher3/Utilities;->createHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->getDefaultLauncherActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_89

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8a

    :cond_89
    move-object v2, p0

    :goto_8a
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_8d
    return-void
.end method

.method public final pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;
    .registers 5

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lio/branch/search/ui/BranchEntity$LinkEntity;

    if-eqz p0, :cond_12

    check-cast p1, Lio/branch/search/ui/BranchEntity$LinkEntity;

    iget-object p0, p1, Lio/branch/search/ui/BranchEntity$LinkEntity;->a:Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    instance-of p0, p1, Lio/branch/search/ui/BranchEntity$AppEntity;

    const/4 v0, 0x0

    if-eqz p0, :cond_41

    const-string v1, "entity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_3c

    new-instance p0, Lf4/a;

    check-cast p1, Lio/branch/search/ui/BranchEntity$AppEntity;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entity.app.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const-string v2, "entity.app.userHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lf4/a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_3d

    :cond_3c
    move-object p0, v0

    :goto_3d
    if-eqz p0, :cond_41

    iget-object v0, p0, Lf4/a;->a:Ljava/lang/String;

    :cond_41
    return-object v0
.end method

.method public preMeasureViews(Landroid/util/SparseIntArray;I)V
    .registers 7

    const-string/jumbo v0, "viewHeights"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_11
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0701f3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v0, p2

    const/high16 p2, 0x400000

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p2, 0x800000

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_2c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2c
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0701ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p2, 0x40000000  # 2.0f

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_44

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_44
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0701da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p2, 0x20000000

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_5c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5d

    :cond_5c
    move-object v1, p0

    :goto_5d
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701d9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public redDotEnable()Z
    .registers 6

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMConfig()Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMRedDotEnable()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const-string v3, "mContext"

    if-nez v0, :cond_1e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1e
    const-string v4, "key_is_ota_or_user_close_need_show_red_dot"

    invoke-static {v0, v4, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_2e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object v2, v0

    :goto_2f
    const-string v0, "key_enable_branch_service_declare_panel"

    invoke-static {v2, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mIsReIntoDrawer:Z

    if-eqz p0, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    return v1
.end method

.method public refillAdapterItemsAndUpdate()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    const/4 v1, 0x0

    const-string v2, "mAppList"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->hasBranchSearchResults()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-nez v0, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-nez p0, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_25

    :cond_24
    move-object v1, p0

    :goto_25
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2c
    return-void
.end method

.method public refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBubble()Z

    move-result v0

    if-eqz v0, :cond_6b

    if-eqz p1, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v0, "mAppList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6b

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6b

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    const/4 p1, 0x1

    invoke-static {v0, p1}, Li4/v;->A(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p1

    if-eqz p1, :cond_6b

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchLocalEmpty(Ljava/lang/Object;)V

    goto :goto_6b

    :cond_5d
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object v0

    if-eqz v0, :cond_6b

    new-instance v1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v1, p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchLocalApps(Ljava/lang/Object;)V

    :cond_6b
    :goto_6b
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object p1

    if-eqz p1, :cond_7d

    invoke-static {}, Lio/branch/search/BranchQueryHintRequest;->create()Lio/branch/search/BranchQueryHintRequest;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$2;-><init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    invoke-virtual {p1, v0, v1}, Lio/branch/search/BranchSearch;->localQueryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V

    :cond_7d
    if-eqz p1, :cond_8b

    invoke-static {}, Lio/branch/search/BranchZeroStateRequest;->create()Lio/branch/search/BranchZeroStateRequest;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;-><init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V

    invoke-virtual {p1, v0, v1}, Lio/branch/search/BranchSearch;->zeroState(Lio/branch/search/BranchZeroStateRequest;Lf4/e;)V

    :cond_8b
    return-void
.end method

.method public refreshListDot(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "itemList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_43

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->redDotEnable()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBranch()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    if-eqz p0, :cond_43

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    return v0

    :cond_2f
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    if-nez p0, :cond_43

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    return v0

    :cond_43
    return v1
.end method

.method public refreshSaveUserPageStatus(Z)V
    .registers 9

    const-string/jumbo v0, "refreshSaveUserPageStatus: getPersonalizeSearchSetting()"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",ota:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const-string v3, "mContext"

    if-nez v1, :cond_1e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1e
    const-string v4, "key_is_ota_and_user_close_need_show_declare"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchUIManagerImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "key_enable_branch_opt_by_user"

    const-string v6, "key_enable_branch_service_declare_panel"

    if-nez p1, :cond_59

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_45

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_45
    invoke-static {p1, v6, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_59

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_53

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_53
    invoke-static {p1, v0, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9c

    :cond_59
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_61

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_61
    invoke-static {p1, v4, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9c

    const-string/jumbo p1, "refresh user pager succeed"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_75

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_75
    invoke-static {p1, v4, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_80

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_80
    const-string v1, "key_branch_service_declare_panel_show_count"

    invoke-static {p1, v1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_8d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_8d
    invoke-static {p1, v6, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_98

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_99

    :cond_98
    move-object v2, p0

    :goto_99
    invoke-static {v2, v0, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_9c
    return-void
.end method

.method public saveRunningTime()V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    const/4 v3, 0x0

    const-string v4, "key_device_protected_expired"

    invoke-static {v0, v4, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "BranchUIManagerImpl"

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_21
    const-wide/16 v4, 0x0

    const-string v6, "key_running_time"

    invoke-static {v0, v6, v4, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-string/jumbo v0, "saveRunningTime: spRunningTime:"

    const-string v9, ", elapsedRealtime:"

    invoke-static {v0, v4, v5, v9}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_48

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move-object v1, p0

    :goto_49
    add-long/2addr v4, v7

    invoke-static {v1, v6, v4, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_54

    :cond_4e
    const-string/jumbo p0, "pt is expired"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void
.end method

.method public setNotificationSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->setMNotificationEnableSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    return-void
.end method

.method public setReIntoDrawer(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mIsReIntoDrawer:Z

    return-void
.end method

.method public setTextViewRedDot(Landroid/widget/TextView;)V
    .registers 4

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_10

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_10
    const v1, 0x7f12023f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lcom/android/launcher/allapps/branch/RedDotTextView;

    if-eqz v1, :cond_36

    check-cast p1, Lcom/android/launcher/allapps/branch/RedDotTextView;

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->redDotEnable()Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBranch()Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/allapps/branch/RedDotTextView;->setHasRedDot(Ljava/lang/String;Z)V

    goto :goto_3e

    :cond_36
    const-string p0, "BranchUIManagerImpl"

    const-string/jumbo p1, "red dot textview is not RedDotTextView.kt"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method public showKeyboard(F)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mAppList:Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_e

    goto/16 :goto_130

    :cond_e
    const-string v1, "mContext"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_17
    const-string/jumbo v3, "show_inputmethod_in_drawer_switch"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mOpenAllAppsFromNotification:Z

    if-nez v0, :cond_26

    return-void

    :cond_26
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mOpenAllAppsFromNotification:Z

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    const-string/jumbo v3, "mParent"

    if-nez v0, :cond_36

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_36
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object v0

    instance-of v5, v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    if-nez v5, :cond_3f

    return-void

    :cond_3f
    check-cast v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->getSearchBarController()Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->getSearchViewAnimate()Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_57

    :cond_56
    move-object v0, v2

    :goto_57
    if-eqz v0, :cond_130

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_62

    goto/16 :goto_130

    :cond_62
    const v0, 0x3f0a3d71  # 0.54f

    cmpl-float p1, p1, v0

    const-string v0, "BranchUIManagerImpl"

    if-lez p1, :cond_72

    const-string/jumbo p0, "no need show keyboard"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_72
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_7a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_7a
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v6, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    return-void

    :cond_8b
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_93

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_93
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v7, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    return-void

    :cond_a4
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_ac

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_ac
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d8

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_c4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_c4
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d8

    const-string p0, "ALL_APPS to OVERVIEW, OVERVIEW to NORMAL, return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d8
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_e0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_e0
    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f8

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_ee

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_ee
    const-string v0, "key_branch_layout_optimize_panel_show_limit"

    invoke-static {p1, v0, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f8

    move p1, v5

    goto :goto_f9

    :cond_f8
    move p1, v4

    :goto_f9
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v0

    if-nez v0, :cond_120

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_107

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_107
    const-string v6, "key_enable_branch_service_declare_panel"

    invoke-static {v0, v6, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_120

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mContext:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_117

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_117
    const-string v1, "key_enable_branch_opt_by_user"

    invoke-static {v0, v1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_120

    move v4, v5

    :cond_120
    if-nez p1, :cond_130

    if-nez v4, :cond_130

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->mParent:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-nez p0, :cond_12c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_12d

    :cond_12c
    move-object v2, p0

    :goto_12d
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->showKeyboardInDrawerPage()V

    :cond_130
    :goto_130
    return-void
.end method

.method public final user(Lio/branch/search/ui/BranchEntity;)Landroid/os/UserHandle;
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lio/branch/search/ui/BranchEntity$LinkEntity;

    if-eqz p0, :cond_10

    check-cast p1, Lio/branch/search/ui/BranchEntity$LinkEntity;

    iget-object p0, p1, Lio/branch/search/ui/BranchEntity$LinkEntity;->a:Lio/branch/search/BranchBaseLinkResult;

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    return-object p0

    :cond_10
    instance-of p0, p1, Lio/branch/search/ui/BranchEntity$AppEntity;

    if-eqz p0, :cond_1d

    check-cast p1, Lio/branch/search/ui/BranchEntity$AppEntity;

    iget-object p0, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.class public final Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;
.super Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;,
        Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter<",
        "Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;

.field private static final ICON_STYLE_INTENT_KEY:Ljava/lang/String; = "intent_from_launcher"

.field private static final TAG:Ljava/lang/String; = "ToggleBarMainUIAdapter"


# instance fields
.field private mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

.field private mCachedVH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;",
            ">;"
        }
    .end annotation
.end field

.field private mCardItemIndex:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShowingDialog:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->Companion:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCardItemIndex:I

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-direct {p2, p1}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->enableRelateAppThenLaunch$lambda$4(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->startWidgetSheetPanelOrCardStore$lambda$2()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onBindViewHolder$lambda$1(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private final changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->enableRelateAppThenLaunch$lambda$5(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V

    return-void
.end method

.method private final enableRelateAppThenLaunch(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oriIntent.`package`"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v2, Ld0/b;

    invoke-direct {v2, v1, p1, p2, p3}, Ld0/b;-><init>(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    new-instance p1, Landroidx/core/app/a;

    invoke-direct {p1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V

    invoke-static {v1, v0, v2, p1}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->getGrantDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_21
    return-void
.end method

.method private static final enableRelateAppThenLaunch$lambda$4(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$oriIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static final enableRelateAppThenLaunch$lambda$5(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method private final getIconStyleActIntent()Landroid/content/Intent;
    .registers 3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oplus.uxdesign.icon.ACTION_UX_GUIDE_ACTIVITY"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "intent_from_launcher"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.oplus.uxdesign"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private final getWallpaperIntent()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oplus.wallpapers"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_from_tag"

    const-string v2, "extra_from_desktopwallpaper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "from"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private final judgmentResId(I)Z
    .registers 2

    const p0, 0x7f0a0639

    if-eq p0, p1, :cond_16

    const p0, 0x7f0a063a

    if-eq p0, p1, :cond_16

    const p0, 0x7f0a0637

    if-eq p0, p1, :cond_16

    const p0, 0x7f0a0636

    if-eq p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;ILandroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->itemClick(II)V

    return-void
.end method

.method private final startActivityForResultMBACompat(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.`package`"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->checkAppAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->enableRelateAppThenLaunch(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1a

    :cond_15
    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_1a
    return-void
.end method

.method private static final startWidgetSheetPanelOrCardStore$lambda$2()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->setCardStoreOpen(Z)V

    return-void
.end method

.method private final tintViewByWallpaperBrightness(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f060839

    goto :goto_f

    :cond_c
    const v0, 0x7f06083a

    :goto_f
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMTitleTv()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->destroy()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public isPageViewHolder()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final itemClick(II)V
    .registers 6

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMHaveDoneDestroyAnim()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_17b

    :cond_10
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->judgmentResId(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const-string v1, "ToggleBarMainUIAdapter"

    if-eqz v0, :cond_37

    const-string/jumbo p0, "onItemClick folder opened, no need handle click"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->resetGaussianAnimState()V

    const-string v0, "mLauncher.toggleBarManager.toggleBarContainer"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_17c

    goto/16 :goto_17b

    :pswitch_48  #0x7f0a063b
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    if-eqz p0, :cond_17b

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    goto/16 :goto_17b

    :pswitch_63  #0x7f0a063a
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->setNeedLightWindowAnimatorFlag(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsClickWallpaperSetEntrance()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->getWallpaperIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x2713

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->startActivityForResultMBACompat(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_17b

    :pswitch_9c  #0x7f0a0639
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-nez p1, :cond_aa

    const-string p0, "launcher page state is not resumed, settings button click is not responded"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_aa
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->setNeedLightWindowAnimatorFlag(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsClickSettingSetEntrance()V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const-class v1, Lcom/android/launcher/settings/LauncherSettingsActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 v1, 0x2711

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_17b

    :pswitch_e8  #0x7f0a0638
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_fa

    const-string p0, "layout return -> Workspace page is in transition"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_fa
    new-instance p1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const-string p1, "layout_btn"

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsEnterEditBtnClick(Ljava/lang/String;)V

    goto :goto_17b

    :pswitch_110  #0x7f0a0637
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->setNeedLightWindowAnimatorFlag(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_134

    const-string p0, "Workspace page is in transition"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_134
    invoke-direct {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->getIconStyleActIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x2714

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->startActivityForResultMBACompat(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_17b

    :pswitch_151  #0x7f0a0636
    new-instance p1, Lcom/android/launcher/togglebar/state/ToggleBarEffectState;

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarEffectState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsClickEffectSetEntrance()V

    goto :goto_17b

    :pswitch_165  #0x7f0a0635
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->startWidgetSheetPanelOrCardStore(Landroid/view/View;)V

    :cond_17b
    :goto_17b
    return-void

    :pswitch_data_17c
    .packed-switch 0x7f0a0635
        :pswitch_165  #7f0a0635
        :pswitch_151  #7f0a0636
        :pswitch_110  #7f0a0637
        :pswitch_e8  #7f0a0638
        :pswitch_9c  #7f0a0639
        :pswitch_63  #7f0a063a
        :pswitch_48  #7f0a063b
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;I)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RecyclerView"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mItems[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/togglebar/item/ToggleBarItem;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMTitleTv()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const v3, 0x7f120640

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iput p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCardItemIndex:I

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMTitleTv()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const v3, 0x7f120647

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_69
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getViewId()I

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    :cond_81
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher/guide/side/a;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/guide/side/a;-><init>(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;
    .registers 6

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p2

    if-eqz p2, :cond_10

    const p2, 0x7f0d0274

    goto :goto_13

    :cond_10
    const p2, 0x7f0d0273

    :goto_13
    new-instance v0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "mLayoutInflater.inflate(…rLayoutId, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->tintViewByWallpaperBrightness(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;)V

    return-object v0
.end method

.method public final onMainUIDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method public final onWallpaperBrightnessChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->tintViewByWallpaperBrightness(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;)V

    goto :goto_6

    :cond_1b
    return-void
.end method

.method public final startWidgetSheetPanelOrCardStore(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statsClickCardOrWidgetSetEntrance()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->setCardStoreOpen(Z)V

    if-eqz p1, :cond_16

    sget-object v1, Ld0/c;->a:Ld0/c;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_33
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_4f

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isFirstTimeClickCardEntry()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_4f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-nez p1, :cond_63

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_63
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_75

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_75
    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/oplus/card/manager/domain/CardManager;->reFetchCardList(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_89

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    :cond_89
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    if-eqz p1, :cond_9c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    :cond_9c
    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_af

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_af

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_af

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_af
    return-void
.end method

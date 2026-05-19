.class public final Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

.field private static final SHARE_PREFERENCE_MARK:Ljava/lang/String; = "HOTSEAT_EXPAND_GUID_SHOWED_"

.field private static final SHOW_GUID_TIP_DELAY:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "ExpandGuidHelper"

.field private static expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private static final expandSourceTipResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static showExpandGuidTipType:I

.field private static showExpandTipRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->expandSourceTipResMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->checkExpandGuidState$lambda$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidIfNecessary$lambda$1(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static final checkExpandGuidState(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_6

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->dismissExpandGuidTip()V

    goto :goto_17

    :cond_6
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandTipRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_17

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/hotseat/expand/f;->b:Lcom/android/launcher3/hotseat/expand/f;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    :goto_17
    return-void
.end method

.method private static final checkExpandGuidState$lambda$0()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandTipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public static final dismissExpandGuidTip()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    :cond_c
    return-void
.end method

.method public static final hasExpandGuidBeenShowed(Landroid/content/Context;I)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSEAT_EXPAND_GUID_SHOWED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final showExpandGuidIfNecessary(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "showExpandGuidIfNecessary,tipType:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",showImmediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandGuidHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->dismissExpandGuidTip()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_29

    return-void

    :cond_29
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_34

    return-void

    :cond_34
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "app.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    invoke-static {v0, v2}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->hasExpandGuidBeenShowed(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    :cond_46
    if-eqz p0, :cond_52

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->isHotseatVisible(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTip()V

    return-void

    :cond_52
    new-instance p0, Lcom/android/exceptionmonitor/util/a;

    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/exceptionmonitor/util/a;-><init>(Lcom/android/launcher/Launcher;I)V

    sput-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandTipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final showExpandGuidIfNecessary$lambda$1(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->isHotseatVisible(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating$default(IILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTip()V

    sput-object v1, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandTipRunnable:Ljava/lang/Runnable;

    :cond_19
    return-void
.end method

.method public static final showExpandGuidTip()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    if-eqz v1, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    return-void

    :cond_33
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    sget v5, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v3, v5}, Lcom/android/launcher3/OplusHotseat;->getFirstExpandItem(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_42

    return-void

    :cond_42
    sget v5, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v4, v1, v5}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->getGuidTipString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    return-void

    :cond_4f
    new-instance v4, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    sput-object v4, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const-string/jumbo v1, "showExpandGuidTip right now,tipType:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Hotseat_expand"

    const-string v4, "ExpandGuidHelper"

    invoke-static {v3, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HOTSEAT_EXPAND_GUID_SHOWED_"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getExpandSourceTipResMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->expandSourceTipResMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getGuidTipString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_10

    const p0, 0x7f1202dd

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getExpandSourceCallingPackageMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_24

    return-object v0

    :cond_24
    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->expandSourceTipResMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_33

    return-object v0

    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "string"

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getShowExpandGuidTipType()I
    .registers 1

    sget p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    return p0
.end method

.method public final setShowExpandGuidTipType(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidTipType:I

    return-void
.end method

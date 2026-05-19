.class public final Lcom/android/launcher/provider/OutwardContentProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/provider/OutwardContentProvider$Companion;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.launcher.provider.outward"

.field private static final CODE_CMD_GO_ALL_APPS:I = 0x3

.field private static final CODE_CMD_GO_HOME:I = 0x0

.field private static final CODE_CMD_SHOW_OVERVIEW:I = 0x1

.field private static final CODE_CMD_SWITCH_APP:I = 0x2

.field public static final Companion:Lcom/android/launcher/provider/OutwardContentProvider$Companion;

.field private static final MATCHER:Landroid/content/UriMatcher;

.field private static final PARAM_SWITCH_FROM_RIGHT:Ljava/lang/String; = "switch_from_right"

.field private static final TAG:Ljava/lang/String; = "OutwardContentProvider"

.field private static final VALUE_YES:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher/provider/OutwardContentProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/provider/OutwardContentProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/provider/OutwardContentProvider;->Companion:Lcom/android/launcher/provider/OutwardContentProvider$Companion;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/launcher/provider/OutwardContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.launcher.provider.outward"

    const-string v2, "/cmd/go_home"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "/cmd/show_overview"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "/cmd/switch_app"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "/cmd/go_all_apps"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/provider/OutwardContentProvider;->goAllApps$lambda$0(Lcom/android/launcher3/statemanager/StateManager;)V

    return-void
.end method

.method private final goAllApps()V
    .registers 5

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    const-string v2, "OutwardContentProvider"

    if-nez v1, :cond_26

    const-string/jumbo p0, "not in drawer mode, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_ac

    :cond_39
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string p0, "assist screen showing, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_45
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_55

    const-string p0, "folder opened, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p0

    if-eqz p0, :cond_65

    const-string p0, "in power save mode, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_65
    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result p0

    if-nez p0, :cond_72

    const-string/jumbo p0, "pop up window showing, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_72
    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v3, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string p0, "in study mode, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_88
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->CHILD_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result p0

    if-eqz p0, :cond_9c

    const-string p0, "in child mode, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9c
    const-string p0, "handle cmd: go_all_apps"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/appcompat/widget/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_ac
    :goto_ac
    const-string/jumbo p0, "not in normal state, do not proceed it"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final goAllApps$lambda$0(Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 2

    const-string v0, "$stateManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method private final goHome()V
    .registers 1

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectKeyEvent(I)V

    return-void
.end method

.method private final showOverView()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_2c

    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->CHILD_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_24
    const-string p0, "OutwardContentProvider"

    const-string v0, "in study mode or child mode, do not go to recent"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    sget-object p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/TouchInteractionService;

    if-eqz v0, :cond_3b

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->showOverView()V

    :cond_3b
    return-void
.end method

.method private final switchApp(Z)V
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->switchAdjacentApp(Z)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const-string/jumbo p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/launcher/provider/OutwardContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const-string p4, "OutwardContentProvider"

    if-eqz p3, :cond_70

    const/4 p5, 0x1

    if-eq p3, p5, :cond_4f

    const/4 p5, 0x2

    if-eq p3, p5, :cond_27

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1e

    goto :goto_78

    :cond_1e
    const-string p1, " go all apps"

    invoke-static {p2, p1, p4}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/provider/OutwardContentProvider;->goAllApps()V

    goto :goto_78

    :cond_27
    const-string/jumbo p3, "switch_from_right"

    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "1"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " request switch app, fromRight: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/OutwardContentProvider;->switchApp(Z)V

    goto :goto_78

    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " request show overview"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    invoke-direct {p0}, Lcom/android/launcher/provider/OutwardContentProvider;->showOverView()V

    goto :goto_78

    :cond_70
    const-string p1, " request go home"

    invoke-static {p2, p1, p4}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/provider/OutwardContentProvider;->goHome()V

    :goto_78
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.class public final Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

.field private static final TAG:Ljava/lang/String; = "AllAppsActivityContextManager"

.field private static mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

.field private static final mLauncherSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarSharedState;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final destroyExistingLauncher()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->onDestroy()V

    :cond_7
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    return-void
.end method


# virtual methods
.method public final getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "Taskbar"

    const-string v0, "AllAppsActivityContextManager"

    const-string v1, "getLauncherActivityContext failed, not support taskbar!"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_11
    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    return-object p0
.end method

.method public final getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final onLauncherDestroy()V
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    instance-of v2, v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    if-eqz v2, :cond_1b

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    :cond_1b
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->onLauncherDestroy()V

    :cond_20
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->destroyExistingLauncher()V

    return-void
.end method

.method public final onLauncherRecreate(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->destroyExistingLauncher()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "Taskbar"

    const-string v1, "AllAppsActivityContextManager"

    const-string/jumbo v2, "onLauncherRecreate -->enable"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p0

    goto :goto_2c

    :cond_2b
    move-object p0, v0

    :goto_2c
    instance-of v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    if-eqz v1, :cond_33

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    :cond_33
    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->onLauncherCreate(Lcom/android/launcher/Launcher;)V

    :cond_38
    new-instance p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/LauncherActivityContext;-><init>(Lcom/android/launcher3/Launcher;)V

    sput-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    sget-object p1, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    return-void
.end method

.method public final onLauncherRestartOrResume(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    if-nez v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->onLauncherRecreate(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_29

    const-string/jumbo p0, "onLauncherRestartOrResume "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string v0, "AllAppsActivityContextManager"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public final recreateTaskbarManager()V
    .registers 3

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    if-nez p0, :cond_1b

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1b

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->onLauncherRecreate(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    const-string v1, "it.hotseat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->addAllAppsVisibilityChangeListener(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    :cond_1b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "OplusTaskbarManager init "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->mLauncherActivityContext:Lcom/android/launcher3/taskbar/LauncherActivityContext;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taskbar"

    const-string v1, "AllAppsActivityContextManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

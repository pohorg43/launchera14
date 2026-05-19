.class public final Lcom/android/launcher3/taskbar/LauncherActivityContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;,
        Lcom/android/launcher3/taskbar/LauncherActivityContext$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherActivityContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherActivityContext.kt\ncom/android/launcher3/taskbar/LauncherActivityContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n1#2:155\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/LauncherActivityContext$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherActivityContext"


# instance fields
.field private mControllers:Lcom/android/launcher3/taskbar/LauncherControllers;

.field private mIsUserSetupComplete:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mModelCallbacks:Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;

.field private mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/LauncherActivityContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/LauncherActivityContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->Companion:Lcom/android/launcher3/taskbar/LauncherActivityContext$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    sget-object v2, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p1

    if-ne p1, v0, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mIsUserSetupComplete:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_3a

    new-instance v0, Lcom/android/launcher3/taskbar/LauncherControllers;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-direct {v1, p1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-direct {v2, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/taskbar/LauncherControllers;-><init>(Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;)V

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mControllers:Lcom/android/launcher3/taskbar/LauncherControllers;

    new-instance p1, Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;-><init>(Lcom/android/launcher3/taskbar/LauncherActivityContext;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mModelCallbacks:Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;

    new-instance p1, Lcom/android/launcher3/taskbar/LauncherActivityContext$3;

    invoke-direct {p1}, Lcom/android/launcher3/taskbar/LauncherActivityContext$3;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    return-void
.end method

.method public static final synthetic access$getMControllers$p(Lcom/android/launcher3/taskbar/LauncherActivityContext;)Lcom/android/launcher3/taskbar/LauncherControllers;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mControllers:Lcom/android/launcher3/taskbar/LauncherControllers;

    return-object p0
.end method


# virtual methods
.method public final getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mControllers:Lcom/android/launcher3/taskbar/LauncherControllers;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsController<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getContext()Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .registers 3

    const-string/jumbo v0, "sharedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mControllers:Lcom/android/launcher3/taskbar/LauncherControllers;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/LauncherControllers;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    :cond_d
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mIsUserSetupComplete:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p1

    const-string v0, "getInstance(it.applicationContext).model.callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mModelCallbacks:Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;

    invoke-static {p1, v0}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2f
    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_3e
    return-void
.end method

.method public final onConfigurationChanged(I)V
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_e

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_e
    return-void
.end method

.method public final onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mControllers:Lcom/android/launcher3/taskbar/LauncherControllers;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherControllers;->onDestroy()V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mControllers:Lcom/android/launcher3/taskbar/LauncherControllers;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mModelCallbacks:Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    return-void
.end method

.class public Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperOpenLauncherAnimationRunner"
.end annotation


# instance fields
.field public final mFromUnlock:Z

.field private final mHandler:Landroid/os/Handler;

.field public mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

.field public final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/os/Handler;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/shared/system/AppTransitionParam;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;-><init>(Z)V

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mFromUnlock:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->lambda$onCreateAnimation$1(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->lambda$onCreateAnimation$0(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method private synthetic lambda$onCreateAnimation$0(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method private synthetic lambda$onCreateAnimation$1(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/launcher3/d3;

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/d3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    invoke-static {v0, v9}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    return-object p0
.end method

.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher3/QuickstepTransitionManager;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/util/Pair;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/QuickstepTransitionManager;->startAsyncWindowAnimator(Landroid/animation/AnimatorSet;Landroid/util/Pair;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p5, p1, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    new-instance v9, Lcom/android/launcher3/d3;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/d3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    invoke-virtual {v0, v9}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    return-void

    :cond_5b
    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BaseActivity;->addForceInvisibleFlag(I)V

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :cond_7a
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-boolean v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mFromUnlock:Z

    invoke-static {p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/RectF;

    move-result-object v5

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenAnimations([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLandroid/graphics/RectF;F)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p2, p2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p5, p1, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method

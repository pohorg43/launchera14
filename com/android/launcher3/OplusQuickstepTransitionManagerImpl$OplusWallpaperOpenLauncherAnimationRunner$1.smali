.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

.field public final synthetic val$nonAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iput-object p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->val$nonAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget-boolean p1, p1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mHasAlreadyUpdateAppScene:Z

    if-nez p1, :cond_11

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_11
    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    invoke-static {p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->access$800(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_33

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    invoke-static {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->access$800(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->access$802(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;J)J

    :cond_33
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget-object p1, p1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->val$nonAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->makeDividerHidden([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget-boolean p1, p1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mHasAlreadyUpdateAppScene:Z

    if-nez p1, :cond_1a

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;->this$1:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p1

    const/16 v0, 0x3e8

    const-string v1, "OSENSE_ACTION_LAUNCHER_CLOSE_APP_ANIMATION"

    invoke-virtual {p1, v1, v0}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->access$802(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;J)J

    return-void
.end method

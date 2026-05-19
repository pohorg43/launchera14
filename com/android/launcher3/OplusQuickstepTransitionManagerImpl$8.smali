.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic val$isAppOpening:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-boolean p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->val$isAppOpening:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->val$isAppOpening:Z

    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_49

    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher/guide/DrawerGuideManager;->showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    :cond_49
    return-void
.end method

.class public final Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconTranslationYController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconTranslationYController()Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $isImeShowing:Z

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/taskbar/OplusTaskbarViewController;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconTranslationYController$1;->$isImeShowing:Z

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconTranslationYController$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "Reset translationY of taskbar while transY align anim start, isImeShowing = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconTranslationYController$1;->$isImeShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusTaskbarViewController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isInHotseatOnTopStates()Z

    move-result p1

    if-ne p1, v1, :cond_23

    move v0, v1

    :cond_23
    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconTranslationYController$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusHotseat;->setVisibleForTaskbarIconAlign(Z)V

    :cond_30
    return-void
.end method

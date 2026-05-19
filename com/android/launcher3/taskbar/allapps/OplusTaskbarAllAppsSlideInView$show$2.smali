.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$2;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$2;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$onCustomOpenComplete(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$2;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$2;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$getMActivityContext$p$s593014637(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->resetWorkModeSwitchLocation()V

    :cond_13
    return-void
.end method

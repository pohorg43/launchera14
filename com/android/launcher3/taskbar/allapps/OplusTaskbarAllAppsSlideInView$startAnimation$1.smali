.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->startAnimation(Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $set:Landroid/animation/AnimatorSet;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;->$set:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$setMTaskbarOpenCloseAnimator$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;->$set:Landroid/animation/AnimatorSet;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$setMTaskbarOpenCloseAnimator$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V

    return-void
.end method

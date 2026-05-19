.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $anim:Landroid/animation/AnimatorSet;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->$anim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->$anim:Landroid/animation/AnimatorSet;

    invoke-static {p1, p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$startAnimation(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$getMBlurDrawable$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object p1

    if-eqz p1, :cond_1e

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$getMBlurDrawable$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-static {p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$getMRadius$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    :cond_2f
    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->access$getMBlurDrawable$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f06080c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setColor(I)V

    :cond_47
    return-void
.end method

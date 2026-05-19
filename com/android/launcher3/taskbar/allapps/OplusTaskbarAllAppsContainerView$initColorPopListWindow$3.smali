.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->initColorPopListWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $btnSortPop:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;->$btnSortPop:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(I)V
    .registers 3

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;->$btnSortPop:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->access$getMSearchContainer$p$s-788395208(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_11
    return-void
.end method

.method public onAnimationStart(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;->$btnSortPop:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->access$getMSearchContainer$p$s-788395208(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x41c00000  # 24.0f

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1a
    return-void
.end method

.method public onUpdate(ILandroid/animation/ValueAnimator;)V
    .registers 3

    const-string p0, "animator"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

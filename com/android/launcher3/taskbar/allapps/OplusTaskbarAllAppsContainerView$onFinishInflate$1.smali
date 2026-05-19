.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    const-string/jumbo p2, "v"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScrollerLayout()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-static {p3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->access$getMScrollHelper$p$s-788395208(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object p3

    if-eqz p3, :cond_85

    const-string/jumbo p3, "onLayoutChange fastScroller.height: "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", fastScrollerLayout.height: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "LauncherTaskbarAllAppsContainerView"

    invoke-static {p4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    if-le p3, p4, :cond_5e

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/4 p4, -0x2

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5e
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_85

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string/jumbo p3, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070c29

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_85
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->access$getMActivityContext$p$s-788395208(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_98

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_98

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->resetWorkModeSwitchLocation()V

    :cond_98
    return-void
.end method

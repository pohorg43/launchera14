.class public final Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isEventOverA11yButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getNavbarButtonsViewController()Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->getMA11yButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static final isEventOverBackButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getNavbarButtonsViewController()Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->getMBackButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static final isEventOverHomeButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getNavbarButtonsViewController()Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->getMHomeButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static final isEventOverNavButtons(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;->isEventOverBackButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result v0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;->isEventOverHomeButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result v1

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;->isEventOverRecentsButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result v2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;->isEventOverA11yButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result p0

    if-nez v0, :cond_25

    if-nez v1, :cond_25

    if-nez v2, :cond_25

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method public static final isEventOverNavContainer(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getNavbarButtonsViewController()Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->getNavButtonContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public static final isEventOverRecentsButton(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getNavbarButtonsViewController()Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->getMRecentsButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

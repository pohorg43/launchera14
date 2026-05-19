.class public final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEventOverViewWhenTouchDownHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Landroid/view/View;
    .registers 3

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_22

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_22

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-object p0

    :cond_22
    return-object p2
.end method

.method public final getOplusDragLayer(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Lcom/android/launcher3/OplusDragLayer;
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, p0

    :goto_d
    instance-of v0, v0, Lcom/android/launcher3/OplusDragLayer;

    if-eqz v0, :cond_21

    iget-object p1, p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    :cond_19
    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.OplusDragLayer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/OplusDragLayer;

    :cond_21
    return-object p0
.end method

.method public final isEventOverHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z
    .registers 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;->getEventOverViewWhenTouchDownHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_11

    instance-of p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

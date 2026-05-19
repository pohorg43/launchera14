.class public final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;


# instance fields
.field private mActivity:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

.field private mDownEventTouchedAtHotseat:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->Companion:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mActivity:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$mGestureListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$mGestureListener$1;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static final synthetic access$getMActivity$p(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;)Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mActivity:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    return-object p0
.end method

.method private final closeAllAppsBeforeDispatchEvent()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mActivity:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->close(Z)V

    :cond_e
    return-void
.end method

.method private final closeAllAppsBeforeDispatchEventToHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;Z)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->Companion:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;->isEventOverHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p2, :cond_f

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1a

    if-nez p3, :cond_1a

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->closeAllAppsBeforeDispatchEvent()V

    :cond_1a
    return-void
.end method

.method private final dispatchTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 6

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x1

    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_2c
    invoke-virtual {p2, p0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return p1
.end method

.method private final dispatchTransformedMotionEventToHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->Companion:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;->isEventOverHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mDownEventTouchedAtHotseat:Z

    :cond_e
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mDownEventTouchedAtHotseat:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->Companion:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;->getEventOverViewWhenTouchDownHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1f

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->dispatchTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final interceptDispatchTouchEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;Z)Z
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->closeAllAppsBeforeDispatchEventToHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->dispatchTransformedMotionEventToHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z

    move-result p0

    return p0
.end method

.method public final onDestroy()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mDownEventTouchedAtHotseat:Z

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->mActivity:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    return-void
.end method

.class public Lcom/android/launcher3/widget/AppWidgetTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetTouchListener"


# instance fields
.field private final mAppWidget:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mAppWidget:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iput-object p1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "AppWidgetTouchListener"

    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_58

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v2, "is_double_click_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_58

    :cond_32
    :try_start_32
    const-string p1, "Widget"

    const-string/jumbo v1, "onDoubleTap, goToSleep"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_4e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4e} :catch_50

    :cond_4e
    const/4 p0, 0x1

    return p0

    :catch_50
    move-exception p0

    const-string/jumbo p1, "onDoubleTap error, "

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_58
    :goto_58
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.class public final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$mGestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$mGestureListener$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

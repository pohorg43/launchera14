.class Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public mLeash:Landroid/view/SurfaceControl;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;-><init>()V

    return-void
.end method

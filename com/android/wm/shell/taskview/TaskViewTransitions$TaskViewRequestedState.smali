.class Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/taskview/TaskViewTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskViewRequestedState"
.end annotation


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public mVisible:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTransitions$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;-><init>()V

    return-void
.end method

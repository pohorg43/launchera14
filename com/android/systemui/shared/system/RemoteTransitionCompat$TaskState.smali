.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskState"
.end annotation


# instance fields
.field public mLeash:Landroid/view/SurfaceControl;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mTaskSurface:Landroid/view/SurfaceControl;

.field public mToken:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;",
            ">;",
            "Landroid/window/TransitionInfo$Change;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

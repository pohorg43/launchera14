.class public final Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$delayHideTaskbarWindow$1;
.super Lcom/oplus/quickstep/utils/SimpleCancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->delayHideTaskbarWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$delayHideTaskbarWindow$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SimpleCancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .registers 3

    const-string v0, "TaskbarDragLayerController"

    const-string v1, "hide taskbar drag layer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$delayHideTaskbarWindow$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

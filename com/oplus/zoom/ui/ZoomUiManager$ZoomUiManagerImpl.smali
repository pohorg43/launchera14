.class Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/ui/IZoomUiManager;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/ui/ZoomUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomUiManagerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/ZoomUiManager;


# direct methods
.method private constructor <init>(Lcom/oplus/zoom/ui/ZoomUiManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/ZoomUiManager;Lcom/oplus/zoom/ui/ZoomUiManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;-><init>(Lcom/oplus/zoom/ui/ZoomUiManager;)V

    return-void
.end method


# virtual methods
.method public addFloatHandle(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$200(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->addFloatHandle(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method public dismissSnackBar()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$300(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/TipsController;->dismissSnackBar()V

    return-void
.end method

.method public getFloatHandleInfo(I)Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$200(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFloatHandleRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$200(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public hideAllTipsView()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$300(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/TipsController;->hideAllTipsView()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$100(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$200(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public removeFloatHandle(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$200(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->removeFloatHandle()V

    return-void
.end method

.method public showCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$300(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/zoom/ui/tips/TipsController;->showCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$300(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;ZZ)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;->this$0:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->access$300(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/zoom/ui/tips/TipsController;->showMiniTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;ZZ)V

    return-void
.end method

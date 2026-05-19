.class Lcom/oplus/zoom/zoomstate/ZoomState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/zoomstate/ZoomState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/zoomstate/ZoomState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomState$1;->this$0:Lcom/oplus/zoom/zoomstate/ZoomState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomState$1;->this$0:Lcom/oplus/zoom/zoomstate/ZoomState;

    iget-object v0, v0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomState$1;->this$0:Lcom/oplus/zoom/zoomstate/ZoomState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/oplus/zoom/ui/IZoomUiManager;->showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V

    return-void
.end method

.class Lcom/oplus/zoom/common/ZoomParameterHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomParameterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/common/ZoomParameterHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$1;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 4

    new-instance v0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$1;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-direct {v0, v1, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;-><init>(Lcom/oplus/zoom/common/ZoomParameterHelper;I)V

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$1;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$000(Lcom/oplus/zoom/common/ZoomParameterHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p1, :cond_17

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$1;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$102(Lcom/oplus/zoom/common/ZoomParameterHelper;Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;)Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;

    :cond_17
    return-void
.end method

.method public onDisplayChanged(IILandroid/content/res/Configuration;)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_16

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$1;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$000(Lcom/oplus/zoom/common/ZoomParameterHelper;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;

    if-nez p0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->initZoomDefaultInfo()V

    :cond_16
    return-void
.end method

.method public onDisplayRemove(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$1;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$000(Lcom/oplus/zoom/common/ZoomParameterHelper;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;

    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$1;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$000(Lcom/oplus/zoom/common/ZoomParameterHelper;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

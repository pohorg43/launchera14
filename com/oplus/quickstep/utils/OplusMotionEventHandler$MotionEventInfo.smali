.class final Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/OplusMotionEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEventInfo"
.end annotation


# instance fields
.field private final accuracy:F

.field private activePointerId:I

.field private final pointerInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->accuracy:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->activePointerId:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->pointerInfoArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final getActivePointerId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->activePointerId:I

    return p0
.end method

.method public final getPointerInfoArray()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->pointerInfoArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->activePointerId:I

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->pointerInfoArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final updateActionDown(ZLandroid/view/MotionEvent;)V
    .registers 8

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    move v1, v0

    goto :goto_e

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    :goto_e
    int-to-float v2, v1

    const/high16 v3, -0x40800000  # -1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    if-eqz v0, :cond_22

    invoke-static {}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotionEventInfo-updateActionDown fail, pointerIndex == -1"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v2, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->pointerInfoArray:Landroid/util/SparseArray;

    new-instance v3, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;

    iget v4, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->accuracy:F

    invoke-direct {v3, v4}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;-><init>(F)V

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    invoke-virtual {v3, v4, p2}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->updateActionDown(FF)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_41

    iput v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->activePointerId:I

    :cond_41
    return-void
.end method

.method public final updateActionMove(Landroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->pointerInfoArray:Landroid/util/SparseArray;

    invoke-static {v0}, Landroidx/core/util/SparseArrayKt;->keyIterator(Landroid/util/SparseArray;)Li4/f0;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Li4/f0;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    int-to-float v3, v2

    const/high16 v4, -0x40800000  # -1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->pointerInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;

    if-eqz v1, :cond_b

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->updateActionMove(FF)V

    goto :goto_b

    :cond_3b
    return-void
.end method

.method public final updateActionUp(ZLandroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    move v1, v0

    goto :goto_e

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    :goto_e
    int-to-float v2, v1

    const/high16 v3, -0x40800000  # -1.0f

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_18

    move v2, v3

    goto :goto_19

    :cond_18
    move v2, v0

    :goto_19
    if-eqz v2, :cond_25

    invoke-static {}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotionEventInfo-updateActionUp fail, pointerIndex == -1"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-nez p1, :cond_38

    iget p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->activePointerId:I

    if-ne v2, p1, :cond_38

    if-nez v1, :cond_32

    move v0, v3

    :cond_32
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->activePointerId:I

    :cond_38
    return-void
.end method

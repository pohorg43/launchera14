.class public final Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;
.super Lcom/android/launcher3/folder/PreviewItemDrawingParams;
.source ""


# instance fields
.field private mCurrentStackedParams:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private mStackedHeight:I

.field private mStackedRealSize:F

.field private mStackedWidth:I


# direct methods
.method public constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mCurrentStackedParams:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final getCurrentStackedParams()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mCurrentStackedParams:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final getMStackedHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mStackedHeight:I

    return p0
.end method

.method public final getMStackedRealSize()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mStackedRealSize:F

    return p0
.end method

.method public final getMStackedWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mStackedWidth:I

    return p0
.end method

.method public final setCurrentStackedParams(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currentStackedParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mCurrentStackedParams:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mCurrentStackedParams:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final setMStackedHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mStackedHeight:I

    return-void
.end method

.method public final setMStackedRealSize(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mStackedRealSize:F

    return-void
.end method

.method public final setMStackedWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->mStackedWidth:I

    return-void
.end method

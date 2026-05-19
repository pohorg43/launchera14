.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;
.super Lq1/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->onUrl(Lio/branch/search/ui/ImageLoadingStrategy$Url;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/e<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $iconIV:Landroid/widget/ImageView;

.field public final synthetic $position:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;->$iconIV:Landroid/widget/ImageView;

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;->$position:I

    invoke-direct {p0, p1}, Lq1/e;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lr1/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lr1/b<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lq1/e;->onResourceReady(Ljava/lang/Object;Lr1/b;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;->$iconIV:Landroid/widget/ImageView;

    const v0, 0x7f0a0341

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;->$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;->$iconIV:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lr1/b;)V
    .registers 3

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lr1/b;)V

    return-void
.end method

.method public setResource(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const-string p0, "BranchUIManagerImpl"

    const-string/jumbo p1, "setResource"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setResource(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;->setResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

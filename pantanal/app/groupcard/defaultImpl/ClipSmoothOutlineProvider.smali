.class public final Lpantanal/app/groupcard/defaultImpl/ClipSmoothOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source ""


# instance fields
.field private final cardRadius:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/ClipSmoothOutlineProvider;->cardRadius:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {v1, p2}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lpantanal/app/groupcard/defaultImpl/ClipSmoothOutlineProvider;->cardRadius:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v7, 0x3f7d70a4  # 0.99f

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(IIIIFF)V

    return-void
.end method

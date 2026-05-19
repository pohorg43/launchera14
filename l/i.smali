.class public Ll/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ll/b;

.field public final b:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;Ll/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/i;->a:Ll/b;

    iput-object p2, p0, Ll/i;->b:Ll/b;

    return-void
.end method


# virtual methods
.method public createAnimation()Li/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Li/m;

    iget-object v1, p0, Ll/i;->a:Ll/b;

    invoke-virtual {v1}, Ll/b;->createAnimation()Li/a;

    move-result-object v1

    iget-object p0, p0, Ll/i;->b:Ll/b;

    invoke-virtual {p0}, Ll/b;->createAnimation()Li/a;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Li/m;-><init>(Li/a;Li/a;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStatic()Z
    .registers 2

    iget-object v0, p0, Ll/i;->a:Ll/b;

    invoke-virtual {v0}, Ll/n;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Ll/i;->b:Ll/b;

    invoke-virtual {p0}, Ll/n;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

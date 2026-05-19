.class public Li/k;
.super Li/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/f<",
        "Ls/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ls/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls/a<",
            "Ls/d;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Li/f;-><init>(Ljava/util/List;)V

    new-instance p1, Ls/d;

    invoke-direct {p1}, Ls/d;-><init>()V

    iput-object p1, p0, Li/k;->i:Ls/d;

    return-void
.end method


# virtual methods
.method public f(Ls/a;F)Ljava/lang/Object;
    .registers 13

    iget-object v0, p1, Ls/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_43

    iget-object v1, p1, Ls/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_43

    check-cast v0, Ls/d;

    check-cast v1, Ls/d;

    iget-object v2, p0, Li/a;->e:Ls/c;

    if-eqz v2, :cond_2a

    iget v3, p1, Ls/a;->e:F

    iget-object p1, p1, Ls/a;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Li/a;->d()F

    move-result v8

    iget v9, p0, Li/a;->d:F

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Ls/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/d;

    if-eqz p1, :cond_2a

    goto :goto_42

    :cond_2a
    iget-object p1, p0, Li/k;->i:Ls/d;

    iget v2, v0, Ls/d;->a:F

    iget v3, v1, Ls/d;->a:F

    invoke-static {v2, v3, p2}, Lr/g;->e(FFF)F

    move-result v2

    iget v0, v0, Ls/d;->b:F

    iget v1, v1, Ls/d;->b:F

    invoke-static {v0, v1, p2}, Lr/g;->e(FFF)F

    move-result p2

    iput v2, p1, Ls/d;->a:F

    iput p2, p1, Ls/d;->b:F

    iget-object p1, p0, Li/k;->i:Ls/d;

    :goto_42
    return-object p1

    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

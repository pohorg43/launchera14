.class public final Li/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/a$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ls/a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Ls/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Ls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls/a<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/a$e;->c:Ls/a;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Li/a$e;->d:F

    iput-object p1, p0, Li/a$e;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Li/a$e;->a(F)Ls/a;

    move-result-object p1

    iput-object p1, p0, Li/a$e;->b:Ls/a;

    return-void
.end method


# virtual methods
.method public final a(F)Ls/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ls/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Li/a$e;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    invoke-virtual {v0}, Ls/a;->c()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_12

    return-object v0

    :cond_12
    iget-object v0, p0, Li/a$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_1a
    if-lt v0, v1, :cond_33

    iget-object v2, p0, Li/a$e;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/a;

    iget-object v3, p0, Li/a$e;->b:Ls/a;

    if-ne v3, v2, :cond_29

    goto :goto_30

    :cond_29
    invoke-virtual {v2, p1}, Ls/a;->a(F)Z

    move-result v3

    if-eqz v3, :cond_30

    return-object v2

    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_33
    iget-object p0, p0, Li/a$e;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls/a;

    return-object p0
.end method

.method public getCurrentKeyframe()Ls/a;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls/a<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Li/a$e;->b:Ls/a;

    return-object p0
.end method

.method public getEndProgress()F
    .registers 2

    iget-object p0, p0, Li/a$e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls/a;

    invoke-virtual {p0}, Ls/a;->b()F

    move-result p0

    return p0
.end method

.method public getStartDelayProgress()F
    .registers 2

    iget-object p0, p0, Li/a$e;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls/a;

    invoke-virtual {p0}, Ls/a;->c()F

    move-result p0

    return p0
.end method

.method public isCachedValueEnabled(F)Z
    .registers 4

    iget-object v0, p0, Li/a$e;->c:Ls/a;

    iget-object v1, p0, Li/a$e;->b:Ls/a;

    if-ne v0, v1, :cond_e

    iget v0, p0, Li/a$e;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    iput-object v1, p0, Li/a$e;->c:Ls/a;

    iput p1, p0, Li/a$e;->d:F

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isValueChanged(F)Z
    .registers 4

    iget-object v0, p0, Li/a$e;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->a(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object p0, p0, Li/a$e;->b:Ls/a;

    invoke-virtual {p0}, Ls/a;->d()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_11
    invoke-virtual {p0, p1}, Li/a$e;->a(F)Ls/a;

    move-result-object p1

    iput-object p1, p0, Li/a$e;->b:Ls/a;

    return v1
.end method

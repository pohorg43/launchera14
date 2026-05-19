.class public final Li/a$f;
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
    name = "f"
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
.field public final a:Ls/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:F


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

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Li/a$f;->b:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/a;

    iput-object p1, p0, Li/a$f;->a:Ls/a;

    return-void
.end method


# virtual methods
.method public getCurrentKeyframe()Ls/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls/a<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Li/a$f;->a:Ls/a;

    return-object p0
.end method

.method public getEndProgress()F
    .registers 1

    iget-object p0, p0, Li/a$f;->a:Ls/a;

    invoke-virtual {p0}, Ls/a;->b()F

    move-result p0

    return p0
.end method

.method public getStartDelayProgress()F
    .registers 1

    iget-object p0, p0, Li/a$f;->a:Ls/a;

    invoke-virtual {p0}, Ls/a;->c()F

    move-result p0

    return p0
.end method

.method public isCachedValueEnabled(F)Z
    .registers 3

    iget v0, p0, Li/a$f;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    iput p1, p0, Li/a$f;->b:F

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isValueChanged(F)Z
    .registers 2

    iget-object p0, p0, Li/a$f;->a:Ls/a;

    invoke-virtual {p0}, Ls/a;->d()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

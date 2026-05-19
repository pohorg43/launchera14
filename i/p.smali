.class public Li/p;
.super Li/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Li/a<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls/c;Ljava/lang/Object;)V
    .registers 4
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls/c<",
            "TA;>;TA;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Li/a;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/p;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public e()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Li/a;->e:Ls/c;

    iget-object v4, p0, Li/p;->i:Ljava/lang/Object;

    iget v7, p0, Li/a;->d:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    move v5, v7

    move v6, v7

    invoke-virtual/range {v0 .. v7}, Ls/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f(Ls/a;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls/a<",
            "TK;>;F)TA;"
        }
    .end annotation

    invoke-virtual {p0}, Li/p;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Li/a;->e:Ls/c;

    if-eqz v0, :cond_7

    invoke-super {p0}, Li/a;->g()V

    :cond_7
    return-void
.end method

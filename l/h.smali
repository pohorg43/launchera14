.class public Ll/h;
.super Ll/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll/n<",
        "Lm/j;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls/a<",
            "Lm/j;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ll/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Li/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a<",
            "Lm/j;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Li/l;

    iget-object p0, p0, Ll/n;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Li/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method

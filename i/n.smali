.class public Li/n;
.super Li/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/f<",
        "Lk/c;",
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
            "Lk/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Li/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f(Ls/a;F)Ljava/lang/Object;
    .registers 3

    iget-object p0, p1, Ls/a;->b:Ljava/lang/Object;

    check-cast p0, Lk/c;

    return-object p0
.end method

.class public final Lo7/p;
.super Lo7/g;
.source ""

# interfaces
.implements Lo7/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo7/g<",
        "TE;>;",
        "Lo7/q<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll4/f;Lo7/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "Lo7/f<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lo7/g;-><init>(Ll4/f;Lo7/f;ZZ)V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 1

    invoke-super {p0}, Lm7/a;->isActive()Z

    move-result p0

    return p0
.end method

.method public l0(Ljava/lang/Throwable;Z)V
    .registers 4

    iget-object v0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {v0, p1}, Lo7/t;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez p2, :cond_f

    iget-object p0, p0, Lm7/a;->c:Ll4/f;

    invoke-static {p0, p1}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method

.method public m0(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lh4/z;

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lo7/t$a;->a(Lo7/t;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.class public Li7/d$c;
.super Li7/d$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li7/d$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final synthetic c:Li7/d;


# direct methods
.method public constructor <init>(Li7/d;)V
    .registers 3

    iput-object p1, p0, Li7/d$c;->c:Li7/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li7/d$d;-><init>(Li7/d$a;)V

    invoke-static {p1}, Li7/d;->c(Li7/d;)I

    move-result p1

    iput p1, p0, Li7/d$c;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Li7/d$c;->c:Li7/d;

    invoke-static {v0}, Li7/d;->d(Li7/d;)I

    move-result v0

    iget v1, p0, Li7/d$c;->b:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "ModCount: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li7/d$c;->c:Li7/d;

    invoke-static {v2}, Li7/d;->e(Li7/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Li7/d$c;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 1

    invoke-virtual {p0}, Li7/d$c;->a()V

    iget-object p0, p0, Li7/d$c;->c:Li7/d;

    invoke-virtual {p0}, Li7/d;->clear()V

    return-void
.end method

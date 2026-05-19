.class public Lb1/h;
.super Lt1/c;
.source ""

# interfaces
.implements Lb1/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/c<",
        "Lw0/c;",
        "Lz0/w<",
        "*>;>;",
        "Lb1/i;"
    }
.end annotation


# instance fields
.field public d:Lb1/i$a;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lt1/c;-><init>(J)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lz0/w;

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_a

    :cond_6
    invoke-interface {p1}, Lz0/w;->a()I

    move-result p0

    :goto_a
    return p0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lw0/c;

    check-cast p2, Lz0/w;

    iget-object p0, p0, Lb1/h;->d:Lb1/i$a;

    if-eqz p0, :cond_12

    if-eqz p2, :cond_12

    check-cast p0, Lz0/l;

    iget-object p0, p0, Lz0/l;->e:Lz0/z;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lz0/z;->a(Lz0/w;Z)V

    :cond_12
    return-void
.end method

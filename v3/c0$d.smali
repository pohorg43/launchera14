.class public final Lv3/c0$d;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv3/c0;


# direct methods
.method public constructor <init>(Lv3/c0;)V
    .registers 2

    iput-object p1, p0, Lv3/c0$d;->a:Lv3/c0;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    iget-object p0, p0, Lv3/c0$d;->a:Lv3/c0;

    invoke-virtual {p0}, Lv3/c0;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lv3/c0$d;->a:Lv3/c0;

    invoke-virtual {p0, p1}, Lv3/c0;->d(Ljava/lang/Object;)Lv3/c0$f;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lv3/c0$d$a;

    invoke-direct {v0, p0}, Lv3/c0$d$a;-><init>(Lv3/c0$d;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object p0, p0, Lv3/c0$d;->a:Lv3/c0;

    invoke-virtual {p0, p1}, Lv3/c0;->d(Ljava/lang/Object;)Lv3/c0$f;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1, v0}, Lv3/c0;->f(Lv3/c0$f;Z)V

    :cond_c
    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Lv3/c0$d;->a:Lv3/c0;

    iget p0, p0, Lv3/c0;->d:I

    return p0
.end method

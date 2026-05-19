.class public abstract Lm6/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6/g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Li5/e0;)Ly6/l0;
.end method

.method public b()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1e

    invoke-virtual {p0}, Lm6/g;->b()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p1, Lm6/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p1, Lm6/g;

    goto :goto_f

    :cond_e
    move-object p1, v1

    :goto_f
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lm6/g;->b()Ljava/lang/Object;

    move-result-object v1

    :cond_15
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    return p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Lm6/g;->b()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm6/g;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

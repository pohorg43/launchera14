.class public abstract Lc5/g0$a;
.super Lc5/i;
.source ""

# interfaces
.implements Lz4/h;
.implements Lz4/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyType:",
        "Ljava/lang/Object;",
        "ReturnType:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/i<",
        "TReturnType;>;",
        "Lz4/h<",
        "TReturnType;>;",
        "Lz4/n$a<",
        "TPropertyType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc5/i;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lc5/t;
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    iget-object p0, p0, Lc5/g0;->f:Lc5/t;

    return-object p0
.end method

.method public h()Ld5/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/f<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isExternal()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->l()Li5/n0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isInfix()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->l()Li5/n0;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isInfix()Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->l()Li5/n0;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isInline()Z

    move-result p0

    return p0
.end method

.method public isOperator()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->l()Li5/n0;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isOperator()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->l()Li5/n0;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isSuspend()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {p0}, Lc5/g0;->k()Z

    move-result p0

    return p0
.end method

.method public abstract l()Li5/n0;
.end method

.method public abstract m()Lc5/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc5/g0<",
            "TPropertyType;>;"
        }
    .end annotation
.end method

.class public Lf5/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/g;-><init>(Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Li5/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf5/g;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .registers 2

    iput-object p1, p0, Lf5/g$c;->a:Lf5/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lh6/f;

    iget-object p0, p0, Lf5/g$c;->a:Lf5/g;

    invoke-virtual {p0}, Lf5/g;->l()Ll5/a0;

    move-result-object p0

    sget-object v0, Lf5/j;->k:Lh6/c;

    invoke-virtual {p0, v0}, Ll5/a0;->s(Lh6/c;)Li5/l0;

    move-result-object p0

    invoke-interface {p0}, Li5/l0;->l()Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_5e

    sget-object v1, Lq5/d;->d:Lq5/d;

    invoke-interface {p0, p1, v1}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    if-eqz p0, :cond_42

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_23

    check-cast p0, Li5/e;

    return-object p0

    :cond_23
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a class descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_42
    new-instance p0, Ljava/lang/AssertionError;

    const-string v1, "Built-in class "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_5e
    const/16 p0, 0xb

    invoke-static {p0}, Lf5/g;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

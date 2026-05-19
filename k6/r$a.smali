.class public final Lk6/r$a;
.super Ly6/i1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/r;->u0(ZZ)Ly6/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic j:Lk6/r;


# direct methods
.method public constructor <init>(ZZLk6/r;Lz6/e;Lz6/f;)V
    .registers 13

    iput-object p3, p0, Lk6/r$a;->j:Lk6/r;

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ly6/i1;-><init>(ZZZLc7/p;Ly6/m;Ly6/n;)V

    return-void
.end method


# virtual methods
.method public c(Lc7/i;Lc7/i;)Z
    .registers 5

    const-string v0, "subType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ly6/l0;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_2d

    instance-of v0, p2, Ly6/l0;

    if-eqz v0, :cond_23

    iget-object p0, p0, Lk6/r$a;->j:Lk6/r;

    iget-object p0, p0, Lk6/r;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

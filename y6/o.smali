.class public final Ly6/o;
.super Ly6/e1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly6/e1<",
        "Ly6/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lj5/h;


# direct methods
.method public constructor <init>(Lj5/h;)V
    .registers 3

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/e1;-><init>()V

    iput-object p1, p0, Ly6/o;->a:Lj5/h;

    return-void
.end method


# virtual methods
.method public a(Ly6/e1;)Ly6/e1;
    .registers 3

    check-cast p1, Ly6/o;

    if-nez p1, :cond_5

    goto :goto_13

    :cond_5
    new-instance v0, Ly6/o;

    iget-object p0, p0, Ly6/o;->a:Lj5/h;

    iget-object p1, p1, Ly6/o;->a:Lj5/h;

    invoke-static {p0, p1}, Lv1/l;->b(Lj5/h;Lj5/h;)Lj5/h;

    move-result-object p0

    invoke-direct {v0, p0}, Ly6/o;-><init>(Lj5/h;)V

    move-object p0, v0

    :goto_13
    return-object p0
.end method

.method public b()Lz4/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz4/d<",
            "+",
            "Ly6/o;",
            ">;"
        }
    .end annotation

    const-class p0, Ly6/o;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    return-object p0
.end method

.method public c(Ly6/e1;)Ly6/e1;
    .registers 2

    check-cast p1, Ly6/o;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ly6/o;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ly6/o;

    iget-object p1, p1, Ly6/o;->a:Lj5/h;

    iget-object p0, p0, Ly6/o;->a:Lj5/h;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Ly6/o;->a:Lj5/h;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

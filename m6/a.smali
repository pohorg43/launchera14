.class public final Lm6/a;
.super Lm6/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/g<",
        "Lj5/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lj5/c;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm6/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Lj5/c;

    invoke-interface {p0}, Lj5/c;->getType()Ly6/l0;

    move-result-object p0

    return-object p0
.end method

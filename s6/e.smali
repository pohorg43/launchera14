.class public Ls6/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls6/g;
.implements Ls6/i;


# instance fields
.field public final a:Li5/e;

.field public final b:Li5/e;


# direct methods
.method public constructor <init>(Li5/e;Ls6/e;)V
    .registers 3

    const-string p2, "classDescriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls6/e;->a:Li5/e;

    iput-object p1, p0, Ls6/e;->b:Li5/e;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object p0, p0, Ls6/e;->a:Li5/e;

    instance-of v0, p1, Ls6/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    check-cast p1, Ls6/e;

    goto :goto_b

    :cond_a
    move-object p1, v1

    :goto_b
    if-eqz p1, :cond_f

    iget-object v1, p1, Ls6/e;->a:Li5/e;

    :cond_f
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getType()Ly6/l0;
    .registers 2

    iget-object p0, p0, Ls6/e;->a:Li5/e;

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    const-string v0, "classDescriptor.defaultType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Ls6/e;->a:Li5/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final p()Li5/e;
    .registers 1

    iget-object p0, p0, Ls6/e;->a:Li5/e;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Class{"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ls6/e;->a:Li5/e;

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    const-string v1, "classDescriptor.defaultType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

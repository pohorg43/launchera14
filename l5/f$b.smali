.class public final Ll5/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/f;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;Li5/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll5/f;


# direct methods
.method public constructor <init>(Ll5/f;)V
    .registers 2

    iput-object p1, p0, Ll5/f$b;->a:Ll5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz6/f;)Ly6/j1;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/f$b;->a:Ll5/f;

    check-cast p0, Lw6/o;

    invoke-virtual {p0}, Lw6/o;->m0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "declarationDescriptor.un…pe.constructor.supertypes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public e()Li5/h;
    .registers 1

    iget-object p0, p0, Ll5/f$b;->a:Ll5/f;

    return-object p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/f$b;->a:Ll5/f;

    check-cast p0, Lw6/o;

    iget-object p0, p0, Lw6/o;->q:Ljava/util/List;

    if-nez p0, :cond_e

    const-string p0, "typeConstructorParameters"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_e
    return-object p0
.end method

.method public k()Lf5/g;
    .registers 1

    iget-object p0, p0, Ll5/f$b;->a:Ll5/f;

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "[typealias "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ll5/f$b;->a:Ll5/f;

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lm6/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/j1;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntegerLiteralTypeConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntegerLiteralTypeConstructor.kt\norg/jetbrains/kotlin/resolve/constants/IntegerLiteralTypeConstructor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1726#2,3:182\n1747#2,3:185\n*S KotlinDebug\n*F\n+ 1 IntegerLiteralTypeConstructor.kt\norg/jetbrains/kotlin/resolve/constants/IntegerLiteralTypeConstructor\n*L\n132#1:182,3\n176#1:185,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Li5/e0;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ly6/s0;

.field public final e:Lh4/f;


# direct methods
.method public constructor <init>(JLi5/e0;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p5, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p5, Ly6/g1;->c:Ly6/g1;

    const/4 v0, 0x0

    invoke-static {p5, p0, v0}, Ly6/m0;->d(Ly6/g1;Lm6/n;Z)Ly6/s0;

    move-result-object p5

    iput-object p5, p0, Lm6/n;->d:Ly6/s0;

    new-instance p5, Lm6/n$a;

    invoke-direct {p5, p0}, Lm6/n$a;-><init>(Lm6/n;)V

    invoke-static {p5}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p5

    iput-object p5, p0, Lm6/n;->e:Lh4/f;

    iput-wide p1, p0, Lm6/n;->a:J

    iput-object p3, p0, Lm6/n;->b:Li5/e0;

    iput-object p4, p0, Lm6/n;->c:Ljava/util/Set;

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
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lm6/n;->e:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public e()Li5/h;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x0

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

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public k()Lf5/g;
    .registers 1

    iget-object p0, p0, Lm6/n;->b:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const-string v0, "IntegerLiteralType"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lm6/n;->c:Ljava/util/Set;

    sget-object v8, Lm6/o;->a:Lm6/o;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1e

    const-string v3, ","

    invoke-static/range {v2 .. v9}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

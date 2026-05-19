.class public final Lm6/j;
.super Lm6/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/g<",
        "Lh4/j<",
        "+",
        "Lh6/b;",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nconstantValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 constantValues.kt\norg/jetbrains/kotlin/resolve/constants/EnumValue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,320:1\n1#2:321\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lh6/b;

.field public final c:Lh6/f;


# direct methods
.method public constructor <init>(Lh6/b;Lh6/f;)V
    .registers 4

    const-string v0, "enumClassId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh4/j;

    invoke-direct {v0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lm6/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lm6/j;->b:Lh6/b;

    iput-object p2, p0, Lm6/j;->c:Lh6/f;

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 6

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm6/j;->b:Lh6/b;

    invoke-static {p1, v0}, Li5/w;->a(Li5/e0;Lh6/b;)Li5/e;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    invoke-static {p1}, Lk6/i;->q(Li5/l;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    move-object p1, v0

    :goto_16
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Li5/e;->m()Ly6/s0;

    move-result-object v0

    :cond_1c
    if-nez v0, :cond_41

    sget-object p1, La7/i;->D0:La7/i;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lm6/j;->b:Lh6/b;

    invoke-virtual {v2}, Lh6/b;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enumClassId.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lm6/j;->c:Lh6/f;

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    const-string v2, "enumEntryName.toString()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p0, v0, v1

    invoke-static {p1, v0}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v0

    :cond_41
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lm6/j;->b:Lh6/b;

    invoke-virtual {v1}, Lh6/b;->j()Lh6/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm6/j;->c:Lh6/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

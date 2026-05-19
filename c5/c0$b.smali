.class public final Lc5/c0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/c0;->getType()Lz4/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/c0;


# direct methods
.method public constructor <init>(Lc5/c0;)V
    .registers 2

    iput-object p1, p0, Lc5/c0$b;->a:Lc5/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lc5/c0$b;->a:Lc5/c0;

    invoke-virtual {v0}, Lc5/c0;->b()Li5/m0;

    move-result-object v0

    instance-of v1, v0, Li5/r0;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lc5/c0$b;->a:Lc5/c0;

    iget-object v1, v1, Lc5/c0;->a:Lc5/i;

    invoke-virtual {v1}, Lc5/i;->i()Li5/b;

    move-result-object v1

    invoke-static {v1}, Lc5/w0;->g(Li5/a;)Li5/r0;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lc5/c0$b;->a:Lc5/c0;

    iget-object v1, v1, Lc5/c0;->a:Lc5/i;

    invoke-virtual {v1}, Lc5/i;->i()Li5/b;

    move-result-object v1

    invoke-interface {v1}, Li5/b;->f()Li5/b$a;

    move-result-object v1

    sget-object v2, Li5/b$a;->b:Li5/b$a;

    if-ne v1, v2, :cond_5d

    iget-object p0, p0, Lc5/c0$b;->a:Lc5/c0;

    iget-object p0, p0, Lc5/c0;->a:Lc5/i;

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/e;

    invoke-static {p0}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_46

    goto :goto_73

    :cond_46
    new-instance p0, Lc5/n0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine receiver Java type of inherited declaration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    iget-object v0, p0, Lc5/c0$b;->a:Lc5/c0;

    iget-object v0, v0, Lc5/c0;->a:Lc5/i;

    invoke-virtual {v0}, Lc5/i;->e()Ld5/f;

    move-result-object v0

    invoke-interface {v0}, Ld5/f;->a()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lc5/c0$b;->a:Lc5/c0;

    iget p0, p0, Lc5/c0;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    :goto_73
    return-object p0
.end method

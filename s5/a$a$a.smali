.class public Ls5/a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/a$a;->a(Li5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/b;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls5/a$a;


# direct methods
.method public constructor <init>(Ls5/a$a;)V
    .registers 2

    iput-object p1, p0, Ls5/a$a$a;->a:Ls5/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Li5/b;

    if-eqz p1, :cond_e

    iget-object p0, p0, Ls5/a$a$a;->a:Ls5/a$a;

    iget-object p0, p0, Ls5/a$a;->a:Lu6/q;

    invoke-interface {p0, p1}, Lu6/q;->b(Li5/b;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_e
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "descriptor"

    aput-object v0, p0, p1

    const/4 p1, 0x1

    const-string v0, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1"

    aput-object v0, p0, p1

    const/4 p1, 0x2

    const-string v0, "invoke"

    aput-object v0, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

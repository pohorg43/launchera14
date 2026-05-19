.class public Lf5/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "Li5/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf5/g;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .registers 2

    iput-object p1, p0, Lf5/g$a;->a:Lf5/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Li5/l0;

    iget-object v1, p0, Lf5/g$a;->a:Lf5/g;

    invoke-virtual {v1}, Lf5/g;->l()Ll5/a0;

    move-result-object v1

    sget-object v2, Lf5/j;->k:Lh6/c;

    invoke-virtual {v1, v2}, Ll5/a0;->s(Lh6/c;)Li5/l0;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lf5/g$a;->a:Lf5/g;

    invoke-virtual {v1}, Lf5/g;->l()Ll5/a0;

    move-result-object v1

    sget-object v2, Lf5/j;->m:Lh6/c;

    invoke-virtual {v1, v2}, Ll5/a0;->s(Lh6/c;)Li5/l0;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lf5/g$a;->a:Lf5/g;

    invoke-virtual {v1}, Lf5/g;->l()Ll5/a0;

    move-result-object v1

    sget-object v2, Lf5/j;->n:Lh6/c;

    invoke-virtual {v1, v2}, Ll5/a0;->s(Lh6/c;)Li5/l0;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lf5/g$a;->a:Lf5/g;

    invoke-virtual {p0}, Lf5/g;->l()Ll5/a0;

    move-result-object p0

    sget-object v1, Lf5/j;->l:Lh6/c;

    invoke-virtual {p0, v1}, Ll5/a0;->s(Lh6/c;)Li5/l0;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.class public final Lw6/d$a$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/d$a;-><init>(Lw6/d;Lz6/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Li5/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d$a;


# direct methods
.method public constructor <init>(Lw6/d$a;)V
    .registers 2

    iput-object p1, p0, Lw6/d$a$b;->a:Lw6/d$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lw6/d$a$b;->a:Lw6/d$a;

    sget-object v0, Lr6/d;->m:Lr6/d;

    sget-object v1, Lr6/i;->a:Lr6/i$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr6/i$a;->b:Lkotlin/jvm/functions/Function1;

    sget-object v2, Lq5/d;->m:Lq5/d;

    invoke-virtual {p0, v0, v1, v2}, Lw6/k;->i(Lr6/d;Lkotlin/jvm/functions/Function1;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

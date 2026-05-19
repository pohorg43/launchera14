.class public final Lw6/d$a$d;
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
        "Ly6/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d$a;


# direct methods
.method public constructor <init>(Lw6/d$a;)V
    .registers 2

    iput-object p1, p0, Lw6/d$a$d;->a:Lw6/d$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lw6/d$a$d;->a:Lw6/d$a;

    iget-object v0, p0, Lw6/d$a;->g:Lz6/f;

    iget-object p0, p0, Lw6/d$a;->j:Lw6/d;

    invoke-virtual {v0, p0}, Lz6/f;->g(Li5/e;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.class public Ll5/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/r;->E0(Ll5/r$c;)Li5/x;
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
        "Li5/x;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/x1;

.field public final synthetic b:Ll5/r;


# direct methods
.method public constructor <init>(Ll5/r;Ly6/x1;)V
    .registers 3

    iput-object p1, p0, Ll5/r$a;->b:Ll5/r;

    iput-object p2, p0, Ll5/r$a;->a:Ly6/x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    new-instance v0, Li7/d;

    invoke-direct {v0}, Li7/d;-><init>()V

    iget-object v1, p0, Ll5/r$a;->b:Ll5/r;

    invoke-virtual {v1}, Ll5/r;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/x;

    iget-object v3, p0, Ll5/r$a;->a:Ly6/x1;

    invoke-interface {v2, v3}, Li5/x;->c(Ly6/x1;)Li5/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Li7/d;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    return-object v0
.end method

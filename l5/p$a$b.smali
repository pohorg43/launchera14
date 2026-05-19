.class public Ll5/p$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/p$a;-><init>(Ll5/p;Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Ljava/util/Collection<",
        "+",
        "Li5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/p$a;


# direct methods
.method public constructor <init>(Ll5/p$a;Ll5/p;)V
    .registers 3

    iput-object p1, p0, Ll5/p$a$b;->a:Ll5/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lh6/f;

    iget-object p0, p0, Ll5/p$a$b;->a:Ll5/p$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ll5/p$a;->i()Lr6/i;

    move-result-object v0

    sget-object v1, Lq5/d;->p:Lq5/d;

    invoke-interface {v0, p1, v1}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ll5/p$a;->j(Lh6/f;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/p$a;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

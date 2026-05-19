.class public final Lr6/n$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr6/n;-><init>(Lr6/i;Ly6/x1;)V
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
.field public final synthetic a:Lr6/n;


# direct methods
.method public constructor <init>(Lr6/n;)V
    .registers 2

    iput-object p1, p0, Lr6/n$a;->a:Lr6/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lr6/n$a;->a:Lr6/n;

    iget-object v0, p0, Lr6/n;->b:Lr6/i;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Lr6/l$a;->a(Lr6/l;Lr6/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr6/n;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

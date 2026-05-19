.class public final Lc5/b0$a$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/b0$a;-><init>(Lc5/b0;)V
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
        "Lc5/i<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/b0;

.field public final synthetic b:Lc5/b0$a;


# direct methods
.method public constructor <init>(Lc5/b0;Lc5/b0$a;)V
    .registers 3

    iput-object p1, p0, Lc5/b0$a$b;->a:Lc5/b0;

    iput-object p2, p0, Lc5/b0$a$b;->b:Lc5/b0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lc5/b0$a$b;->a:Lc5/b0;

    iget-object p0, p0, Lc5/b0$a$b;->b:Lc5/b0$a;

    iget-object p0, p0, Lc5/b0$a;->d:Lc5/p0$a;

    sget-object v1, Lc5/b0$a;->h:[Lz4/n;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "<get-scope>(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lr6/i;

    sget-object v1, Lc5/t$c;->a:Lc5/t$c;

    invoke-virtual {v0, p0, v1}, Lc5/t;->i(Lr6/i;Lc5/t$c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
